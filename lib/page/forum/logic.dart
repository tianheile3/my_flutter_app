import 'package:flutter_study/common/some_publish.dart';
import 'package:get/get.dart';

import 'state.dart';

class ForumLogic extends BaseController {
  final ForumState state = ForumState();

  @override
  void onInit() {
    super.onInit();
    var map = Get.arguments;
    state.tid = map['tid'] ?? "";
    if (state.tid.isEmpty) {
      return;
    }
  }
}
