import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_study/page/comment_list_page.dart';
import 'package:flutter_study/page/gather_list_page.dart';
import 'package:flutter_study/page/post_list_page.dart';
import 'package:flutter_study/utils/custom_colors.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../api/response/current_user_info_entity.dart';
import '../api/service/user_repository.dart';
import '../base/base_state.dart';

const expandedHeight = 300.0;
const collapsedToolbarHeight = 44.0;
const appBarHeight = 44.0;

/// 我的 Tab 页面
class MineTabPage extends BaseStatefulWidget {
  const MineTabPage({super.key});

  @override
  BaseState<BaseStatefulWidget> createState() => _MinePageState();
}

class _MinePageState extends BaseState<MineTabPage>
    with TickerProviderStateMixin {
  // 缓存屏幕宽度，避免重复计算
  late double _screenWidth;
  late double _statusBarHeight;
  late TabController _outerTabController;
  late TabController _innerTabController;

  bool get _isPostTab => _tabList.isNotEmpty && _outerTabController.index >= 0
      ? _tabList[_outerTabController.index].type != 1 &&
            _tabList[_outerTabController.index].type != 2
      : false;

  // 替换原有的api调用，改为使用仓库类
  final userRepo = UserRepository();

  late CurrentUserInfoUser userInfo;
  String bgUrl = "";
  List<MineTabItem> _tabList = [];

  @override
  void initState() {
    super.initState();
    _outerTabController = TabController(length: _tabList.length, vsync: this);
    _innerTabController = TabController(length: 3, vsync: this);

    _outerTabController.addListener(_onOuterTabChanged);
    _innerTabController.addListener(_onInnerTabChanged);
    _getUserInfo();
  }

  void _onOuterTabChanged() {
    if (mounted) {
      setState(() {});
    }
  }

  void _onInnerTabChanged() {
    if (mounted && _isPostTab) {
      setState(() {});
    }
  }

  @override
  void dispose() {
    _outerTabController.removeListener(_onOuterTabChanged);
    _innerTabController.removeListener(_onInnerTabChanged);
    _outerTabController.dispose();
    _innerTabController.dispose();
    super.dispose();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // 初始化屏幕宽度
    _screenWidth = MediaQuery.of(context).size.width;
    //状态栏高度
    _statusBarHeight = MediaQuery.of(context).padding.top;
  }

  Future<void> _getUserInfo() async {
    setState(() {
      isRefreshing = true;
    });
    try {
      final userInfo = await userRepo.getUserInfo();
      if (userInfo == null) {
        setState(() {
          errorMessage = '初始化失败';
          isRefreshFailed = true;
        });
      } else {
        final bgUrl = await userRepo.getMobileBgUrl(userInfo.uid);
        setState(() {
          this.userInfo = userInfo;
          this.bgUrl = bgUrl;
          _tabList = userRepo.getTabList(userInfo);
          isRefreshing = false;
          isRefreshFailed = false;
          // 更新TabController长度
          _outerTabController.removeListener(_onOuterTabChanged);
          _outerTabController.dispose();
          _outerTabController = TabController(
            length: _tabList.length,
            vsync: this,
          );
          _outerTabController.addListener(_onOuterTabChanged);
        });
      }
    } catch (e) {
      setState(() {
        errorMessage = '初始化失败: $e';
        isRefreshFailed = true;
      });
    } finally {
      setState(() {
        isRefreshing = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    // 加载状态显示加载界面
    if (isRefreshing) {
      return Scaffold(
        body: Center(
          child: CircularProgressIndicator(), // 加载指示器
        ),
      );
    }
    if (isRefreshFailed) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            errorMessage,
            style: const TextStyle(color: Colors.red),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),
          ElevatedButton(onPressed: _getUserInfo, child: const Text('重试')),
        ],
      );
    }
    return Scaffold(
      body: NestedScrollView(
        // 1. 外部 Sliver 区域
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          final slivers = [
            SliverAppBar(
              expandedHeight: expandedHeight,
              toolbarHeight: collapsedToolbarHeight,
              pinned: true,
              automaticallyImplyLeading: false,
              elevation: 0,
              title: const SizedBox.shrink(),
              backgroundColor: Colors.white,
              flexibleSpace: _buildFlexibleSpace(),
            ),
            SliverPersistentHeader(
              pinned: true,
              delegate: MiddleHeaderDelegate(
                height: appBarHeight,
                tabList: _tabList,
                tabController: _outerTabController,
              ),
            ),
          ];
          // 如果当前是“动态”tab，添加内层 TabBar
          if (_isPostTab) {
            slivers.add(
              SliverPersistentHeader(
                pinned: true,
                delegate: _InnerTabBarDelegate(
                  tabController: _innerTabController,
                  height: appBarHeight,
                ),
              ),
            );
          }
          return slivers;
        },
        body: Builder(
          builder: (context) {
            if (_outerTabController.index < 0 || _tabList.isEmpty) {
              return Container();
            }
            final currentTabType = _tabList[_outerTabController.index].type;
            return Stack(
              children: [
                // 动态（帖子/点评/合集）
                Offstage(
                  offstage: !_isPostTab,
                  child: IndexedStack(
                    index: _innerTabController.index,
                    children: [
                      PostListPage(uid: userInfo.uid),
                      CommentListPage(),
                      GatherListPage(),
                    ],
                  ),
                ),
                // 点赞
                Offstage(offstage: currentTabType != 1, child: _buildRate()),
                // 收藏
                Offstage(offstage: currentTabType != 2, child: _buildFav()),
              ],
            );
          },
        ),
      ),
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
            ((currentHeight - collapsedToolbarHeight - _statusBarHeight) /
                    (expandedHeight - collapsedToolbarHeight))
                .clamp(0.0, 1.0);

        return Stack(
          fit: StackFit.expand,
          children: [
            //展开内容
            Positioned.fill(
              child: Opacity(
                opacity: progress,
                child: ConstrainedBox(
                  constraints: const BoxConstraints(
                    maxHeight: expandedHeight,
                    minHeight: expandedHeight,
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
              top: _statusBarHeight,
              height: collapsedToolbarHeight,
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
    final String sexImage = userInfo.gender == "male"
        ? "assets/images/boy.png"
        : "assets/images/girl.png";
    final String sex = userInfo.gender == "male" ? "男" : "女";
    return Stack(
      children: [
        if (bgUrl.isNotEmpty)
          CachedNetworkImage(
            imageUrl: bgUrl,
            fit: BoxFit.cover,
            width: _screenWidth,
            height: expandedHeight + _statusBarHeight,
            // 根据网格大小设置缓存尺寸
            memCacheWidth: (_screenWidth * 2).toInt(),
            memCacheHeight: (expandedHeight * 2).toInt(),
          )
        else
          Container(
            width: _screenWidth,
            height: expandedHeight + _statusBarHeight,
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
                          imageUrl: userInfo.avatar,
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
                          userInfo.userName,
                          style: TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "账号：${userInfo.uid}",
                          style: TextStyle(fontSize: 13, color: Colors.white),
                        ),
                        Text(
                          "IP归属地：${userInfo.location}",
                          style: TextStyle(fontSize: 13, color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 9),
                Text(
                  userInfo.sign,
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
                      "V${userInfo.group.rank}",
                      style: TextStyle(
                        fontSize: 13,
                        color: userRepo.getSexColor(userInfo),
                      ),
                    ),
                    SizedBox(width: 3),
                    Text(
                      userInfo.group.name,
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
                      "${userInfo.attendCount}关注 · ${userInfo.fansCount}粉丝",
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
                  imageUrl: userInfo.avatar,
                  fit: BoxFit.cover,
                  width: 30,
                  height: 30,
                  memCacheWidth: 60,
                  memCacheHeight: 60,
                ),
              ),
              const SizedBox(width: 10),
              Text(
                userInfo.userName,
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
class MiddleHeaderDelegate extends SliverPersistentHeaderDelegate {
  final double height; // 中间布局的固定高度
  final List<MineTabItem> tabList;
  final TabController tabController;

  MiddleHeaderDelegate({
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
  bool shouldRebuild(covariant MiddleHeaderDelegate oldDelegate) {
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
