import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_refresh/easy_refresh.dart';
import 'package:flutter/material.dart';
import 'package:flutter_study/utils/common_utils.dart';
import 'package:get/get.dart';

import '../../common/some_publish.dart';
import 'logic.dart';
import 'state.dart';

class ForumPage extends StatelessWidget {
  ForumPage({super.key});

  final ForumLogic logic = Get.put(ForumLogic());
  final ForumState state = Get.find<ForumLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() {
        switch (state.loadState.value) {
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
              headerSliverBuilder: (context, innerBoxIsScrolled) {
                return [
                  Obx(() {
                    return SliverAppBar(
                      // 1. 配置返回箭头（左侧图标）为白色
                      iconTheme: const IconThemeData(
                        color: Colors.white, // 箭头颜色设为白色
                      ),
                      backgroundColor: Colors.green,
                      expandedHeight: state.appBarHeight.value,
                      floating: false,
                      pinned: true,
                      flexibleSpace: FlexibleSpaceBar(
                        background: _buildForumInfo(),
                      ),
                    );
                  }),
                  // 分类标签和排序选项 - 置顶
                  SliverPersistentHeader(
                    pinned: true,
                    delegate: _PersistentHeaderDelegate(
                      child: Column(
                        children: [
                          // 分类标签
                          Container(
                            padding: const EdgeInsets.all(10.0),
                            color: Colors.white,
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  _buildCategoryTag('全部', true),
                                  _buildCategoryTag('宝宝秀', false),
                                  _buildCategoryTag('育儿分享', false),
                                  _buildCategoryTag('育儿求助咨询', false),
                                  const Icon(
                                    Icons.arrow_forward_ios,
                                    size: 16.0,
                                    color: Colors.grey,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          // 排序选项
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16.0,
                              vertical: 8.0,
                            ),
                            color: Colors.white,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                _buildSortOption('最新发布', false),
                                _buildSortOption('最新回复', true),
                                _buildSortOption('热帖', false),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ];
              },
              body: _buildThreadList(),
            );
        }
      }),
      // 右下角发帖按钮
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // 发帖功能
        },
        backgroundColor: Colors.green,
        child: const Icon(Icons.edit, color: Colors.white),
      ),
    );
  }

  Widget _buildForumInfo() {
    return Container(
      color: Colors.green,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 顶部俱乐部信息
          Container(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 56.0),
                // 为AppBar标题留出空间
                // 俱乐部名称和徽章
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      state.forumInfo.name,
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    // 已关注按钮
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12.0,
                        vertical: 6.0,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white, width: 1.0),
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      child: const Text(
                        '已关注',
                        style: TextStyle(fontSize: 14.0, color: Colors.white),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8.0),
                // 成员数和帖子数
                Text(
                  '成员:${CommonUtils.getMillion(state.forumInfo.rssCount)} 帖子:${CommonUtils.getMillion(state.forumInfo.totalThread)}',
                  style: TextStyle(fontSize: 14.0, color: Colors.white),
                ),
                const SizedBox(height: 8.0),
                // 俱乐部描述
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        state.forumInfo.description,
                        style: TextStyle(fontSize: 14.0, color: Colors.white),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 16.0,
                      color: Colors.white,
                    ),
                  ],
                ),
              ],
            ),
          ),
          // 置顶帖区域 - 仅当有置顶帖时显示
          Obx(() {
            if (state.showStickPosts.isNotEmpty) {
              return Container(
                color: Colors.white,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          // 置顶帖列表
                          Column(
                            children: state.showStickPosts.map((thread) {
                              return Container(
                                height: 38,
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 16.0,
                                  vertical: 8.0,
                                ),
                                decoration: BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                      color: Colors.grey[200]!,
                                      width: 1.0,
                                    ),
                                  ),
                                ),
                                child: Row(
                                  children: [
                                    const Text(
                                      '置顶',
                                      style: TextStyle(
                                        fontSize: 12.0,
                                        color: Colors.red,
                                      ),
                                    ),
                                    const SizedBox(width: 8.0),
                                    Expanded(
                                      child: Text(
                                        thread.subject,
                                        style: const TextStyle(
                                          fontSize: 14.0,
                                          color: Colors.black,
                                        ),
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            }).toList(),
                          ),
                        ],
                      ),
                    ),
                    if (state.stickyPosts.length > 2)
                      ElevatedButton(
                        onPressed: () {
                          logic.switchExpand();
                        },
                        child: Icon(
                          state.isStickyPostsExpanded.value
                              ? Icons.keyboard_arrow_up
                              : Icons.keyboard_arrow_down,
                          size: 15,
                        ),
                      ),
                  ],
                ),
              );
            } else {
              return SizedBox.shrink();
            }
          }),
        ],
      ),
    );
  }

  // 构建分类标签
  Widget _buildCategoryTag(String title, bool isActive) {
    return Container(
      margin: const EdgeInsets.only(right: 12.0),
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      decoration: BoxDecoration(
        color: isActive ? Colors.green : Colors.grey[200],
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 14.0,
          color: isActive ? Colors.white : Colors.black,
        ),
      ),
    );
  }

  // 构建排序选项
  Widget _buildSortOption(String title, bool isActive) {
    return Container(
      margin: const EdgeInsets.only(right: 24.0),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 14.0,
          fontWeight: isActive ? FontWeight.bold : FontWeight.normal,
          color: isActive ? Colors.green : Colors.black,
        ),
      ),
    );
  }

  Widget _buildThreadList() {
    return EasyRefresh(
      onRefresh: () => logic.onRefresh(),
      onLoad: () => logic.onLoadMore(),
      controller: logic.controller,
      child: ListView.builder(
        itemCount: state.threads.length,
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          final item = logic.state.threads[index];
          return Container(
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Colors.grey[200]!, width: 1.0),
              ),
              color: Colors.white,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // 左侧内容
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // 发帖人信息
                      Row(
                        children: [
                          ClipOval(
                            child: CachedNetworkImage(
                              imageUrl: item.author.smallAvatar,
                              width: 20,
                              height: 20,
                              fit: BoxFit.fill,
                              placeholder: (context, url) =>
                                  Icon(Icons.image, size: 20),
                              errorWidget: (context, url, error) =>
                                  Icon(Icons.image, size: 20),
                              memCacheWidth: 40,
                              memCacheHeight: 40,
                            ),
                          ),
                          const SizedBox(width: 8.0),
                          Text(
                            item.author.userName,
                            style: TextStyle(
                              fontSize: 12.0,
                              color: Colors.grey,
                            ),
                          ),
                          const Spacer(),
                          Text(
                            "${CommonUtils.getMillion(item.views)}浏览",
                            style: TextStyle(
                              fontSize: 12.0,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8.0),
                      // 帖子标题
                      Text(
                        item.subject,
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 8.0),
                      // 回复信息
                      Text(
                        logic.getShowTimeByAllTime(
                          item.createdAt,
                          item.updatedAt,
                          item.lastPostTime,
                        ),
                        style: TextStyle(fontSize: 12.0, color: Colors.grey),
                      ),
                    ],
                  ),
                ),
                // 右侧图片
                if (item.images.isNotEmpty) ...[
                  const SizedBox(width: 12.0),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(4),
                    child: CachedNetworkImage(
                      imageUrl: item.images[0],
                      fit: BoxFit.cover,
                      width: 112,
                      height: 73,
                      placeholder: (context, url) =>
                          Icon(Icons.image, size: 112),
                      errorWidget: (context, url, error) =>
                          Icon(Icons.image, size: 73),
                      memCacheWidth: 224,
                      memCacheHeight: 146,
                    ),
                  ),
                ],
              ],
            ),
          );
        },
      ),
    );
  }
}

// 自定义SliverPersistentHeaderDelegate
class _PersistentHeaderDelegate extends SliverPersistentHeaderDelegate {
  final Widget child;

  _PersistentHeaderDelegate({required this.child});

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return Container(color: Colors.white, width: double.infinity, child: child);
  }

  @override
  double get maxExtent => 100.0; // 增加高度以确保分类标签和排序选项完整显示

  @override
  double get minExtent => 100.0; // 固定高度，与maxExtent保持一致

  @override
  bool shouldRebuild(_PersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
