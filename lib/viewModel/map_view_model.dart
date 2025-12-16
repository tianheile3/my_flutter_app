import 'package:flutter_study/base/base_view_model.dart';

import '../api/network_manager.dart';
import '../api/response/record_list_entity.dart';
import '../base/base_state.dart';

class MapViewModel extends BaseViewModel {
  final infoApi = NetworkManager().withOtherBaseUrl(
    "https://infoapi.19lou.com",
  );

  LoadState loadState = LoadState.refreshing;
  var page = 1;
  final List<dynamic> items = [];
  bool hasMore = true;

  Future<void> onRefresh(LoadMoreCallback callback) async {
    page = 1;
    items.clear();
    hasMore = true;
    loadState = LoadState.refreshing;
    notifyListeners();

    try {
      final request1 = getMapConfig();
      final request2 = getRecordList();
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
      loadState = LoadState.success;
      notifyListeners();

      callback(true, hasMore);
    } catch (e) {
      errorMessage = "加载失败：$e";
      loadState = LoadState.failed;
      notifyListeners();

      callback(false, false);
    }
  }

  Future<void> onLoadMore(LoadMoreCallback callback) async {
    try {
      final result = await getRecordList();
      if (result == null) {
        callback(false, true);
        return;
      }
      items.addAll(result);
      notifyListeners();
      callback(true, hasMore);
    } catch (e) {
      logger.d("加载失败$e");
      callback(false, true);
    }
  }

  Future<List<dynamic>> getMapConfig() async {
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

  Future<List<RecordListDataItems>?> getRecordList() async {
    final res = await infoApi.recordList(page: page);
    if (res != null && res.code == 200) {
      hasMore = res.data.currentPage < res.data.maxPage;
      page++;
      return res.data.items;
    }
    return null;
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
}
