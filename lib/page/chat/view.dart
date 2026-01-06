import 'package:easy_refresh/easy_refresh.dart';
import 'package:flutter/material.dart';
import 'package:flutter_study/common/some_publish.dart';
import 'package:get/get.dart';

import 'logic.dart';
import 'state.dart';

class ChatPage extends StatelessWidget {
  ChatPage({super.key});

  final ChatLogic logic = Get.put(ChatLogic());
  final ChatState state = Get.find<ChatLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("消息")),
      backgroundColor: Colors.white,
      body: Obx(() {
        switch (logic.loadState.value) {
          case LoadState.refreshing:
            return Scaffold(body: Center(child: CircularProgressIndicator()));
          case LoadState.failed:
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  logic.errorMessage.value,
                  style: const TextStyle(color: Colors.red),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: logic.onRefresh,
                  child: const Text('重试'),
                ),
              ],
            );
          case LoadState.success:
            if (state.items.isEmpty) {
              return Center(child: Text("暂无消息"));
            }
            return EasyRefresh(
              onRefresh: logic.onRefresh,
              controller: logic.controller,
              child: ListView.builder(
                itemCount: state.items.length,
                itemBuilder: (context, index) {
                  final item = state.items[index];
                  return Container();
                },
              ),
            );
        }
      }),
    );
  }
}
