import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_study/common/custom_colors.dart';
import 'package:get/get.dart';

import '../../models/media_model.dart';
import 'logic.dart';
import 'state.dart';

class PostThreadPage extends StatelessWidget {
  PostThreadPage({super.key});

  final PostThreadLogic logic = Get.put(PostThreadLogic());
  final PostThreadState state = Get.find<PostThreadLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("发帖"),
        actions: [
          TextButton(
            onPressed: () {
              logic.doPost();
            },
            child: Text("发布"),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ConstrainedBox(
                      constraints: const BoxConstraints(minHeight: 200),
                      child: Column(
                        children: [
                          _buildContentInputField(),
                          _buildContentLimitHint(),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    _buildMediaGridView(),
                    SizedBox(height: 10),
                    _buildGatherButton(),
                    SizedBox(height: 60),
                  ],
                ),
              ),
            ),
          ),
          _buildBottomWidget(context),
        ],
      ),
    );
  }

  Widget _buildContentInputField() {
    return TextField(
      controller: logic.controller,
      // 初始显示1行
      minLines: 1,
      // 关键：设为null实现无限自动换行
      maxLines: null,
      // 回车触发换行
      textInputAction: TextInputAction.newline,
      // 多行文本键盘
      keyboardType: TextInputType.multiline,
      decoration: InputDecoration(
        hintText: "写15字以上，参加合适的话题，会更容易被推荐哦",
        hintStyle: TextStyle(color: CustomColors.hintColor, fontSize: 15),
        border: InputBorder.none,
      ),
      style: TextStyle(color: CustomColors.textDark, fontSize: 15),
    );
  }

  Widget _buildContentLimitHint() {
    return Obx(() {
      if (state.textLength > state.maxLength) {
        return Container(
          width: double.infinity,
          padding: EdgeInsets.only(top: 10),
          child: Text(
            "内容字数不可超过300字哦~",
            style: TextStyle(color: CustomColors.badge, fontSize: 12),
          ),
        );
      } else {
        return SizedBox.shrink();
      }
    });
  }

  Widget _buildMediaGridView() {
    return Obx(() {
      return GridView.builder(
        shrinkWrap: true,
        itemCount: state.imageList.length,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          childAspectRatio: 1,
        ),
        itemBuilder: (context, index) {
          final item = state.imageList[index];
          switch (item.itemType) {
            case 0:
              return _buildImageItem(item);
            case 1:
              return _buildVideoItem(item);
            case 2:
            case 3:
              return _buildAddMediaButton(item);
            default:
              return Container();
          }
        },
      );
    });
  }

  Widget _buildAddMediaButton(MediaModel item) {
    return DottedBorder(
      options: RoundedRectDottedBorderOptions(
        radius: Radius.circular(8),
        dashPattern: const [5, 5],
        strokeWidth: 1,
        color: CustomColors.hintColor,
      ),
      child: GestureDetector(
        onTap: () {
          if (item.itemType == 2) {
            logic.pickImageFromGallery();
          } else {
            logic.pickVideoFromGallery();
          }
        },
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                width: 25,
                item.itemType == 2
                    ? "assets/images/add_pic.png"
                    : "assets/images/add_video.png",
              ),
              SizedBox(height: 8),
              Text(
                item.itemType == 2 ? "上传图片" : "上传视频",
                style: TextStyle(color: CustomColors.textLight, fontSize: 12),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildImageItem(MediaModel item) {
    return GestureDetector(
      onTap: () {},
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Stack(
          alignment: Alignment.bottomRight,
          children: [
            Image.file(
              File(item.cover),
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
            ),
            Obx(() {
              return Icon(
                item.status.value == "uploading"
                    ? Icons.cloud_upload
                    : (item.status.value == "fail" ? Icons.close : Icons.done),
                size: 25,
                color: Colors.white,
              );
            }),
          ],
        ),
      ),
    );
  }

  Widget _buildVideoItem(MediaModel item) {
    return GestureDetector(
      onTap: () {},
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Stack(
          alignment: Alignment.bottomRight,
          children: [
            Image.file(
              File(item.cover),
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
            ),
            Align(
              alignment: Alignment.center,
              child: Icon(Icons.play_circle, size: 30, color: Colors.white),
            ),
            Obx(() {
              return Icon(
                item.status.value == "uploading"
                    ? Icons.cloud_upload
                    : (item.status.value == "fail" ? Icons.close : Icons.done),
                size: 25,
                color: Colors.white,
              );
            }),
          ],
        ),
      ),
    );
  }

  Widget _buildGatherButton() {
    return Obx(() {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        height: 24,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          border: Border.all(
            width: 1,
            color: Colors.grey,
            style: BorderStyle.solid,
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              state.gather.value,
              style: TextStyle(color: CustomColors.textLight, fontSize: 11),
            ),
            SizedBox(width: 10),
            Icon(Icons.arrow_forward_ios, color: Colors.grey, size: 10),
          ],
        ),
      );
    });
  }

  Widget _buildBottomWidget(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        border: Border(top: BorderSide(color: Colors.grey, width: 1)),
      ),
      child: Row(
        children: [
          // 上传图片
          _buildItem(
            icon: Icons.cloud_upload,
            label: '上传',
            onTap: () {
              logic.uploadMedia();
            },
          ),
          // 好友
          _buildItem(icon: Icons.person, label: '好友', onTap: () {}),
          // 链接
          _buildItem(
            icon: Icons.link,
            label: '链接',
            onTap: () {
              logic.showLinkDialog(context);
            },
          ),
        ],
      ),
    );
  }

  Widget _buildItem({
    required IconData icon,
    required String label,
    required VoidCallback onTap,
  }) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 20, color: Colors.grey),
            const SizedBox(width: 5),
            Text(
              label,
              style: const TextStyle(color: Colors.grey, fontSize: 14),
            ),
          ],
        ).paddingSymmetric(vertical: 8), // 垂直居中微调
      ),
    );
  }
}
