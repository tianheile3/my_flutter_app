import 'package:logger/logger.dart';

class Log {
  static final _logger = Logger(printer: PrettyPrinter(methodCount: 1));

  // 静态方法
  static void d(String message) => _logger.d(message);

  static void i(String message) => _logger.i(message);

  static void w(String message) => _logger.w(message);
}

mixin LoggerMixin {
  Logger get logger => Log._logger;
}
