import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

import '../common/custom_colors.dart';

class AddLinkDialog {
  static Future<LinkData?> showLinkDialog(BuildContext context) {
    return showDialog<LinkData?>(
      context: context,
      builder: (BuildContext dialogContext) {
        final linkController = TextEditingController(
          text: "https://pub.dev/packages/extended_text_field",
        );
        final nameController = TextEditingController(text: "测试测试");

        return AlertDialog(
          backgroundColor: Colors.white,
          contentPadding: EdgeInsetsGeometry.only(top: 10),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          title: Center(
            child: Text(
              "添加链接",
              style: TextStyle(fontSize: 14, color: CustomColors.textDark),
            ),
          ),
          content: Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            width: 300,
            height: 150, // AlertDialog 会自动包裹，这里控制内容高度
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: CustomColors.divider),
                      borderRadius: const BorderRadius.vertical(
                        top: Radius.circular(5),
                      ),
                    ),
                    child: Column(
                      children: [
                        TextField(
                          controller: linkController,
                          decoration: InputDecoration(
                            hintText: "点击帖子右上角[···],复制链接粘贴在此处",
                            border: InputBorder.none,
                            contentPadding: const EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 12,
                            ),
                            isDense: true,
                          ),
                          style: const TextStyle(
                            fontSize: 13,
                            color: CustomColors.textDark,
                          ),
                        ),
                        Divider(
                          height: 1,
                          thickness: 1,
                          color: CustomColors.divider,
                        ),
                        TextField(
                          controller: nameController,
                          decoration: InputDecoration(
                            hintText: "链接名称（选填）",
                            border: InputBorder.none,
                            contentPadding: const EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 12,
                            ),
                            isDense: true,
                          ),
                          style: const TextStyle(
                            fontSize: 13,
                            color: CustomColors.textDark,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  width: double.infinity,
                  height: 44,
                  decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide(color: CustomColors.divider, width: 1),
                    ),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextButton(
                          onPressed: () {
                            Get.back();
                          },
                          child: Text(
                            "取消",
                            style: TextStyle(
                              color: CustomColors.textLight,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                      VerticalDivider(
                        width: 1,
                        thickness: 1,
                        color: CustomColors.divider,
                      ),
                      Expanded(
                        child: TextButton(
                          onPressed: () {
                            final link = linkController.text.trim();
                            final name = nameController.text.trim();

                            if (link.isEmpty) {
                              Fluttertoast.showToast(msg: "请输入链接");
                              return;
                            }
                            final result = LinkData(link: link, name: name);
                            Get.back(result: result);
                          },
                          child: Text(
                            "确定",
                            style: TextStyle(
                              color: CustomColors.textDark,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class LinkData {
  final String link;
  final String? name;

  LinkData({required this.link, this.name});

  @override
  String toString() => 'LinkData(url: $link, name: $name)';
}
