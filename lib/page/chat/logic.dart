import 'package:easy_refresh/easy_refresh.dart';
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
    state.toUid = map['toUid'] ?? "";
    state.dialogId = map['dialogId'] ?? "";

    onRefresh();
  }

  @override
  void onClose() {
    controller.dispose();
    super.onClose();
  }

  Future<void> onRefresh() async {}
}
