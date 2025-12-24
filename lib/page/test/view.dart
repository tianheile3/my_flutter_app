import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';

class TestPage extends StatelessWidget {
  TestPage({super.key});

  final TestLogic logic = Get.put(TestLogic());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("上传下载")),
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(30),
        child: Column(
          children: [
            SizedBox(height: 50),
            ElevatedButton(
              onPressed: () {
                logic.saveImage();
              },
              child: const Text("下载"),
            ),
            SizedBox(height: 50),
            ElevatedButton(
              onPressed: () {
                logic.pickFromGallery();
              },
              child: const Text("选择图片"),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                logic.uploadImage();
              },
              child: const Text("上传"),
            ),
            SizedBox(height: 20),
            Obx(() {
              return GridView.builder(
                shrinkWrap: true,
                itemCount: logic.images.length,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  childAspectRatio: 0.8,
                ),
                itemBuilder: (context, index) {
                  final item = logic.images[index];
                  return InkWell(
                    onTap: () {},
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: item.cover.isEmpty
                          ? Stack(
                              alignment: Alignment.center,
                              children: [
                                CachedNetworkImage(
                                  imageUrl: item.file!.origUrl,
                                  width: double.infinity,
                                  height: double.infinity,
                                  fit: BoxFit.cover,
                                  memCacheWidth: 200,
                                  memCacheHeight: 250,
                                ),
                                Icon(Icons.done, size: 25, color: Colors.white),
                              ],
                            )
                          : Stack(
                              alignment: Alignment.center,
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
            }),
          ],
        ),
      ),
    );
  }
}
