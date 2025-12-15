import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter_study/api/network_manager.dart';
import 'package:flutter_study/api/response/gather_thread_page_info_entity.dart';
import 'package:flutter_study/base/base_view_model.dart';
import 'package:flutter_study/models/extra_entity.dart';
import 'package:flutter_study/utils/images_utils.dart';

import '../base/base_state.dart';
import '../utils/common_utils.dart';
import '../utils/custom_colors.dart';

class GatherViewModel extends BaseViewModel {
  final String gatherId;
  final api = NetworkManager().getApiClient();

  // State
  LoadState loadState = LoadState.refreshing;

  // Data
  late GatherThreadPageInfoGatherInfo gatherInfo;
  late GatherThreadPageInfoGatherUser gatherUser;
  final List<GatherThreadPageInfoThreadList> items = [];

  int page = 1;
  final String order = "desc";
  double screenWidth = 0;
  double expandedHeight = 0;

  GatherViewModel(this.gatherId);

  void setScreenWidth(double screenWidth) {
    this.screenWidth = screenWidth;
  }

  Future<void> onRefresh(LoadMoreCallback callback) async {
    page = 1;
    items.clear();
    loadState = LoadState.refreshing;
    notifyListeners();

    try {
      final res = await api.getGatherThreadPageInfo(
        gatherId: gatherId,
        order: order,
      );
      if (res == null || res.code != 1) {
        loadState = LoadState.failed;
        notifyListeners();
        callback(false, false);
        return;
      }

      gatherInfo = res.gatherInfo;
      gatherUser = res.gatherUser;
      _calculateExpandedHeight();
      loadState = LoadState.success;
      notifyListeners();

      await _processData(res, callback);
    } catch (e) {
      errorMessage = '加载失败: $e';
      loadState = LoadState.failed;
      notifyListeners();

      callback(false, false);
    }
  }

  Future<void> onLoadMore(LoadMoreCallback callback) async {
    try {
      final res = await api.getGatherThreadPageInfo(
        gatherId: gatherId,
        order: order,
        page: page,
      );
      if (res == null || res.code != 1) {
        callback(false, true);
        return;
      }
      await _processData(res, callback);
    } catch (e) {
      logger.d("加载失败$e");
      callback(false, true);
    }
  }

  Future<void> _processData(
    GatherThreadPageInfoEntity res,
    LoadMoreCallback callback,
  ) async {
    if (res.threadList == null) {
      setFinishState(res, callback);
      return;
    }

    final List<GatherThreadPageInfoThreadList> list = [];
    final tidPids = StringBuffer();

    for (var i = 0; i < res.threadList!.length; i++) {
      final item = res.threadList![i];
      if (item.extra.isNotEmpty) {
        final extra = ExtraEntity.fromJson(json.decode(item.extra));
        final imgList = extra.imageUrls.split(",");
        if (imgList.isNotEmpty) {
          item.firstImageUrl = ImageUtils.imgToAtt3Size(imgList[0], "m300x");
        }
        item.picNum = extra.picNum;
        item.rateCount = extra.ratePlusNumber;
        item.holdVideo = imgList.isNotEmpty && extra.holdVideo;
        item.tidPid = "${item.tid}_${item.pid}";
        tidPids.write(item.tidPid);
        if (i != res.threadList!.length - 1) tidPids.write(",");
      }
      list.add(item);
    }

    if (tidPids.isNotEmpty) {
      final rate = await api.isRatedBatch(tidPids: tidPids.toString());
      if (rate != null && rate.code == 1 && rate.isZanMap != null) {
        for (var item in list) {
          item.rate = rate.isZanMap![item.tidPid] == true;
        }
      }
    }
    items.addAll(list);
    notifyListeners();

    setFinishState(res, callback);
    page++;
  }

  void setFinishState(
    GatherThreadPageInfoEntity res,
    LoadMoreCallback callback,
  ) {
    bool noMore = res.page * res.perPage >= res.totalCount;
    callback(true, !noMore);
  }

  void toggleLike(GatherThreadPageInfoThreadList item) {
    item.rate = !item.rate;
    item.rateCount += item.rate ? 1 : -1;
    notifyListeners(); // 立即更新 UI
  }

  void _calculateExpandedHeight() {
    expandedHeight = screenWidth * 8 / 15;
    if (gatherInfo.desc.isNotEmpty) {
      final double textMaxWidth = screenWidth - 30;
      final textStyle = TextStyle(fontSize: 12, color: CustomColors.textDark);
      double descHeight = CommonUtils.calculateTextHeight(
        text: gatherInfo.desc,
        style: textStyle,
        maxWidth: textMaxWidth,
        maxLines: 2,
      );
      expandedHeight += descHeight;
    } else {
      expandedHeight -= 25;
    }
  }

  String getViewString() {
    final buffer = StringBuffer();
    if (gatherInfo.visitNum > 0) {
      buffer.write("${gatherInfo.visitNum}浏览      ");
    }
    buffer.write("${gatherInfo.threads}篇      ");
    final date = gatherInfo.lastGatherAt.isEmpty
        ? gatherInfo.createdAt
        : gatherInfo.lastGatherAt;
    buffer.write("更新于${date.split(" ")[0]}");
    return buffer.toString();
  }
}
