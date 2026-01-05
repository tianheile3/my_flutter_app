import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_refresh/easy_refresh.dart';
import 'package:flutter/material.dart';
import 'package:flutter_study/api/response/message_entity.dart';
import 'package:flutter_study/common/custom_colors.dart';
import 'package:flutter_study/common/some_publish.dart';
import 'package:flutter_study/utils/date_tools.dart';
import 'package:get/get.dart';

import 'logic.dart';

class MessagePage extends StatelessWidget {
  MessagePage({super.key});

  final MessageLogic logic = Get.put(MessageLogic());
  final itemHeight = 60.0;

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
            if (logic.items.isEmpty) {
              return Center(child: Text("暂无消息"));
            }
            return EasyRefresh(
              onRefresh: logic.onRefresh,
              onLoad: logic.onLoadMore,
              controller: logic.controller,
              child: ListView.separated(
                itemCount: logic.items.length,
                itemBuilder: (context, index) {
                  final item = logic.items[index];
                  switch (item.dialogInfo.dialogType) {
                    case 1:
                      return _buildPrivateMessage(item);
                    case 2:
                      return _buildGroupChat(item);
                    case 3:
                    case 4:
                    case 5:
                    case 6:
                    case 13:
                      return _buildNotice(item);
                    default:
                      return _buildOther(item);
                  }
                },
                // 分隔线构建器（新增）
                separatorBuilder: (context, index) {
                  return Container(
                    height: 1,
                    margin: EdgeInsets.symmetric(horizontal: 15),
                    color: CustomColors.divider,
                  );
                },
              ),
            );
        }
      }),
    );
  }

  Widget _buildPrivateMessage(MessageMsgList item) {
    return Container(
      padding: EdgeInsetsGeometry.symmetric(horizontal: 15, vertical: 8),
      height: itemHeight,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            children: [
              ClipOval(
                child: CachedNetworkImage(
                  imageUrl: logic.getShowAvatar(item),
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
              if (item.newCount > 0)
                Positioned(
                  right: 0,
                  top: 0,
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: item.newCount > 9 ? 5.0 : 5.0, // 两位数增加水平内边距
                      vertical: 3.0,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.redAccent,
                      borderRadius: BorderRadius.circular(
                        item.newCount > 9 ? 10.0 : 12.0,
                      ),
                    ),
                    child: Text(
                      item.newCount > 99 ? "99+" : item.newCount.toString(),
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 9,
                        height: 1.0,
                      ),
                    ),
                  ),
                ),
            ],
          ),
          SizedBox(width: 15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: logic.contentWidth,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          item.dialogInfo.user!.userName,
                          style: TextStyle(
                            color: CustomColors.textDark,
                            fontSize: 16,
                          ),
                        ),
                        if (item.dialogInfo.user!.gid == "10")
                          Image.asset(
                            "assets/images/chaoban.png",
                            width: 28,
                            height: 14,
                          ),
                      ],
                    ),
                    Text(
                      DateTools.getChatTime(
                        item.lastContent.createdAt.isEmpty
                            ? item.createdAt
                            : item.lastContent.createdAt,
                      ),
                      style: TextStyle(
                        color: CustomColors.textDark,
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: logic.contentWidth,
                child: Text(
                  logic.getContent(item),
                  style: TextStyle(color: CustomColors.textLight, fontSize: 13),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildGroupChat(MessageMsgList item) {
    return Container(
      padding: EdgeInsetsGeometry.symmetric(horizontal: 15, vertical: 8),
      height: itemHeight,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            children: [
              CircleAvatar(
                child: Image.asset(
                  "assets/images/group_chat.png",
                  width: 40,
                  height: 40,
                ),
              ),
              if (item.newCount > 0)
                Positioned(
                  right: 0,
                  top: 0,
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: item.newCount > 9 ? 5.0 : 5.0, // 两位数增加水平内边距
                      vertical: 3.0,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.redAccent,
                      borderRadius: BorderRadius.circular(
                        item.newCount > 9 ? 10.0 : 12.0,
                      ),
                    ),
                    child: Text(
                      item.newCount > 99 ? "99+" : item.newCount.toString(),
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 9,
                        height: 1.0,
                      ),
                    ),
                  ),
                ),
            ],
          ),
          SizedBox(width: 15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: logic.contentWidth,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      item.dialogInfo.group!.name,
                      style: TextStyle(
                        color: CustomColors.textDark,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      DateTools.getChatTime(
                        item.lastContent.createdAt.isEmpty
                            ? item.createdAt
                            : item.lastContent.createdAt,
                      ),
                      style: TextStyle(
                        color: CustomColors.textDark,
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: logic.contentWidth,
                child: Text(
                  logic.getContent(item),
                  style: TextStyle(color: CustomColors.textLight, fontSize: 13),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildNotice(MessageMsgList item) {
    return Container(height: itemHeight, color: Colors.green);
  }

  Widget _buildOther(MessageMsgList item) {
    return Container(height: itemHeight, color: Colors.blue);
  }
}
