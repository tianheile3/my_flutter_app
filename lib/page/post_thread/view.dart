import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_study/common/custom_colors.dart';
import 'package:get/get.dart';

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
      appBar: AppBar(title: const Text("发帖")),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ConstrainedBox(
              constraints: const BoxConstraints(minHeight: 200),
              child: Obx(() {
                return Column(
                  children: [
                    TextField(
                      controller: logic.controller,
                      decoration: InputDecoration(
                        hintText: "写15字以上，参加合适的话题，会更容易被推荐哦",
                        hintStyle: TextStyle(
                          color: CustomColors.hintColor,
                          fontSize: 15,
                        ),
                      ),
                      style: TextStyle(
                        color: CustomColors.textDark,
                        fontSize: 15,
                      ),
                    ),
                    if (logic.controller.text.length > 300)
                      Container(
                        padding: EdgeInsets.only(top: 10),
                        child: Text(
                          "内容字数不可超过300字哦~",
                          style: TextStyle(
                            color: CustomColors.badge,
                            fontSize: 12,
                          ),
                        ),
                      ),
                  ],
                );
              }),
            ),
            SizedBox(height: 10),
            _imageWidget(),

          ],
        ),
      ),
    );
  }

  Widget _imageWidget() {
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
        return InkWell(
          onTap: () {},
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Image.file(
                  File(item.path),
                  width: double.infinity,
                  height: double.infinity,
                  fit: BoxFit.cover,
                ),
                Obx(() {
                  return Icon(
                    item.status.value == "loading"
                        ? Icons.file_upload
                        : (item.status.value == "fail"
                              ? Icons.close
                              : Icons.done),
                    size: 25,
                    color: Colors.white,
                  );
                }),
              ],
            ),
          ),
        );
      },
    );
  }
}
