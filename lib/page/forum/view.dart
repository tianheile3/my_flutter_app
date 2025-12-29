import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';
import 'state.dart';

class ForumPage extends StatelessWidget {
  ForumPage({super.key});

  final ForumLogic logic = Get.put(ForumLogic());
  final ForumState state = Get.find<ForumLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
