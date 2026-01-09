import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_refresh/easy_refresh.dart';
import 'package:flutter/material.dart';
import 'package:flutter_study/api/response/dialog_entity.dart';
import 'package:flutter_study/common/global_state.dart';
import 'package:flutter_study/common/logger_mixin.dart';
import 'package:flutter_study/common/some_publish.dart';
import 'package:flutter_study/utils/date_tools.dart';
import 'package:get/get.dart';

import 'logic.dart';
import 'state.dart';

class ChatPage extends StatelessWidget with LoggerMixin {
  ChatPage({super.key});

  final ChatLogic logic = Get.put(ChatLogic());
  final ChatState state = Get.find<ChatLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(state.chatName.isEmpty ? "消息" : state.chatName),
        backgroundColor: Colors.white,
        elevation: 0.5,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Get.back(),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.more_vert, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      backgroundColor: const Color(0xFFF5F5F5),
      body: Column(
        children: [
          Expanded(
            child: Obx(() {
              switch (logic.loadState.value) {
                case LoadState.refreshing:
                  return const Center(child: CircularProgressIndicator());
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
                    return const Center(child: Text("暂无消息"));
                  }
                  return EasyRefresh(
                    onRefresh: state.enableRefresh.value
                        ? logic.onRefresh
                        : null,
                    controller: logic.controller,
                    child: ListView.builder(
                      padding: const EdgeInsets.all(16),
                      itemCount: state.items.length,
                      controller: logic.scrollController,
                      itemBuilder: (context, index) {
                        final message = state.items[index];
                        DialogContentList? previousMessage;
                        if (index > 0) {
                          previousMessage = state.items[index - 1];
                        }
                        return _buildMessageItem(message, previousMessage);
                      },
                    ),
                  );
              }
            }),
          ),
          MessageInput(onSend: logic.sendMessage),
        ],
      ),
    );
  }

  Widget _buildMessageItem(
    DialogContentList message,
    DialogContentList? previousMessage,
  ) {
    bool shouldShowTime = true;
    if (previousMessage != null) {
      final timeDifference = DateTime.parse(
        message.createdAt,
      ).difference(DateTime.parse(previousMessage.createdAt));
      if (timeDifference.inMinutes < 10) {
        shouldShowTime = false;
      }
    }
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      child: Column(
        crossAxisAlignment: message.isSent
            ? CrossAxisAlignment.end
            : CrossAxisAlignment.start,
        children: [
          if (shouldShowTime)
            Container(
              width: double.infinity,
              margin: const EdgeInsets.only(bottom: 8),
              child: Text(
                DateTools.getChatSendTime(message.createdAt),
                style: const TextStyle(fontSize: 12, color: Colors.grey),
                textAlign: TextAlign.center,
              ),
            ),
          Row(
            mainAxisAlignment: message.isSent
                ? MainAxisAlignment.end
                : MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              if (!message.isSent) ...[
                ClipOval(
                  child: CachedNetworkImage(
                    imageUrl: logic.getShowAvatar(message.fromUser.avatar),
                    width: 40,
                    height: 40,
                    fit: BoxFit.cover,
                    placeholder: (context, url) => Icon(Icons.image, size: 40),
                    errorWidget: (context, url, error) =>
                        Icon(Icons.image, size: 40),
                    memCacheWidth: 80,
                    memCacheHeight: 80,
                  ),
                ),
                const SizedBox(width: 8),
              ],
              Column(
                crossAxisAlignment: message.isSent
                    ? CrossAxisAlignment.end
                    : CrossAxisAlignment.start,
                children: [
                  Container(
                    constraints: BoxConstraints(
                      maxWidth: GlobalState.instance.screenWidth * 0.7,
                    ),
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: message.isSent
                          ? const Color(0xFF07C160)
                          : Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: const Radius.circular(16),
                        topRight: const Radius.circular(16),
                        bottomLeft: message.isSent
                            ? const Radius.circular(16)
                            : const Radius.circular(4),
                        bottomRight: message.isSent
                            ? const Radius.circular(4)
                            : const Radius.circular(16),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withValues(alpha: 0.1),
                          spreadRadius: 1,
                          blurRadius: 2,
                          offset: const Offset(0, 1),
                        ),
                      ],
                    ),
                    child: message.type == MessageType.text
                        ? Text(
                            message.content,
                            style: TextStyle(
                              fontSize: 16,
                              color: message.isSent
                                  ? Colors.white
                                  : Colors.black,
                            ),
                          )
                        : ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: CachedNetworkImage(
                              imageUrl: logic.getPic(message.content),
                              width: 200,
                              height: 150,
                              fit: BoxFit.cover,
                              memCacheWidth: 200,
                              memCacheHeight: 150,
                            ),
                          ),
                  ),
                  const SizedBox(height: 4),
                  if (message.isSent)
                    const Icon(Icons.done_all, size: 12, color: Colors.grey),
                ],
              ),
              if (message.isSent) ...[
                const SizedBox(width: 8),
                ClipOval(
                  child: CachedNetworkImage(
                    imageUrl: logic.getShowAvatar(message.fromUser.avatar),
                    width: 40,
                    height: 40,
                    fit: BoxFit.cover,
                    placeholder: (context, url) => Icon(Icons.image, size: 40),
                    errorWidget: (context, url, error) =>
                        Icon(Icons.image, size: 40),
                    memCacheWidth: 80,
                    memCacheHeight: 80,
                  ),
                ),
              ],
            ],
          ),
        ],
      ),
    );
  }
}

class MessageInput extends StatefulWidget {
  final Function(String, MessageType) onSend;

  const MessageInput({super.key, required this.onSend});

  @override
  State<MessageInput> createState() => _MessageInputState();
}

class _MessageInputState extends State<MessageInput> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          top: BorderSide(color: Colors.grey.withValues(alpha: 0.2)),
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey.withValues(alpha: 0.1),
                borderRadius: BorderRadius.circular(20),
              ),
              child: TextField(
                controller: _controller,
                decoration: const InputDecoration(
                  hintText: '输入消息...',
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 8,
                  ),
                ),
                maxLines: null,
              ),
            ),
          ),
          const SizedBox(width: 8),
          if (_controller.text.trim().isNotEmpty)
            IconButton(
              onPressed: () {
                widget.onSend(_controller.text.trim(), MessageType.text);
                _controller.clear();
              },
              icon: const Icon(Icons.send, color: Color(0xFF07C160)),
            ),
          if (_controller.text.trim().isEmpty) const SizedBox(width: 48),
        ],
      ),
    );
  }
}
