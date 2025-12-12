import 'dart:convert';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_refresh/easy_refresh.dart';
import 'package:flutter/material.dart';
import 'package:flutter_study/api/network_manager.dart';
import 'package:flutter_study/utils/common_utils.dart';
import 'package:flutter_study/utils/custom_colors.dart';

import '../api/response/gather_thread_page_info_entity.dart';
import '../base/base_state.dart';
import '../models/extra_entity.dart';
import '../utils/images_utils.dart';

class GatherPage extends BaseStatefulWidget {
  final String gatherId;

  const GatherPage({super.key, required this.gatherId});

  @override
  BaseState<BaseStatefulWidget> createState() => _GatherPage();
}

class _GatherPage extends BaseState<GatherPage> {
  LoadState _loadState = LoadState.refreshing; // 初始加载中

  late double _expandedHeight;
  late double _screenWidth;

  final api = NetworkManager().getApiClient();
  var order = "desc";
  final List<GatherThreadPageInfoThreadList> items = [];
  late GatherThreadPageInfoGatherInfo gatherInfo;
  late GatherThreadPageInfoGatherUser gatherUser;
  var page = 1;

  final EasyRefreshController _controller = EasyRefreshController(
    controlFinishRefresh: true,
    controlFinishLoad: true,
  );

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // 初始化屏幕宽度
    _screenWidth = MediaQuery.of(context).size.width;
  }

  @override
  void initState() {
    super.initState();
    _onRefresh();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Future<void> _onRefresh() async {
    setState(() {
      page = 1;
      items.clear();
      _loadState = LoadState.refreshing;
      _controller.resetFooter();
    });
    try {
      final res = await api.getGatherThreadPageInfo(
        gatherId: widget.gatherId,
        order: order,
      );
      if (res == null || res.code != 1) {
        setState(() {
          _loadState = LoadState.failed;
        });
        _controller.finishRefresh(IndicatorResult.fail);
        return;
      }
      setState(() {
        gatherInfo = res.gatherInfo;
        gatherUser = res.gatherUser;
        calculateExpandedHeight();
        _loadState = LoadState.success;
      });
      await dataProcessing(res, true);
    } catch (e) {
      setState(() {
        errorMessage = '加载失败: $e';
        _loadState = LoadState.failed;
      });
      _controller.finishRefresh(IndicatorResult.fail);
    }
  }

  Future<void> _onLoad() async {
    try {
      final res = await api.getGatherThreadPageInfo(
        gatherId: widget.gatherId,
        order: order,
        page: page,
      );
      if (res == null || res.code != 1) {
        _controller.finishLoad(IndicatorResult.fail);
        return;
      }
      await dataProcessing(res, false);
    } catch (e) {
      logger.e('加载失败: $e');
      _controller.finishLoad(IndicatorResult.fail);
    }
  }

  Future<void> dataProcessing(GatherThreadPageInfoEntity res, isRefresh) async {
    if (res.threadList == null) {
      setFinishState(res, isRefresh);
      return;
    }
    final List<GatherThreadPageInfoThreadList> list = [];
    final tidPids = StringBuffer();
    res.threadList!.asMap().forEach((index, item) {
      if (item.extra.isNotEmpty) {
        final extra = ExtraEntity.fromJson(json.decode(item.extra));
        final List<String> imgList = extra.imageUrls.split(",");
        if (imgList.isNotEmpty) {
          item.firstImageUrl = ImageUtils.imgToAtt3Size(imgList[0], "m300x");
        }
        item.picNum = extra.picNum;
        item.rateCount = extra.ratePlusNumber;
        if (imgList.isNotEmpty && extra.holdVideo) {
          item.holdVideo = true;
        } else {
          item.holdVideo = false;
        }
        item.tidPid = "${item.tid}_${item.pid}";
        tidPids.write(item.tidPid);
        if (index != res.threadList!.length - 1) {
          tidPids.write(",");
        }
      }
      list.add(item);
    });
    if (tidPids.isNotEmpty) {
      final rate = await api.isRatedBatch(tidPids: tidPids.toString());
      if (rate != null && rate.code == 1 && rate.isZanMap != null) {
        for (var item in list) {
          item.rate = rate.isZanMap![item.tidPid] == true;
        }
      }
    }
    setState(() {
      items.addAll(list);
    });
    setFinishState(res, isRefresh);
    page++;
  }

  void setFinishState(GatherThreadPageInfoEntity res, bool isRefresh) {
    bool noMore = res.page * res.perPage >= res.totalCount;
    if (isRefresh) {
      _controller.finishRefresh(IndicatorResult.success);
      if (noMore) {
        _controller.finishLoad(IndicatorResult.noMore);
      }
    } else {
      _controller.finishLoad(
        noMore ? IndicatorResult.noMore : IndicatorResult.success,
      );
    }
  }

  void calculateExpandedHeight() {
    _expandedHeight = _screenWidth * 8 / 15;
    if (gatherInfo.desc.isNotEmpty) {
      // 获取文本实际可用宽度（示例：屏幕宽度减去左右边距）
      final double textMaxWidth = _screenWidth - 30;
      final textStyle = TextStyle(fontSize: 12, color: CustomColors.textDark);
      double descHeight = CommonUtils.calculateTextHeight(
        text: gatherInfo.desc,
        style: textStyle,
        maxWidth: textMaxWidth,
        maxLines: 2,
      );
      _expandedHeight += descHeight;
    } else {
      _expandedHeight -= 25;
    }
  }

  String _getView() {
    final buffer = StringBuffer();
    if (gatherInfo.visitNum > 0) {
      buffer.write("${gatherInfo.visitNum}浏览      ");
    }
    buffer.write("${gatherInfo.threads}篇      ");
    buffer.write(
      "更新于${(gatherInfo.lastGatherAt.isEmpty ? gatherInfo.createdAt : gatherInfo.lastGatherAt).split(" ")[0]}",
    );
    return buffer.toString();
  }

  @override
  Widget build(BuildContext context) {
    // 加载状态显示加载界面
    if (_loadState == LoadState.refreshing) {
      return Scaffold(
        body: Center(
          child: CircularProgressIndicator(), // 加载指示器
        ),
      );
    }
    if (_loadState == LoadState.failed) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            errorMessage,
            style: const TextStyle(color: Colors.red),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),
          ElevatedButton(onPressed: _onRefresh, child: const Text('重试')),
        ],
      );
    }
    return Scaffold(
      backgroundColor: Colors.white,
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              expandedHeight: _expandedHeight,
              pinned: true,
              floating: true,
              snap: true,
              automaticallyImplyLeading: false,
              flexibleSpace: FlexibleSpaceBar(background: _headWidget()),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: Icon(Icons.arrow_back_ios, color: Colors.white),
                  ),
                  Icon(Icons.more_horiz, size: 25, color: Colors.white),
                ],
              ),
            ),
          ];
        },
        body: _listWidget(),
      ),
    );
  }

  Widget _headWidget() {
    return Column(
      children: [
        Container(
          height: _screenWidth * 8 / 15,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: const [
                Color(0xFF8E6C56), // startColor
                Color(0xFFD3B089), // endColor
              ],
              stops: const [0.0, 1.1],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          padding: EdgeInsets.fromLTRB(15, 100, 15, 15),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      gatherInfo.name,
                      style: TextStyle(fontSize: 17, color: Colors.white),
                    ),
                    SizedBox(height: 4),
                    Row(
                      children: [
                        ClipOval(
                          child: CachedNetworkImage(
                            width: 25,
                            height: 25,
                            fit: BoxFit.cover,
                            imageUrl: gatherUser.smallAvatar,
                            memCacheWidth: 50,
                            memCacheHeight: 50,
                          ),
                        ),
                        Text(
                          gatherUser.userName,
                          style: TextStyle(fontSize: 12, color: Colors.white),
                        ),
                      ],
                    ),
                    SizedBox(height: 4),
                    Text(
                      _getView(),
                      style: TextStyle(fontSize: 12, color: Colors.white),
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
                  imageUrl: gatherInfo.cover,
                  memCacheWidth: 160,
                  memCacheHeight: 160,
                ),
              ),
            ],
          ),
        ),
        if (gatherInfo.desc.isNotEmpty)
          Container(
            color: Colors.white,
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Text(
              gatherInfo.desc,
              style: TextStyle(fontSize: 12, color: CustomColors.textDark),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        if (gatherInfo.desc.isNotEmpty)
          Divider(color: CustomColors.divider1, height: 5, thickness: 5),
      ],
    );
  }

  Widget _listWidget() {
    return EasyRefresh(
      onRefresh: _onRefresh,
      onLoad: _onLoad,
      controller: _controller,
      child: ListView.builder(
        itemCount: items.length,
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          final item = items[index];
          return Container(
            padding: EdgeInsets.fromLTRB(15, 15, 15, 0),
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
                            Align(
                              alignment: Alignment.center,
                              child: Icon(
                                Icons.play_circle,
                                size: 38,
                                color: Colors.grey,
                              ),
                            ),
                          if (item.picNum > 1)
                            Align(
                              alignment: Alignment.bottomRight,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.black.withValues(alpha: 60),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(8),
                                  ),
                                ),
                                padding: EdgeInsets.symmetric(
                                  horizontal: 4,
                                  vertical: 2,
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.image_outlined,
                                      size: 16,
                                      color: Colors.white,
                                    ),
                                    SizedBox(width: 2),
                                    Text(
                                      item.picNum.toString(),
                                      style: TextStyle(
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
                SizedBox(height: 15),
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
                        Icon(Icons.more_horiz, size: 24, color: Colors.grey),
                        SizedBox(width: 10),
                        Icon(Icons.comment, size: 24, color: Colors.grey),
                        Text(
                          item.replies > 0 ? item.replies.toString() : "评论",
                          style: TextStyle(
                            color: CustomColors.textLight,
                            fontSize: 12,
                          ),
                        ),
                        SizedBox(width: 10),
                        IconButton(
                          onPressed: () => {
                            setState(() {
                              item.rateCount = item.rate
                                  ? item.rateCount - 1
                                  : item.rateCount + 1;
                              item.rate = !item.rate;
                            }),
                          },
                          icon: Icon(
                            item.rate
                                ? Icons.thumb_up_alt
                                : Icons.thumb_up_off_alt,
                            size: 24,
                            color: Colors.grey,
                          ),
                        ),
                        Text(
                          item.rateCount > 0 ? item.rateCount.toString() : "点赞",
                          style: TextStyle(
                            color: CustomColors.textLight,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 5),
                Divider(height: 10, color: CustomColors.divider),
              ],
            ),
          );
        },
      ),
    );
  }
}
