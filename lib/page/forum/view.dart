import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';
import 'state.dart';

class ForumPage extends StatefulWidget {
  const ForumPage({super.key});

  @override
  State<ForumPage> createState() => _ForumPageState();
}

class _ForumPageState extends State<ForumPage> {
  final ForumLogic logic = Get.put(ForumLogic());
  final ForumState state = Get.find<ForumLogic>().state;

  // 置顶帖展开/收缩状态
  bool _isStickyPostsExpanded = true;

  final List<String> _stickyPosts = List.generate(5, (index) => '测试置顶帖index');

  // 计算SliverAppBar的动态高度
  double _calculateAppBarHeight() {
    // 基本俱乐部信息高度（AppBar标题高度 + 俱乐部信息内容高度）
    const double baseHeight = 56.0 + 97.0; // 56.0是AppBar标题高度，97.0是俱乐部信息内容高度

    // 每条置顶帖高度
    const double stickyPostHeight = 38.0;

    // 置顶帖区域高度
    double stickyAreaHeight = 0.0;
    if (_isStickyPostsExpanded && _stickyPosts.isNotEmpty) {
      stickyAreaHeight += _stickyPosts.length * stickyPostHeight;
    }

    return baseHeight + stickyAreaHeight;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              backgroundColor: Colors.green,
              expandedHeight: _calculateAppBarHeight(),
              floating: false,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                background: Container(
                  color: Colors.green,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // 顶部俱乐部信息
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 56.0), // 为AppBar标题留出空间
                            // 俱乐部名称和徽章
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    const Text(
                                      '孩爸孩妈聊天室',
                                      style: TextStyle(
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                    const SizedBox(width: 8.0),
                                    Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 4.0,
                                        vertical: 2.0,
                                      ),
                                      decoration: BoxDecoration(
                                        color: Colors.yellow,
                                        borderRadius: BorderRadius.circular(
                                          4.0,
                                        ),
                                      ),
                                      child: const Text(
                                        'V',
                                        style: TextStyle(
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                // 已关注按钮
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 12.0,
                                    vertical: 6.0,
                                  ),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.white,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(16.0),
                                  ),
                                  child: const Text(
                                    '已关注',
                                    style: TextStyle(
                                      fontSize: 14.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 8.0),
                            // 成员数和帖子数
                            const Text(
                              '成员:8.2万 帖子:4.9万',
                              style: TextStyle(
                                fontSize: 14.0,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(height: 8.0),
                            // 俱乐部描述
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Text(
                                    '育儿亲子论坛,为有小孩的父母提供便捷的网上互动交流',
                                    style: TextStyle(
                                      fontSize: 14.0,
                                      color: Colors.white,
                                    ),
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
                      if (_stickyPosts.isNotEmpty)
                        Container(
                          color: Colors.white,
                          child: Column(
                            children: [
                              // 置顶帖列表
                              Column(
                                children: _stickyPosts.map((post) {
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
                                            post,
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
                    ],
                  ),
                ),
              ),
            ),
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
        body: CustomScrollView(
          slivers: [
            // 帖子列表
            SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
                return Container(
                  padding: const EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: Colors.grey[200]!, width: 1.0),
                    ),
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
                                const CircleAvatar(
                                  backgroundImage: AssetImage(
                                    'assets/images/avatar.png',
                                  ),
                                  radius: 12.0,
                                ),
                                const SizedBox(width: 8.0),
                                const Text(
                                  '特耐磨付',
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    color: Colors.grey,
                                  ),
                                ),
                                const Spacer(),
                                const Text(
                                  '1.1万浏览',
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 8.0),
                            // 帖子标题
                            const Text(
                              '“幼儿园虐童案”一审宣判，幼儿园永久关停，涉案老师获刑2年',
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            const SizedBox(height: 8.0),
                            // 回复信息
                            const Text(
                              '回复32分钟前',
                              style: TextStyle(
                                fontSize: 12.0,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                      // 右侧图片
                      const SizedBox(width: 12.0),
                      Container(
                        width: 80.0,
                        height: 80.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4.0),
                          image: const DecorationImage(
                            image: AssetImage('assets/images/post_image.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              }, childCount: 10),
            ),
          ],
        ),
      ),
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
