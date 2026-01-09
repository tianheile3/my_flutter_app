import 'package:get/get.dart';

class ImageDetailLogic extends GetxController {
  final imageUrls = <String>[].obs;
  final currentIndex = 0.obs;

  @override
  void onInit() {
    super.onInit();
    var params = Get.arguments;
    if (params != null) {
      imageUrls.addAll(params['imageUrls'] ?? []);
      currentIndex.value = params['index'] ?? 0;
    }
  }

  void initData(List<String> urls, int initialIndex) {
    imageUrls.assignAll(urls);
    currentIndex.value = initialIndex;
  }

  void updateCurrentIndex(int index) {
    currentIndex.value = index;
  }
}
