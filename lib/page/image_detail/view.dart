import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';

class ImageDetailPage extends StatelessWidget {
  ImageDetailPage({super.key});

  final ImageDetailLogic logic = Get.put(ImageDetailLogic());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          // 图片预览
          Obx(
            () => PageView.builder(
              itemCount: logic.imageUrls.length,
              controller: PageController(initialPage: logic.currentIndex.value),
              onPageChanged: (index) {
                logic.updateCurrentIndex(index);
              },
              itemBuilder: (context, index) {
                return InteractiveViewer(
                  panEnabled: true,
                  minScale: 0.5,
                  maxScale: 3.0,
                  child: Image.network(
                    logic.imageUrls[index],
                    fit: BoxFit.contain,
                    loadingBuilder: (context, child, loadingProgress) {
                      if (loadingProgress == null) return child;
                      return Center(
                        child: CircularProgressIndicator(
                          value: loadingProgress.expectedTotalBytes != null
                              ? loadingProgress.cumulativeBytesLoaded /
                                    loadingProgress.expectedTotalBytes!
                              : null,
                        ),
                      );
                    },
                    errorBuilder: (context, error, stackTrace) {
                      return Center(
                        child: Icon(
                          Icons.error_outline,
                          color: Colors.white,
                          size: 48,
                        ),
                      );
                    },
                  ),
                );
              },
            ),
          ),
          // 顶部导航栏
          Positioned(
            top: 40,
            left: 20,
            child: GestureDetector(
              onTap: () {
                Get.back();
              },
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.black.withValues(alpha: 0.5),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Icon(Icons.close, color: Colors.white, size: 24),
              ),
            ),
          ),
          // 底部页码指示
          Positioned(
            bottom: 40,
            left: 0,
            right: 0,
            child: Obx(
              () => Center(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  decoration: BoxDecoration(
                    color: Colors.black.withValues(alpha: 0.5),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    '${logic.currentIndex.value + 1}/${logic.imageUrls.length}',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
