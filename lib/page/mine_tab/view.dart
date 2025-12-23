import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

import '../../api/service/user_repository.dart';
import '../../common/some_publish.dart';
import '../../common/custom_colors.dart';
import '../comment_list_page.dart';
import '../gather_list_page.dart';
import '../post_list_page.dart';
import 'logic.dart';

class MineTabPage extends StatelessWidget {
  MineTabPage({super.key});

  final MineTabLogic logic = Get.put(MineTabLogic());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() {
        switch (logic.loadState.value) {
          case LoadState.refreshing:
            return Scaffold(
              body: Center(
                child: CircularProgressIndicator(), // 加载指示器
              ),
            );
          case LoadState.failed:
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  logic.errorMessage.value,
                  style: const TextStyle(color: Colors.red),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: logic.onRefresh,
                  child: const Text('重试'),
                ),
              ],
            );
          case LoadState.success:
            return NestedScrollView(
              // 1. 外部 Sliver 区域
              headerSliverBuilder: (context, innerBoxIsScrolled) {
                final slivers = [
                  SliverAppBar(
                    expandedHeight: logic.expandedHeight,
                    toolbarHeight: logic.collapsedToolbarHeight,
                    pinned: true,
                    automaticallyImplyLeading: false,
                    elevation: 0,
                    title: const SizedBox.shrink(),
                    backgroundColor: Colors.white,
                    flexibleSpace: _buildFlexibleSpace(),
                  ),
                  SliverPersistentHeader(
                    pinned: true,
                    delegate: _MiddleHeaderDelegate(
                      height: logic.appBarHeight,
                      tabList: logic.tabList,
                      tabController: logic.outerTabController,
                    ),
                  ),
                ];
                // 如果当前是“动态”tab，添加内层 TabBar
                if (logic.isPostTab.value) {
                  slivers.add(
                    SliverPersistentHeader(
                      pinned: true,
                      delegate: _InnerTabBarDelegate(
                        tabController: logic.innerTabController,
                        height: logic.appBarHeight,
                      ),
                    ),
                  );
                }
                return slivers;
              },
              body: Builder(
                builder: (context) {
                  if (logic.outerTabIndex.value < 0 || logic.tabList.isEmpty) {
                    return Container();
                  }
                  final currentTabType =
                      logic.tabList[logic.outerTabIndex.value].type;
                  return Obx(() {
                    return Stack(
                      children: [
                        // 动态（帖子/点评/合集）
                        Offstage(
                          offstage: !logic.isPostTab.value,
                          child: IndexedStack(
                            index: logic.innerTabIndex.value,
                            children: [
                              PostListPage(uid: logic.userInfo.value?.uid ?? 0),
                              CommentListPage(),
                              GatherListPage(),
                            ],
                          ),
                        ),
                        // 点赞
                        Offstage(
                          offstage: currentTabType != 1,
                          child: _buildRate(),
                        ),
                        // 收藏
                        Offstage(
                          offstage: currentTabType != 2,
                          child: _buildFav(),
                        ),
                      ],
                    );
                  });
                },
              ),
            );
        }
      }),
    );
  }

  Widget _buildRate() {
    return Center(child: Text("点赞 内容页面"));
  }

  Widget _buildFav() {
    return Center(child: Text("收藏 内容页面"));
  }

  Widget _buildFlexibleSpace() {
    return LayoutBuilder(
      builder: (context, constraints) {
        final currentHeight = constraints.maxHeight;
        final progress =
            ((currentHeight -
                        logic.collapsedToolbarHeight -
                        logic.statusBarHeight) /
                    (logic.expandedHeight - logic.collapsedToolbarHeight))
                .clamp(0.0, 1.0);

        return Stack(
          fit: StackFit.expand,
          children: [
            //展开内容
            Positioned.fill(
              child: Opacity(
                opacity: progress,
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    maxHeight: logic.expandedHeight,
                    minHeight: logic.expandedHeight,
                  ),
                  child: SingleChildScrollView(
                    // 允许内容在高度不足时滚动
                    physics: const NeverScrollableScrollPhysics(),
                    // 禁止内部滚动，跟随外部
                    child: _buildExpandedContent(),
                  ),
                ),
              ),
            ),

            // 折叠内容：固定在底部，随进度显示
            Positioned(
              left: 0,
              right: 0,
              top: logic.statusBarHeight,
              height: logic.collapsedToolbarHeight,
              child: Opacity(
                opacity: 1 - progress,
                child: _buildCollapsedContent(),
              ),
            ),
          ],
        );
      },
    );
  }

  Widget _buildExpandedContent() {
    final String sexImage = logic.userInfo.value?.gender == "male"
        ? "assets/images/boy.png"
        : "assets/images/girl.png";
    final String sex = logic.userInfo.value?.gender == "male" ? "男" : "女";
    return Stack(
      children: [
        if (logic.bgUrl.value.isNotEmpty)
          CachedNetworkImage(
            imageUrl: logic.bgUrl.value,
            fit: BoxFit.cover,
            width: logic.screenWidth,
            height: logic.expandedHeight + logic.statusBarHeight,
            // 根据网格大小设置缓存尺寸
            memCacheWidth: (logic.screenWidth * 2).toInt(),
            memCacheHeight: (logic.expandedHeight * 2).toInt(),
          )
        else
          Container(
            width: logic.screenWidth,
            height: logic.expandedHeight + logic.statusBarHeight,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/home_info_bg.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        Positioned.fill(
          child: Container(
            padding: EdgeInsets.all(18),
            child: Column(
              children: [
                SizedBox(height: 80),
                Row(
                  children: [
                    Container(
                      width: 82,
                      height: 82,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.white, width: 3),
                      ),
                      child: ClipOval(
                        child: CachedNetworkImage(
                          imageUrl: logic.userInfo.value?.avatar ?? "",
                          fit: BoxFit.cover,
                          width: 76,
                          height: 76,
                          // 根据网格大小设置缓存尺寸
                          memCacheWidth: 152,
                          memCacheHeight: 152,
                        ),
                      ),
                    ),
                    SizedBox(width: 15),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          logic.userInfo.value?.userName ?? "",
                          style: TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "账号：${logic.userInfo.value?.uid}",
                          style: TextStyle(fontSize: 13, color: Colors.white),
                        ),
                        Text(
                          "IP归属地：${logic.userInfo.value?.location}",
                          style: TextStyle(fontSize: 13, color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 9),
                Text(
                  logic.userInfo.value?.sign ?? "",
                  style: TextStyle(fontSize: 13, color: Colors.white),
                  maxLines: 5,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 12),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(sexImage, width: 15, height: 15),
                    SizedBox(width: 3),
                    Text(
                      sex,
                      style: TextStyle(fontSize: 13, color: Colors.white),
                    ),
                    SizedBox(width: 10),
                    Text(
                      "V${logic.userInfo.value?.group.rank}",
                      style: TextStyle(
                        fontSize: 13,
                        color: logic.userRepo.getSexColor(logic.userInfo.value),
                      ),
                    ),
                    SizedBox(width: 3),
                    Text(
                      logic.userInfo.value?.group.name ?? "",
                      style: TextStyle(fontSize: 13, color: Colors.white),
                    ),
                  ],
                ),
                SizedBox(height: 9),
                Divider(
                  height: 1,
                  thickness: 1,
                  color: CustomColors.divider.withValues(alpha: 0.8),
                ),
                SizedBox(height: 9),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "${logic.userInfo.value?.attendCount}关注 · ${logic.userInfo.value?.fansCount}粉丝",
                      style: TextStyle(fontSize: 14, color: Colors.white),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            Fluttertoast.showToast(msg: "编辑资料");
                          },
                          borderRadius: BorderRadius.circular(16),
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              vertical: 4,
                              horizontal: 16,
                            ),
                            decoration: BoxDecoration(
                              color: CustomColors.bgMain,
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Text(
                              "编辑资料",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        InkWell(
                          onTap: () {
                            Fluttertoast.showToast(msg: "设置");
                          },
                          borderRadius: BorderRadius.circular(16),
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              vertical: 4,
                              horizontal: 8,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              border: Border.all(
                                color: CustomColors.bgMain,
                                width: 1,
                              ),
                            ),
                            child: Text(
                              "设置",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                color: CustomColors.bgMain,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildCollapsedContent() {
    return Container(
      padding: const EdgeInsets.only(left: 12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              ClipOval(
                child: CachedNetworkImage(
                  imageUrl: logic.userInfo.value?.avatar ?? "",
                  fit: BoxFit.cover,
                  width: 30,
                  height: 30,
                  memCacheWidth: 60,
                  memCacheHeight: 60,
                ),
              ),
              const SizedBox(width: 10),
              Text(
                logic.userInfo.value?.userName ?? "",
                style: TextStyle(color: CustomColors.textDark, fontSize: 14),
              ),
            ],
          ),
          Row(
            children: [
              IconButton(
                icon: const Icon(Icons.search, color: Colors.white),
                onPressed: () {
                  Fluttertoast.showToast(msg: "搜索");
                },
                padding: EdgeInsets.zero,
                iconSize: 30,
              ),
              IconButton(
                icon: const Icon(Icons.more_vert, color: Colors.white),
                onPressed: () {
                  Fluttertoast.showToast(msg: "更多");
                },
                padding: EdgeInsets.zero,
                iconSize: 30,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// 修改自定义中间置顶布局的代理类
class _MiddleHeaderDelegate extends SliverPersistentHeaderDelegate {
  final double height; // 中间布局的固定高度
  final List<MineTabItem> tabList;
  final TabController tabController;

  _MiddleHeaderDelegate({
    required this.height,
    required this.tabList,
    required this.tabController,
  });

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return Container(
      color: Colors.white, // 背景色，避免滚动时内容穿透
      child: TabBar(
        controller: tabController,
        tabs: tabList.map((item) {
          // 假设MineTabItem有title属性，根据实际情况调整
          return Tab(text: item.title);
        }).toList(),
        labelColor: CustomColors.textDark,
        unselectedLabelColor: CustomColors.textLight,
        indicatorColor: CustomColors.bgMain,
        indicatorSize: TabBarIndicatorSize.label,
      ),
    );
  }

  // 置顶布局的最小高度（和最大高度一致，保持固定高度）
  @override
  double get minExtent => height;

  // 置顶布局的最大高度
  @override
  double get maxExtent => height;

  // 布局变化时是否重建（true=重建）
  @override
  bool shouldRebuild(covariant _MiddleHeaderDelegate oldDelegate) {
    return oldDelegate.height != height ||
        oldDelegate.tabList != tabList ||
        oldDelegate.tabController != tabController;
  }
}

class _InnerTabBarDelegate extends SliverPersistentHeaderDelegate {
  final double height; // 中间布局的固定高度
  final TabController tabController;

  _InnerTabBarDelegate({required this.tabController, required this.height});

  @override
  double get minExtent => height;

  @override
  double get maxExtent => height;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return Container(
      color: Colors.white,
      child: TabBar(
        controller: tabController,
        tabs: const [
          Tab(text: "帖子"),
          Tab(text: "点评"),
          Tab(text: "合集"),
        ],
        labelColor: CustomColors.textDark,
        unselectedLabelColor: CustomColors.textLight,
        indicatorColor: CustomColors.bgMain,
        indicatorSize: TabBarIndicatorSize.label,
        isScrollable: false,
      ),
    );
  }

  @override
  bool shouldRebuild(covariant _InnerTabBarDelegate oldDelegate) {
    return tabController != oldDelegate.tabController;
  }
}
