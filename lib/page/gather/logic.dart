import 'dart:convert';

import 'package:easy_refresh/easy_refresh.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../api/response/gather_thread_page_info_entity.dart';
import '../../base/some_publish.dart';
import '../../models/extra_entity.dart';
import '../../utils/common_utils.dart';
import '../../utils/custom_colors.dart';
import '../../utils/images_utils.dart';

class GatherLogic extends BaseController {
  final EasyRefreshController controller = EasyRefreshController(
    controlFinishRefresh: true,
    controlFinishLoad: true,
  );

  final String order = "desc";
  late final String gatherId;
  late double screenWidth;
  late double expandedHeight;
  int page = 1;

  final gatherInfo = Rxn<GatherThreadPageInfoGatherInfo>();
  final gatherUser = Rxn<GatherThreadPageInfoGatherUser>();
  final items = <GatherThreadPageInfoThreadList>[].obs;
  Rx<LoadState> loadState = LoadState.refreshing.obs;

  @override
  void onClose() {
    controller.dispose();
    super.onClose();
  }

  @override
  void onInit() {
    super.onInit();
    gatherId = Get.arguments["gatherId"] ?? "";
    if (gatherId.isEmpty) {
      return;
    }
    screenWidth = Get.mediaQuery.size.width;
    onRefresh();
  }

  Future<void> onRefresh() async {
    page = 1;
    items.clear();
    loadState.value = LoadState.refreshing;

    try {
      final res = await api.getGatherThreadPageInfo(
        gatherId: gatherId,
        order: order,
      );
      if (res == null || res.code != 1) {
        loadState.value = LoadState.failed;
        controller.finishRefresh(IndicatorResult.fail);
        return;
      }

      gatherInfo.value = res.gatherInfo;
      gatherUser.value = res.gatherUser;
      _calculateExpandedHeight();
      loadState.value = LoadState.success;

      await _processData(res, true);
    } catch (e) {
      errorMessage.value = '加载失败: $e';
      loadState.value = LoadState.failed;
      controller.finishRefresh(IndicatorResult.fail);
    }
  }

  Future<void> onLoadMore() async {
    try {
      final res = await api.getGatherThreadPageInfo(
        gatherId: gatherId,
        order: order,
        page: page,
      );
      if (res == null || res.code != 1) {
        controller.finishLoad(IndicatorResult.fail);
        return;
      }
      await _processData(res, false);
    } catch (e) {
      logger.d("加载失败$e");
      controller.finishLoad(IndicatorResult.fail);
    }
  }

  Future<void> _processData(
    GatherThreadPageInfoEntity res,
    bool isRefresh,
  ) async {
    if (res.threadList == null) {
      setFinishState(res, isRefresh);
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
        item.rateCount.value = extra.ratePlusNumber;
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
          item.rate.value = rate.isZanMap![item.tidPid] == true;
        }
      }
    }
    items.addAll(list);

    setFinishState(res, isRefresh);
    page++;
  }

  void setFinishState(GatherThreadPageInfoEntity res, bool isRefresh) {
    bool noMore = res.page * res.perPage >= res.totalCount;
    if (isRefresh) {
      controller.finishRefresh(IndicatorResult.success);
      if (noMore) {
        controller.finishLoad(IndicatorResult.noMore);
      }
    } else {
      controller.finishLoad(
        noMore ? IndicatorResult.noMore : IndicatorResult.success,
      );
    }
  }

  void toggleLike(GatherThreadPageInfoThreadList item) {
    item.rate.value = !item.rate.value;
    item.rateCount.value += item.rate.value ? 1 : -1;
  }

  void _calculateExpandedHeight() {
    expandedHeight = screenWidth * 8 / 15;
    if (gatherInfo.value!.desc.isNotEmpty) {
      final double textMaxWidth = screenWidth - 30;
      final textStyle = TextStyle(fontSize: 12, color: CustomColors.textDark);
      double descHeight = CommonUtils.calculateTextHeight(
        text: gatherInfo.value?.desc ?? "",
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
    if ((gatherInfo.value?.visitNum ?? 0) > 0) {
      buffer.write("${gatherInfo.value?.visitNum}浏览      ");
    }
    buffer.write("${gatherInfo.value?.threads}篇      ");

    final date = gatherInfo.value!.lastGatherAt.isEmpty
        ? gatherInfo.value!.createdAt
        : gatherInfo.value!.lastGatherAt;
    buffer.write("更新于${date.split(" ")[0]}");
    return buffer.toString();
  }
}
