import 'package:flutter/foundation.dart';
import 'package:flutter_study/utils/logger_mixin.dart';

class BaseViewModel extends ChangeNotifier with LoggerMixin {
  String errorMessage = '';
}

typedef LoadMoreCallback = void Function(bool success, bool hasMore);
