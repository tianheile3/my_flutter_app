import 'dart:convert';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_refresh/easy_refresh.dart';
import 'package:flutter/material.dart';
import 'package:flutter_study/base/base_state.dart';
import 'package:flutter_study/models/extra_entity.dart';
import 'package:flutter_study/utils/custom_colors.dart';
import 'package:flutter_study/utils/images_utils.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../api/network_manager.dart';
import '../api/response/user_thread_entity.dart';

class PostListPage extends BaseStatefulWidget {
  final int uid;

  const PostListPage({super.key, required this.uid});

  @override
  BaseState<BaseStatefulWidget> createState() => _PostListPage();
}

class _PostListPage extends BaseState<PostListPage> {
  final api = NetworkManager().getApiClient();
  int page = 1;
  List<UserThreadMyThreadList> items = [];

  @override
  void initState() {
    super.initState();
    _getUserThread();
  }

  Future<void> _getUserThread() async {
    // 开始加载
    setState(() {
      isRefreshing = true;
      isLoadComplete = false;
      page = 1;
      items.clear();
    });
    try {
      final res = await api.getUserThread(page: page);
      if (res == null || res.code != "1") {
        showErrorToast('加载失败，请重试');
        return;
      }
      await dataProcessing(res);
      setState(() {
        items.addAll(res.myThreadList);
      });
    } catch (e) {
      logger.e('加载失败: $e');
    } finally {
      _controller.finishRefresh();
      _controller.resetFooter();
      setState(() => isRefreshing = false);
    }
  }

  Future<void> _onLoad() async {
    if (isLoadComplete || isLoadingMore || isRefreshing) {
      _controller.finishLoad();
      return;
    }
    setState(() {
      isLoadingMore = true;
    });

    bool hasError = false;

    try {
      final res = await api.getUserThread(page: page);
      if (res == null || res.code != "1") {
        hasError = true;
      } else {
        await dataProcessing(res);
        setState(() {
          items.addAll(res.myThreadList);
        });
      }
    } catch (e) {
      logger.e('加载失败: $e');
      hasError = true;
    } finally {
      if (hasError) {
        _controller.finishLoad(IndicatorResult.fail);
      } else if (isLoadComplete) {
        _controller.finishLoad(IndicatorResult.noMore);
      } else {
        _controller.finishLoad(IndicatorResult.success);
      }
      if (mounted) {
        setState(() => isLoadingMore = false);
      }
    }
  }

  Future<void> dataProcessing(UserThreadEntity res) async {
    for (var item in res.myThreadList) {
      if (item.extra.isNotEmpty) {
        final extra = ExtraEntity.fromJson(json.decode(item.extra));
        final List<String> imgList = extra.imageUrls?.split(",") ?? [];
        if (imgList.isNotEmpty) {
          item.firstImageUrl = ImageUtils.imgToAtt3Size(imgList[0], "m300x");
        }
        item.picNum = extra.picNum;
        if (imgList.isNotEmpty && extra.holdVideo) {
          item.itemType = 1;
        } else {
          item.itemType = 0;
        }
      }
    }
    isLoadComplete = res.page * res.perPage >= res.totalCount;
    page++;
  }

  @override
  void didUpdateWidget(covariant PostListPage oldWidget) {
    super.didUpdateWidget(oldWidget);
    // 当参数变化时，重新请求数据
    if (oldWidget.uid != widget.uid) {
      Fluttertoast.showToast(msg: "参数变化，重新请求数据");
    }
  }

  final EasyRefreshController _controller = EasyRefreshController(
    controlFinishRefresh: true,
    controlFinishLoad: true,
  );

  @override
  Widget build(BuildContext context) {
    if (isRefreshing) {
      return Scaffold(body: Center(child: CircularProgressIndicator()));
    }
    return Scaffold(
      backgroundColor: Colors.white,
      body: EasyRefresh(
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
                        Icon(Icons.image_outlined, size: 16),
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
            Icon(Icons.play_circle, size: 65),
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
            Icon(Icons.more_horiz, size: 24),
            SizedBox(width: 10),
            Icon(Icons.ios_share_sharp, size: 24),
            SizedBox(width: 10),
            Icon(Icons.comment, size: 24),
            SizedBox(width: 10),
            Icon(Icons.thumb_up_off_alt, size: 24),
          ],
        ),
      ],
    );
  }
}
