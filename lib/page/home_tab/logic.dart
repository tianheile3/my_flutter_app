import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:easy_refresh/easy_refresh.dart';
import 'package:get/get.dart';

import '../../api/response/second_config_entity.dart';
import '../../api/response/user_second_recom_thread_entity.dart';
import '../../base/some_publish.dart';
import '../../models/banner.dart';
import '../../models/extra_entity.dart';
import '../../models/home_item.dart';

class HomeTabLogic extends BaseController {
  final EasyRefreshController controller = EasyRefreshController(
    controlFinishRefresh: true,
    controlFinishLoad: true,
  );

  final String sId = "marry22";
  final int maxImageCount = 9;
  final double imageGridSpacing = 10;
  late double screenWidth;

  int page = 1;
  RxList<HomeListItem> items = <HomeListItem>[].obs;
  final Rx<LoadState> loadState = LoadState.refreshing.obs;

  @override
  void onInit() {
    super.onInit();
    screenWidth = Get.mediaQuery.size.width;
    onRefresh();
  }

  Future<void> onRefresh() async {
    page = 1;
    items.clear();
    loadState.value = LoadState.refreshing;
    controller.resetFooter();
    try {
      final configFuture = _initConfig();
      final threadFuture = _initThread(true);
      final results = await Future.wait([configFuture, threadFuture]);
      items.addAll(results[0]);
      items.addAll(results[1]);
      loadState.value = LoadState.success;
    } catch (e) {
      errorMessage.value = '初始化失败: $e';
      loadState.value = LoadState.failed;
      controller.finishRefresh(IndicatorResult.fail);
    }
  }

  Future<List<HomeListItem>> _initConfig() async {
    final dio = Dio();
    final String url =
        "https://att3.citysbs.com/appstatic/${sId}_second.json?secondid=$sId&ts=${DateTime.now().millisecondsSinceEpoch}";
    final response = await dio.get(url);
    if (response.data == null) {
      return [];
    }
    final parsedData = jsonDecode(response.data);
    final config = SecondConfigEntity.fromJson(parsedData);

    // 临时列表存储配置相关的item
    List<HomeListItem> configItems = [];
    //轮播图
    final List<BannerEntity> bannerList = [];
    for (var item in config.configInfo.picTurnList) {
      BannerEntity banner = BannerEntity()
        ..imageUrl = item.firstPicUrl
        ..url = item.showUrl
        ..subject = item.subject
        ..fid = item.fid
        ..tid = item.tid;
      bannerList.add(banner);
    }
    BannerItem bannerItem = BannerItem(bannerList: bannerList);
    configItems.add(bannerItem);

    //行业入口
    final List<SecondConfigConfigInfoAppPortalInfo> list = [];
    list.addAll(config.configInfo.appPortalInfo);
    DiscoverItem discoverItem = DiscoverItem(discoveryList: list);
    configItems.add(discoverItem);

    return configItems;
  }

  Future<List<HomeListItem>> _initThread(bool isRefresh) async {
    List<HomeListItem> threadList = [];

    final res = await api.getUserSecondRecomThread(industryId: sId, page: page);
    if (res == null) {
      if (isRefresh) {
        controller.finishRefresh(IndicatorResult.fail);
      } else {
        controller.finishLoad(IndicatorResult.fail);
      }
      return threadList;
    }
    if (res.recomThreadList.isNotEmpty) {
      for (var item in res.recomThreadList) {
        if (item.extra.isNotEmpty) {
          final extra = ExtraEntity.fromJson(json.decode(item.extra));
          if (extra.imageUrls.isNotEmpty) {
            final images = extra.imageUrls.split(",");
            item.images.addAll(images);
          }
        }
        if (item.recommendSourceType == "9" ||
            (item.recommendImageShowType == "0" && item.images.length == 1)) {
          item.setType(HomeItemType.single);
        } else {
          item.setType(HomeItemType.normal);
        }
        threadList.add(item);
      }
    }
    setFinishState(res, isRefresh);
    page++;
    return threadList;
  }

  void setFinishState(UserSecondRecomThreadEntity res, bool isRefresh) {
    bool noMore = page >= int.parse(res.maxPage);
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

  Future<void> onLoadMore() async {
    try {
      final list = await _initThread(false);
      if (list.isEmpty) {
        controller.finishLoad(IndicatorResult.fail);
      }
      items.addAll(list);
    } catch (e) {
      logger.e('加载失败: $e');
      controller.finishLoad(IndicatorResult.fail);
    }
  }

  @override
  void onClose() {
    controller.dispose();
    super.onClose();
  }
}
