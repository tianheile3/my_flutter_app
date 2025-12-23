import 'package:easy_refresh/easy_refresh.dart';
import 'package:flutter_study/base/some_publish.dart';
import 'package:flutter_study/route_config.dart';
import 'package:get/get.dart';

import '../../api/network_manager.dart';
import '../../api/response/record_list_entity.dart';

class CategoryTabLogic extends BaseController {
  final EasyRefreshController controller = EasyRefreshController(
    controlFinishRefresh: true,
    controlFinishLoad: true,
  );

  final infoApi = NetworkManager().withOtherBaseUrl(
    "https://infoapi.19lou.com",
  );
  final int cityId = 330400;

  var page = 1;
  Rx<LoadState> loadState = LoadState.refreshing.obs;
  final RxList<dynamic> items = <dynamic>[].obs;

  @override
  void onInit() {
    super.onInit();
    onRefresh();
  }

  Future<void> onRefresh() async {
    page = 1;
    items.clear();
    loadState.value = LoadState.refreshing;
    controller.resetFooter();

    try {
      final request1 = _getMapConfig();
      final request2 = _getRecordList(true);
      final results = await Future.wait([request1, request2]);

      final result1 = results[0];
      if (result1 != null) {
        items.addAll(result1);
      }
      final result2 = results[1];
      if (result2 != null &&
          (result2 as List<RecordListDataItems>).isNotEmpty) {
        if (items.isNotEmpty) {
          items.add(1);
        }
        items.add("1");
        items.addAll(result2);
      }
      loadState.value = LoadState.success;
    } catch (e) {
      errorMessage.value = "加载失败：$e";
      loadState.value = LoadState.failed;
      controller.finishRefresh(IndicatorResult.fail);
    }
  }

  Future<void> onLoadMore() async {
    try {
      final result = await _getRecordList(false);
      if (result == null) {
        controller.finishLoad(IndicatorResult.fail);
        return;
      }
      items.addAll(result);
    } catch (e) {
      logger.d("加载失败$e");
      controller.finishLoad(IndicatorResult.fail);
    }
  }

  Future<List<dynamic>> _getMapConfig() async {
    final List<dynamic> list = [];
    final res = await api.getSiteMapConfig();
    if (res != null && res.groupList.isNotEmpty) {
      res.groupList.removeWhere(
        (item) =>
            item.hide == 1 || (item.displayType != 5 && item.itemList.isEmpty),
      );
      for (var item in res.groupList) {
        if (item.itemList.isNotEmpty) {
          item.itemList.removeWhere((i) => i.link.isEmpty);
        }
        if (list.isNotEmpty) {
          list.add(1);
        }
        list.add(item);
      }
    }
    return list;
  }

  Future<List<RecordListDataItems>?> _getRecordList(bool isRefresh) async {
    final res = await infoApi.recordList(page: page);
    if (res != null && res.code == 200) {
      setFinishState(res, isRefresh);
      page++;
      return res.data.items;
    } else {
      if (isRefresh) {
        controller.finishRefresh(IndicatorResult.fail);
      } else {
        controller.finishLoad(IndicatorResult.fail);
      }
    }
    return null;
  }

  void setFinishState(RecordListEntity res, bool isRefresh) {
    bool noMore = res.data.currentPage >= res.data.maxPage;
    logger.d("noMore:$noMore");
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

  String getTitle(RecordListDataItems item) {
    StringBuffer buffer = StringBuffer();
    buffer.write(item.title);
    if (item.catType == 3 &&
        item.jobRecord != null &&
        (item.jobRecord!.areaName.isNotEmpty)) {
      buffer.write(" (");
      buffer.write(item.jobRecord?.areaName);
      buffer.write(" )");
    }
    return buffer.toString();
  }

  String getDesc(RecordListDataItems item) {
    late String desc;
    if (item.catType == 1) {
      desc = "房屋租赁";
    } else if (item.catType == 2) {
      desc = "闲置转让";
    } else {
      desc = "人才招聘";
    }
    return desc;
  }

  String getAddress(RecordListDataItems item) {
    StringBuffer buffer = StringBuffer();
    buffer.write(item.region);
    if (item.community?.isNotEmpty ?? false) {
      buffer.write(item.community);
    }
    return buffer.toString();
  }

  String getPrice(RecordListDataItems item) {
    StringBuffer buffer = StringBuffer();
    switch (item.catType) {
      case 3:
        buffer.write(item.jobRecord?.showPay);
        break;
      case 2:
        buffer.write(item.price / 100);
        buffer.write("元");
        break;
      default:
        buffer.write(item.price);
        buffer.write("元/月");
        break;
    }
    return buffer.toString();
  }

  void toDetail(String url) {
    Get.toNamed(MyRouteConfig.webview, arguments: {"url": url});
  }

  @override
  void onClose() {
    controller.dispose();
    super.onClose();
  }
}
