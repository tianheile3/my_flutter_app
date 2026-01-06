import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';
import 'state.dart';

class ChatPage extends StatelessWidget {
  ChatPage({super.key});

  final ChatLogic logic = Get.put(ChatLogic());
  final ChatState state = Get.find<ChatLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Center(child: Text("私信"));
  }
}
