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
    try {
      final res = await api.getDialogList(
        dialogId: state.dialogId,
        limit: state.limit,
      );
      if (res == null) {
        loadState.value = LoadState.failed;
        return;
      }
      var temp = <DialogContentList>[];
      for (var item in res.contentList) {
        item.isSent = item.fromUser.uid == GlobalState.instance.userId;
        item.type = getType(item.content);
        temp.add(item);
      }
      state.items.addAll(temp.reversed);
      if (temp.length < state.limit || res.nextDate == null) {
        controller.finishLoad(IndicatorResult.noMore);
      }
      state.nextDate = res.nextDate;
      loadState.value = LoadState.success;
    } catch (e) {
      errorMessage.value = '加载失败: $e';
      loadState.value = LoadState.failed;
    }
  }

  Future<void> onLoadMore() async {
    try {
      final res = await api.getDialogList(
        dialogId: state.dialogId,
        nextDate: state.nextDate,
        limit: state.limit,
      );
      if (res == null) {
        controller.finishLoad(IndicatorResult.fail);
        return;
      }
      var temp = <DialogContentList>[];
      for (var item in res.contentList) {
        item.isSent = item.fromUser.uid == GlobalState.instance.userId;
        item.type = getType(item.content);
        temp.add(item);
      }
      state.items.addAll(temp);
      state.nextDate = res.nextDate;
      if (temp.length < state.limit) {
        controller.finishLoad(IndicatorResult.noMore);
      } else {
        controller.finishLoad(IndicatorResult.success);
      }
    } catch (e) {
      controller.finishLoad(IndicatorResult.fail);
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

  bool shouldShowTime(
    DialogContentList message,
    DialogContentList? previousMessage,
  ) {
    bool shouldShowTime = true;
    if (previousMessage != null) {
      final timeDifference = DateTime.parse(
        message.createdAt,
      ).difference(DateTime.parse(previousMessage.createdAt));
      if (timeDifference.inMinutes.abs() < 10) {
        shouldShowTime = false;
      }
    }
    return shouldShowTime;
  }

  Future<void> sendMessage(String content, MessageType type) async {}
}
