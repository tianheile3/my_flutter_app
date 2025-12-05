import 'package:flutter/material.dart';

import '../api/network_manager.dart';
import '../api/response/current_user_info_entity.dart';
import '../base/base_state.dart';

const expandedHeight = 290.0;
const collapsedToolbarHeight = 70.0;
const appBarHeight = 44.0;

/// 我的 Tab 页面
class MineTabPage extends BaseStatefulWidget {
  const MineTabPage({super.key});

  @override
  BaseState<BaseStatefulWidget> createState() => _MinePageState();
}

class _MinePageState extends BaseState<MineTabPage> {
  final api = NetworkManager().getApiClient();
  CurrentUserInfoUser? user;

  @override
  void initState() {
    super.initState();
    _getUserInfo();
  }

  Future<void> _getUserInfo() async {
    final res = await api.getCurrentUserInfo(
      withFavs: true,
      withCommentNum: true,
      withPosts: true,
    );
    if (res != null && res.code == "1") {
      user = res.user;
    }
  }

  @override
  Widget build(BuildContext context) {
    final statusBarHeight = MediaQuery.of(context).padding.top;
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: expandedHeight,
            toolbarHeight: collapsedToolbarHeight,
            pinned: true,
            automaticallyImplyLeading: false,
            backgroundColor: Colors.lightBlue,
            elevation: 0,
            title: const SizedBox.shrink(),
            flexibleSpace: LayoutBuilder(
              builder: (context, constraints) {
                final currentHeight = constraints.maxHeight;
                final progress =
                    ((currentHeight -
                                collapsedToolbarHeight -
                                statusBarHeight) /
                            (expandedHeight - collapsedToolbarHeight))
                        .clamp(0.0, 1.0);
                logger.d(progress);

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
                            child: Container(
                              color: Colors.lightBlue,
                              height: expandedHeight,
                              child: Center(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    CircleAvatar(
                                      radius: 50,
                                      backgroundImage: NetworkImage(
                                        'https://picsum.photos/200/200',
                                      ),
                                    ),
                                    const SizedBox(height: 16),
                                    const Text(
                                      '展开态标题',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const Text(
                                      '展开态副标题 - 上滑折叠后切换布局',
                                      style: TextStyle(
                                        color: Colors.white70,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),

                    // 折叠内容：固定在底部，随进度显示
                    Positioned(
                      left: 0,
                      right: 0,
                      top: statusBarHeight,
                      height: collapsedToolbarHeight,
                      child: Opacity(
                        opacity: 1 - progress,
                        child: Container(
                          color: Colors.lightBlue,
                          padding: const EdgeInsets.symmetric(horizontal: 12),
                          child: Row(
                            children: [
                              const CircleAvatar(
                                radius: 25,
                                backgroundImage: NetworkImage(
                                  'https://picsum.photos/200/200',
                                ),
                              ),
                              const SizedBox(width: 12),
                              const Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      '用户名',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      '用户简介',
                                      style: TextStyle(
                                        color: Colors.white70,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              IconButton(
                                icon: const Icon(
                                  Icons.more_vert,
                                  color: Colors.white,
                                ),
                                onPressed: () {},
                                constraints: BoxConstraints.tight(Size(40, 40)),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
          SliverPersistentHeader(
            pinned: true,
            delegate: MiddleHeaderDelegate(height: appBarHeight),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => ListTile(
                title: Text("底部列表项 $index"),
                tileColor: index % 2 == 0 ? Colors.white : Colors.grey[100],
              ),
              childCount: 50,
            ),
          ),
        ],
      ),
    );
  }
}

// 自定义中间置顶布局的代理类
class MiddleHeaderDelegate extends SliverPersistentHeaderDelegate {
  final double height; // 中间布局的固定高度

  MiddleHeaderDelegate({required this.height});

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    // 这里可以自定义任意布局（按钮、Tab、文本等）
    return Container(
      color: Colors.orange,
      alignment: Alignment.center,
      child: const Text(
        '中间置顶布局（上滑不隐藏）',
        style: TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
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
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return oldDelegate.maxExtent != height;
  }
}
