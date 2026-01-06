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

  static String getChatSendTime(String time) {
    // 1. 定义输入格式（假设输入是 "yyyy-MM-dd HH:mm" 或类似）
    final inputFormat = DateFormat('yyyy-MM-dd HH:mm');

    try {
      final date = inputFormat.parse(time);

      // 2. 获取当前时间（东八区，即北京时间）
      final now = DateTime.now();
      final beijingTime = now.toUtc().add(
        const Duration(hours: 8),
      ); // 手动转为 GMT+8

      final year = beijingTime.year;
      final month = beijingTime.month; // Dart 中 month 是 1～12
      final day = beijingTime.day;

      final inputYear = date.year;
      final inputMonth = date.month;
      final inputDay = date.day;

      // 3. 判断是否合法（这里简化：只要能解析就认为合法）
      // 如果你有额外的合法性校验（如非空、格式等），可在此加

      if (inputYear == year) {
        if (inputMonth == month && inputDay == day) {
          // 今天 → 只显示时分
          return DateFormat('HH:mm').format(date);
        } else {
          // 今年但不是今天 → 显示月日
          return DateFormat('MM-dd').format(date);
        }
      } else {
        // 往年 → 显示完整日期
        return DateFormat('yyyy-MM-dd').format(date);
      }
    } catch (e) {
      // 解析失败，返回原字符串（与 Java 逻辑一致）
      return time;
    }
  }
}
