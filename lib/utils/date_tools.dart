import 'package:intl/intl.dart';

class DateTools {
  /// 时间格式化工具方法
  /// withMinute 为true时显示到分: 2022-08-21 12:40
  /// 为false时显示到日: 2022-08-21
  static String getDayBefore(String startTime, bool withMinute) {
    if (startTime.isEmpty) {
      return "";
    }

    // 定义时间格式
    final format = DateFormat("yyyy-MM-dd HH:mm:ss");
    try {
      // 解析开始时间
      final startDate = format.parse(startTime);
      // 获取当前时间(秒级时间戳转毫秒)
      final current = DateTime.now().millisecondsSinceEpoch;
      final start = startDate.millisecondsSinceEpoch;
      final diff = current - start;

      // 毫秒常量定义
      const int millisInMinute = 60 * 1000;
      const int millisInHour = 60 * millisInMinute;
      const int millisInDay = 24 * millisInHour;

      // 计算天数差
      final day = diff ~/ millisInDay;
      if (day > 0) {
        if (day < 7) {
          return "$day天前";
        } else {
          // 处理跨天情况
          final currentDate = DateTime.fromMillisecondsSinceEpoch(current);
          if (startDate.year == currentDate.year) {
            // 同年
            return withMinute
                ? DateFormat("MM-dd HH:mm").format(startDate)
                : DateFormat("MM-dd").format(startDate);
          } else {
            // 不同年
            return withMinute
                ? DateFormat("yyyy-MM-dd HH:mm").format(startDate)
                : DateFormat("yyyy-MM-dd").format(startDate);
          }
        }
      }

      // 计算小时差
      final hour = diff ~/ millisInHour;
      if (hour > 0) {
        return "$hour小时前";
      }

      // 计算分钟差
      final min = diff ~/ millisInMinute;
      if (min < 1) {
        return "刚刚";
      }
      return "$min分钟前";
    } catch (e) {
      // 解析失败时返回原始字符串
      return startTime;
    }
  }
}
