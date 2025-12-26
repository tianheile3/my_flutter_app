import 'package:easy_refresh/easy_refresh.dart';
import 'package:flutter_study/route_config.dart';
import 'package:get/get.dart';

import '../../api/network_manager.dart';
import '../../api/response/fav_board_and_forum_entity.dart';
import '../../api/response/map_config_entity.dart';
import '../../api/response/record_list_entity.dart';
import '../../common/some_publish.dart';

class CategoryTabLogic extends BaseController {
  final EasyRefreshController controller = EasyRefreshController(
    controlFinishRefresh: true,
    controlFinishLoad: true,
  );

  final infoApi = NetworkManager().withOtherBaseUrl(
    "https://infoapi.19lou.com",
  );

  // final int cityId = 330400; //jiaxing
  final int cityId = 330100; //hangzhou

  var page = 1;
  Rx<LoadState> loadState = LoadState.refreshing.obs;
  final RxList<dynamic> items = <dynamic>[].obs;
  bool infoCheck = false;
  bool hasForum = false;

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
      final result = await _getMapConfig();
      items.addAll(result);

      final List<Future> tasks = [];
      final List<String> taskTypes = [];
      if (hasForum) {
        tasks.add(_getMyForum());
        taskTypes.add("forum");
      }
      if (infoCheck) {
        tasks.add(_getRecordList());
        taskTypes.add("record");
      }
      if (tasks.isNotEmpty) {
        final results = await Future.wait(tasks);
        for (int i = 0; i < results.length; i++) {
          final res = results[i];
          switch (taskTypes[i]) {
            case 'forum':
              if (res is FavBoardAndForumEntity) {
                for (var item in items) {
                  if (item is MapConfigGroupList && item.displayType == 5) {
                    item.forums.clear();
                    item.forums.addAll(res.returnList);
                  }
                }
              }
              break;
            case 'record':
              if (res is RecordListEntity && res.data.items.isNotEmpty) {
                if (items.isNotEmpty) {
                  items.add(1);
                }
                items.add("1");
                items.addAll(res.data.items);
                bool noMore = res.data.currentPage >= res.data.maxPage;
                setFinishState(noMore, true);
              } else {
                controller.finishRefresh(IndicatorResult.fail);
              }
              break;
          }
        }
      }
      loadState.value = LoadState.success;
    } catch (e) {
      errorMessage.value = "加载失败：$e";
      loadState.value = LoadState.failed;
      controller.finishRefresh(IndicatorResult.fail);
    }
  }

  Future<void> onLoadMore() async {
    if (!infoCheck) {
      controller.finishLoad(IndicatorResult.noMore);
      return;
    }
    try {
      final result = await _getRecordList();
      if (result == null) {
        controller.finishLoad(IndicatorResult.fail);
        return;
      }
      items.addAll(result.data.items);
      bool noMore = result.data.currentPage >= result.data.maxPage;
      setFinishState(noMore, false);
    } catch (e) {
      logger.d("加载失败$e");
      controller.finishLoad(IndicatorResult.fail);
    }
  }

  Future<List<dynamic>> _getMapConfig() async {
    final List<dynamic> list = [];
    final res = await api.getSiteMapConfig();
    if (res == null) {
      return list;
    }
    infoCheck = res.infoCheck;
    if (res.groupList.isNotEmpty) {
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
        if (item.displayType == 5 && item.hide == 0) {
          hasForum = true;
        }
      }
    }
    return list;
  }

  Future<FavBoardAndForumEntity?> _getMyForum() async {
    final res = await api.getFavBoardAndForumByType();
    if (res != null && res.code == 1) {
      return res;
    }
    return null;
  }

  Future<RecordListEntity?> _getRecordList() async {
    final res = await infoApi.recordList(page: page, cityId: cityId);
    if (res != null && res.code == 200) {
      page++;
      return res;
    }
    return null;
  }

  void setFinishState(bool noMore, bool isRefresh) {
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
