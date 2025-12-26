import 'dart:convert';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_refresh/easy_refresh.dart';
import 'package:flutter/material.dart';
import 'package:flutter_study/models/extra_entity.dart';
import 'package:flutter_study/common/custom_colors.dart';
import 'package:flutter_study/utils/media_utils.dart';
import 'package:flutter_study/common/logger_mixin.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../api/network_manager.dart';
import '../api/response/user_thread_entity.dart';
import '../common/some_publish.dart';

class PostListPage extends StatefulWidget {
  final int uid;

  const PostListPage({super.key, required this.uid});

  @override
  State<StatefulWidget> createState() => _PostListPage();
}

class _PostListPage extends State<PostListPage>
    with AutomaticKeepAliveClientMixin, LoggerMixin {
  LoadState _loadState = LoadState.refreshing; // 初始加载中
  final api = NetworkManager().getApiClient();
  int page = 1;
  var errorMessage = "";
  List<UserThreadMyThreadList> items = [];

  final EasyRefreshController _controller = EasyRefreshController(
    controlFinishRefresh: true,
    controlFinishLoad: true,
  );

  @override
  void initState() {
    super.initState();
    _getUserThread();
  }

  Future<void> _getUserThread() async {
    setState(() {
      page = 1;
      items.clear();
      _loadState = LoadState.refreshing;
      _controller.resetFooter();
    });
    try {
      final res = await api.getUserThread(page: page);
      if (res == null || res.code != "1") {
        setState(() {
          errorMessage = '加载失败';
          _loadState = LoadState.failed;
        });
        _controller.finishRefresh(IndicatorResult.fail);
        return;
      }
      await dataProcessing(res, true);
      setState(() {
        items.addAll(res.myThreadList);
        _loadState = LoadState.success;
      });
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
      final res = await api.getUserThread(page: page);
      if (res == null || res.code != "1") {
        _controller.finishLoad(IndicatorResult.fail);
      } else {
        await dataProcessing(res, false);
        setState(() {
          items.addAll(res.myThreadList);
        });
      }
    } catch (e) {
      logger.e('加载失败: $e');
      _controller.finishLoad(IndicatorResult.fail);
    }
  }

  Future<void> dataProcessing(UserThreadEntity res, isRefresh) async {
    for (var item in res.myThreadList) {
      if (item.extra.isNotEmpty) {
        final extra = ExtraEntity.fromJson(json.decode(item.extra));
        final List<String> imgList = extra.imageUrls.split(",");
        if (imgList.isNotEmpty) {
          item.firstImageUrl = MediaUtils.imgToAtt3Size(imgList[0], "m300x");
        }
        item.picNum = extra.picNum;
        if (imgList.isNotEmpty && extra.holdVideo) {
          item.itemType = 1;
        } else {
          item.itemType = 0;
        }
      }
    }
    setFinishState(res, isRefresh);
    page++;
  }

  void setFinishState(UserThreadEntity res, bool isRefresh) {
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

  @override
  void didUpdateWidget(covariant PostListPage oldWidget) {
    super.didUpdateWidget(oldWidget);
    // 当参数变化时，重新请求数据
    if (oldWidget.uid != widget.uid) {
      Fluttertoast.showToast(msg: "参数变化，重新请求数据");
    }
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    if (_loadState == LoadState.refreshing) {
      return Scaffold(body: Center(child: CircularProgressIndicator()));
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
          ElevatedButton(onPressed: _getUserThread, child: const Text('重试')),
        ],
      );
    }
    return Scaffold(
      backgroundColor: Colors.white,
      body: MediaQuery.removePadding(
        context: context,
        removeTop: true, // 移除顶部的padding
        child: EasyRefresh(
          controller: _controller,
          onLoad: _onLoad,
          child: ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              final item = items[index];
              return Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 6),
                child: Column(
                  children: [
                    if (item.itemType == 0)
                      _buildPic(item)
                    else
                      _buildVideo(item),
                    SizedBox(height: 10),
                    _buildComment(item),
                    SizedBox(height: 10),
                    Divider(height: 1, color: CustomColors.divider),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  Widget _buildPic(UserThreadMyThreadList item) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Text(
            item.subject,
            style: TextStyle(color: CustomColors.textDark, fontSize: 16),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        if (item.firstImageUrl.isNotEmpty)
          Padding(
            padding: EdgeInsets.only(left: 8),
            child: Stack(
              alignment: Alignment.bottomRight,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: CachedNetworkImage(
                    width: 107,
                    height: 73,
                    imageUrl: item.firstImageUrl,
                    fit: BoxFit.cover,
                    placeholder: (context, url) => Icon(Icons.image, size: 25),
                    errorWidget: (context, url, error) =>
                        Icon(Icons.image, size: 25),
                    // 根据网格大小设置缓存尺寸
                    memCacheWidth: 214,
                    memCacheHeight: 146,
                  ),
                ),
                if (item.picNum > 1)
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.black.withValues(alpha: 0.6),
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.image_outlined,
                          size: 16,
                          color: Colors.white,
                        ),
                        Text(
                          item.picNum.toString(),
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                      ],
                    ),
                  ),
              ],
            ),
          ),
      ],
    );
  }

  Widget _buildVideo(UserThreadMyThreadList item) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          item.subject,
          style: TextStyle(color: CustomColors.textDark, fontSize: 16),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        SizedBox(height: 10),
        Stack(
          alignment: Alignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: CachedNetworkImage(
                width: double.infinity,
                height: 200,
                imageUrl: item.firstImageUrl,
                fit: BoxFit.cover,
                memCacheWidth: 800,
                memCacheHeight: 400,
              ),
            ),
            Icon(Icons.play_circle, size: 65, color: Colors.grey),
          ],
        ),
      ],
    );
  }

  Widget _buildComment(UserThreadMyThreadList item) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          item.createdAt.substring(0, 16),
          style: TextStyle(color: CustomColors.textLight, fontSize: 12),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(Icons.more_horiz, size: 24, color: Colors.grey),
            SizedBox(width: 10),
            Icon(Icons.ios_share_sharp, size: 24, color: Colors.grey),
            SizedBox(width: 10),
            Icon(Icons.comment, size: 24, color: Colors.grey),
            SizedBox(width: 10),
            Icon(Icons.thumb_up_off_alt, size: 24, color: Colors.grey),
          ],
        ),
      ],
    );
  }

  @override
  bool get wantKeepAlive => true;
}
