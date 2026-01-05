import 'package:easy_refresh/easy_refresh.dart';
import 'package:flutter_study/api/response/message_entity.dart';
import 'package:flutter_study/common/constants.dart';
import 'package:flutter_study/common/some_publish.dart';
import 'package:get/get.dart';

class MessageLogic extends BaseController {
  final EasyRefreshController controller = EasyRefreshController(
    controlFinishRefresh: true,
    controlFinishLoad: true,
  );
  final Rx<LoadState> loadState = LoadState.refreshing.obs;

  double contentWidth = 0.0;

  String? nextDate;
  final int limit = 30;
  final RxList<MessageMsgList> items = <MessageMsgList>[].obs;

  @override
  void onInit() {
    super.onInit();
    contentWidth = Get.mediaQuery.size.width - (30 + 40 + 15);
    onRefresh();
  }

  @override
  void onClose() {
    controller.dispose();
    super.onClose();
  }

  Future<void> onRefresh() async {
    items.clear();
    loadState.value = LoadState.refreshing;
    try {
      final res = await api.getList(limit: limit, nextNew: true);
      if (res == null) {
        loadState.value = LoadState.failed;
        controller.finishRefresh(IndicatorResult.fail);
        return;
      }
      items.addAll(res.msgList);
      loadState.value = LoadState.success;
    } catch (e) {
      errorMessage.value = '加载失败: $e';
      loadState.value = LoadState.failed;
      controller.finishRefresh(IndicatorResult.fail);
    }
  }

  Future<void> onLoadMore() async {}

  void setFinishState(MessageEntity res, bool isRefresh) {
    bool noMore = res.msgList.length < limit;
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

  String getContent(MessageMsgList item) {
    if (item.lastContent.content.startsWith("{") &&
        item.lastContent.content.endsWith("}") &&
        item.lastContent.content.contains("picUrl")) {
      return "图片";
    }
    return item.lastContent.content;
  }

  String getShowAvatar(MessageMsgList item) {
    var avatar = item.dialogInfo.user!.avatar;
    if (avatar.isNotEmpty && !avatar.contains("https")) {
      return "${Constants.BASE_AVATAR}$avatar";
    }
    return avatar;
  }
}
