import 'package:flutter_study/common/logger_mixin.dart';
import 'package:get/get.dart';

import '../api/network_manager.dart';

typedef LoadMoreCallback = void Function(bool success, bool hasMore);

enum LoadState {
  refreshing, // 加载中
  success, // 加载成功
  failed, // 加载失败
}

class BaseController extends GetxController with LoggerMixin {
  Rx<String> errorMessage = ''.obs;
  final api = NetworkManager().getApiClient();
}
