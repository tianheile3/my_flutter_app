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

  List<String> getDetail(MessageMsgList item) {
    List<String> list = [];
    String image = "";
    String name = "";
    String content = "";
    switch (item.dialogInfo.dialogType) {
      case 2:
        image = "assets/images/qunliao1.png";
        name = item.dialogInfo.group!.name;
        content = getContent(item);
        break;
      case 3:
        image = "assets/images/huitie1.png";
        name = "回复";
        break;
      case 4:
        image = "assets/images/dianzan1.png";
        name = "赞和收藏";
        break;
      case 5:
        image = "assets/images/aitewo1.png";
        name = "提到我";
        break;
      case 6:
        image = "assets/images/tixing1.png";
        name = "系统消息";
        break;
      case 7:
        image = "assets/images/xunzhang1.png";
        name = "勋章小助手";
        content = item.lastContent.contentObj.ext?.content ?? "";
        break;
      case 8:
        image = "assets/images/jinriredian1.png";
        name = "今日热点";
        content = item.summery;
        break;
      case 9:
        image = "assets/images/chuangzuo1.png";
        name = "创作者小助手";
        content = item.lastContent.content;
        break;
      case 10:
        image = "assets/images/xindong1.png";
        name = "心动与来访";
        content = item.lastContent.content;
        break;
      case 11:
        image = "assets/images/qianbao1.png";
        name = "钱包通知";
        content = item.lastContent.contentObj.ext?.remark ?? "";
        break;
      case 12:
        image = "assets/images/qianbao2.png";
        name = "红包审核管理";
        content = item.lastContent.contentObj.ext?.content ?? "";
        break;
      case 13:
        image = "assets/images/guanzhu1.png";
        name = "新增关注";
        break;
    }
    list.add(image);
    list.add(name);
    list.add(content);
    return list;
  }
}
