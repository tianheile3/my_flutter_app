import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';

class MessagePage extends StatelessWidget {
  MessagePage({super.key});

  final MessageLogic logic = Get.put(MessageLogic());

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
