import 'package:flutter/foundation.dart';
import 'package:flutter_study/utils/logger_mixin.dart';

import '../api/network_manager.dart';

class BaseViewModel extends ChangeNotifier with LoggerMixin {
  String errorMessage = '';
  final api = NetworkManager().getApiClient();
}

typedef LoadMoreCallback = void Function(bool success, bool hasMore);
