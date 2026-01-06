import 'dart:convert';

import 'package:easy_refresh/easy_refresh.dart';
import 'package:flutter_study/api/response/dialog_entity.dart';
import 'package:flutter_study/common/constants.dart';
import 'package:flutter_study/common/global_state.dart';
import 'package:flutter_study/common/some_publish.dart';
import 'package:get/get.dart';

import 'state.dart';

class ChatLogic extends BaseController {
  final ChatState state = ChatState();

  final EasyRefreshController controller = EasyRefreshController(
    controlFinishRefresh: true,
    controlFinishLoad: true,
  );
  final Rx<LoadState> loadState = LoadState.refreshing.obs;

  @override
  void onInit() {
    super.onInit();
    var map = Get.arguments;
    state.chatName = map['chatName'] ?? "";
    state.toUid = map['toUid'] ?? 0;
    state.dialogId = map['dialogId'] ?? "";

    onRefresh();
  }

  @override
  void onClose() {
    controller.dispose();
    super.onClose();
  }

  Future<void> onRefresh() async {
    if (!state.hasMore) {
      return;
    }
    try {
      final res = await api.getDialogList(
        dialogId: state.dialogId,
        nextDate: state.nextDate,
      );
      if (res == null) {
        loadState.value = LoadState.failed;
        controller.finishRefresh(IndicatorResult.fail);
        return;
      }
      var temp = <DialogContentList>[];
      for (var item in res.contentList) {
        item.isSent = item.fromUser.uid == GlobalState.instance.userId;
        item.type = getType(item.content);
        temp.add(item);
      }
      state.items.insertAll(0, temp);
      state.nextDate = res.nextDate;

      loadState.value = LoadState.success;
      controller.finishRefresh(IndicatorResult.success);
    } catch (e) {
      errorMessage.value = '加载失败: $e';
      loadState.value = LoadState.failed;
      controller.finishRefresh(IndicatorResult.fail);
    }
  }

  String getShowAvatar(String avatar) {
    if (avatar.isNotEmpty && !avatar.contains("https")) {
      return "${Constants.BASE_AVATAR}$avatar";
    }
    return avatar;
  }

  dynamic getPic(String content) {
    if (content.isNotEmpty) {
      try {
        final jsonMap = json.decode(content) as Map<String, dynamic>;
        final picUrl = jsonMap['picUrl'] as String?;
        return picUrl;
      } catch (e) {
        logger.e('Failed to parse content: $e');
      }
    }
    return content;
  }

  MessageType getType(String content) {
    if (content.startsWith("{") &&
        content.endsWith("}") &&
        content.contains("picUrl")) {
      return MessageType.image;
    }
    return MessageType.text;
  }

  Future<void> sendMessage(String content, MessageType type) async {}
}
