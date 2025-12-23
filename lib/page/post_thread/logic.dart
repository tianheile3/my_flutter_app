import 'package:flutter/cupertino.dart';

import '../../common/some_publish.dart';
import 'state.dart';

class PostThreadLogic extends BaseController {
  final PostThreadState state = PostThreadState();
  final TextEditingController controller = TextEditingController();

  @override
  void onInit() {
    super.onInit();
    logger.d("state: ${state.fid} ${state.cityName}");
  }

  @override
  void onClose() {
    controller.dispose();
    super.onClose();
  }
}
