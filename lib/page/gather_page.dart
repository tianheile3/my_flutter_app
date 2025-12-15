import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_refresh/easy_refresh.dart';
import 'package:flutter/material.dart';
import 'package:flutter_study/utils/custom_colors.dart';
import 'package:provider/provider.dart';

import '../base/base_state.dart';
import '../viewModel/gather_view_model.dart';

class GatherPage extends BaseStatefulWidget {
  final String gatherId;

  const GatherPage({super.key, required this.gatherId});

  @override
  BaseState<BaseStatefulWidget> createState() => _GatherPageState();
}

class _GatherPageState extends BaseState<GatherPage> {
  late final GatherViewModel _viewModel;
  final EasyRefreshController _controller = EasyRefreshController(
    controlFinishRefresh: true,
    controlFinishLoad: true,
  );

  @override
  void initState() {
    super.initState();
    _viewModel = GatherViewModel(widget.gatherId);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _viewModel.setScreenWidth(MediaQuery.of(context).size.width);
      _onRefresh();
    });
  }

  Future<void> _onRefresh() async {
    _controller.resetFooter();
    await _viewModel.onRefresh((bool success, bool hasMore) {
      if (!success) {
        _controller.finishRefresh(IndicatorResult.fail);
      } else {
        _controller.finishRefresh(IndicatorResult.success);
        if (!hasMore) {
          _controller.finishLoad(IndicatorResult.noMore);
        }
      }
    });
  }

  Future<void> _onLoad() async {
    await _viewModel.onLoadMore((bool success, bool hasMore) {
      if (!success) {
        _controller.finishLoad(IndicatorResult.fail);
      } else {
        _controller.finishLoad(
          hasMore ? IndicatorResult.success : IndicatorResult.noMore,
        );
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: _viewModel,
      child: Consumer<GatherViewModel>(
        builder: (context, viewModel, child) {
          if (viewModel.loadState == LoadState.refreshing) {
            return Scaffold(body: Center(child: CircularProgressIndicator()));
          }

          if (viewModel.loadState == LoadState.failed) {
            return Scaffold(
              body: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    viewModel.errorMessage,
                    style: const TextStyle(color: Colors.red),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () => _onRefresh(),
                    child: const Text('重试'),
                  ),
                ],
              ),
            );
          }

          return Scaffold(
            backgroundColor: Colors.white,
            body: NestedScrollView(
              headerSliverBuilder: (context, innerBoxIsScrolled) {
                return [
                  SliverAppBar(
                    expandedHeight: viewModel.expandedHeight,
                    pinned: true,
                    floating: true,
                    snap: true,
                    automaticallyImplyLeading: false,
                    flexibleSpace: FlexibleSpaceBar(
                      background: _headWidget(viewModel),
                    ),
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () => Navigator.pop(context),
                          icon: const Icon(
                            Icons.arrow_back_ios,
                            color: Colors.white,
                          ),
                        ),
                        const Icon(
                          Icons.more_horiz,
                          size: 25,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ];
              },
              body: _listWidget(viewModel),
            ),
          );
        },
      ),
    );
  }

  Widget _headWidget(GatherViewModel viewModel) {
    return Column(
      children: [
        Container(
          height: viewModel.screenWidth * 8 / 15,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF8E6C56), Color(0xFFD3B089)],
              stops: [0.0, 1.1],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          padding: const EdgeInsets.fromLTRB(15, 100, 15, 15),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      viewModel.gatherInfo.name,
                      style: const TextStyle(fontSize: 17, color: Colors.white),
                    ),
                    const SizedBox(height: 4),
                    Row(
                      children: [
                        ClipOval(
                          child: CachedNetworkImage(
                            width: 25,
                            height: 25,
                            fit: BoxFit.cover,
                            imageUrl: viewModel.gatherUser.smallAvatar,
                            memCacheWidth: 50,
                            memCacheHeight: 50,
                          ),
                        ),
                        Text(
                          viewModel.gatherUser.userName,
                          style: const TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 4),
                    Text(
                      viewModel.getViewString(),
                      style: const TextStyle(fontSize: 12, color: Colors.white),
                    ),
                  ],
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: CachedNetworkImage(
                  width: 80,
                  height: 80,
                  fit: BoxFit.cover,
                  imageUrl: viewModel.gatherInfo.cover,
                  memCacheWidth: 160,
                  memCacheHeight: 160,
                ),
              ),
            ],
          ),
        ),
        if (viewModel.gatherInfo.desc.isNotEmpty)
          Container(
            color: Colors.white,
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Text(
              viewModel.gatherInfo.desc,
              style: TextStyle(fontSize: 12, color: CustomColors.textDark),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        if (viewModel.gatherInfo.desc.isNotEmpty)
          Divider(color: CustomColors.divider1, height: 5, thickness: 5),
      ],
    );
  }

  Widget _listWidget(GatherViewModel viewModel) {
    return EasyRefresh(
      onRefresh: () => _onRefresh(),
      onLoad: () => _onLoad(),
      controller: _controller,
      child: ListView.builder(
        itemCount: viewModel.items.length,
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          final item = viewModel.items[index];
          return Container(
            padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Text(
                        item.subject,
                        style: TextStyle(
                          fontSize: 16,
                          color: CustomColors.textDark,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    if (item.firstImageUrl.isNotEmpty)
                      Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: CachedNetworkImage(
                              imageUrl: item.firstImageUrl,
                              width: 107,
                              height: 73,
                              fit: BoxFit.cover,
                              memCacheWidth: 214,
                              memCacheHeight: 146,
                            ),
                          ),
                          if (item.holdVideo)
                            const Align(
                              alignment: Alignment.center,
                              child: Icon(
                                Icons.play_circle,
                                size: 38,
                                color: Colors.grey,
                              ),
                            ),
                          if ((item.picNum) > 1)
                            Align(
                              alignment: Alignment.bottomRight,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.black.withAlpha(60),
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(8),
                                  ),
                                ),
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 4,
                                  vertical: 2,
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const Icon(
                                      Icons.image_outlined,
                                      size: 16,
                                      color: Colors.white,
                                    ),
                                    const SizedBox(width: 2),
                                    Text(
                                      item.picNum.toString(),
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                        ],
                      ),
                  ],
                ),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      item.createdAt.substring(0, 16),
                      style: TextStyle(
                        color: CustomColors.textLight,
                        fontSize: 12,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.more_horiz,
                          size: 24,
                          color: Colors.grey,
                        ),
                        const SizedBox(width: 10),
                        const Icon(Icons.comment, size: 24, color: Colors.grey),
                        Text(
                          (item.replies) > 0 ? item.replies.toString() : "评论",
                          style: TextStyle(
                            color: CustomColors.textLight,
                            fontSize: 12,
                          ),
                        ),
                        const SizedBox(width: 10),
                        IconButton(
                          onPressed: () => viewModel.toggleLike(item),
                          icon: Icon(
                            item.rate
                                ? Icons.thumb_up_alt
                                : Icons.thumb_up_off_alt,
                            size: 24,
                            color: Colors.grey,
                          ),
                        ),
                        Text(
                          (item.rateCount) > 0
                              ? item.rateCount.toString()
                              : "点赞",
                          style: TextStyle(
                            color: CustomColors.textLight,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                Divider(height: 10, color: CustomColors.divider),
              ],
            ),
          );
        },
      ),
    );
  }
}
