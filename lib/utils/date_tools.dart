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

  static String getChatTime(String time) {
    try {
      // 解析输入的时间字符串
      DateTime date = DateTime.parse(time);

      // 获取当前时间
      DateTime now = DateTime.now().toUtc().add(Duration(hours: 8)); // GMT+8

      int currentYear = now.year;
      int currentMonth = now.month;
      int currentDay = now.day;

      // 提取输入时间的年月日
      int inputYear = date.year;
      int inputMonth = date.month;
      int inputDay = date.day;

      // 检查时间是否合法
      if (_isTimeLegal(time)) {
        if (inputYear == currentYear) {
          if (inputMonth == currentMonth && inputDay == currentDay) {
            // 今天：显示 HH:mm
            return DateFormat('HH:mm').format(date);
          } else {
            // 今年非今天：显示 MM-dd
            return DateFormat('MM-dd').format(date);
          }
        } else {
          // 非今年：显示 yyyy-MM-dd
          return DateFormat('yyyy-MM-dd').format(date);
        }
      }
      return time;
    } catch (e) {
      // 如果解析失败，返回原时间字符串
      return time;
    }
  }

  static bool _isTimeLegal(String time) {
    try {
      DateTime.parse(time);
      return true;
    } catch (e) {
      return false;
    }
  }
}
