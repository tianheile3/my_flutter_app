import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart' as ui;
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CommonUtils {
  /// 计算并返回校准后的当前时间戳（单位：秒）
  /// 逻辑：本地时间 + (服务器时间 - 本地时间) = 服务器时间
  static int compareTime() {
    // 1. 获取当前手机时间（毫秒级）
    final dateTime = DateTime.now();
    final int dateTimeMillis = dateTime.millisecondsSinceEpoch;
    return (dateTimeMillis / 1000).toInt();

    // // 2. 获取存储的时间差值
    // final int? diffTime = GlobalState.instance.systemTimeDiff;
    //
    // // 3. 根据差值计算最终时间戳
    // int currentTimeMillis;
    // if (diffTime == null || diffTime == 0) {
    //   // 如果差值为0或未设置，则使用手机原始时间
    //   currentTimeMillis = dateTimeMillis;
    // } else {
    //   // 否则，使用校准后的时间
    //   currentTimeMillis = dateTimeMillis + diffTime;
    // }
    //
    // // 4. 转换为秒级时间戳并返回
    // return (currentTimeMillis / 1000).toInt();
  }

  /// 辅助方法：收集设备信息并生成一个简短的字符串，类似 Java 中的 m_szDevIDShort
  static Future<String> getDeviceInfoShortString(BuildContext context) async {
    DeviceInfoPlugin deviceInfoPlugin = DeviceInfoPlugin();
    String info = "";
    try {
      if (Theme.of(context).platform == TargetPlatform.android) {
        AndroidDeviceInfo androidInfo = await deviceInfoPlugin.androidInfo;
        info += (androidInfo.board.length % 10).toString();
        info += (androidInfo.brand.length % 10).toString();
        // cpuAbi 在较新的Android版本中已废弃，且返回列表，这里取第一个或用0代替
        info +=
            ((androidInfo.supportedAbis.isNotEmpty
                        ? androidInfo.supportedAbis.first.length
                        : 0) %
                    10)
                .toString();
        info += (androidInfo.device.length % 10).toString();
        info += (androidInfo.display.length % 10).toString();
        // host, id, user 通常无法直接获取，用0代替
        info += "0"; // host
        info += "0"; // id
        info += (androidInfo.manufacturer.length % 10).toString();
        info += (androidInfo.model.length % 10).toString();
        info += (androidInfo.product.length % 10).toString();
        // tags 通常无法直接获取，用0代替
        info += "0"; // tags
        info += "0"; // type
        info += "0"; // user
      } else if (Theme.of(context).platform == TargetPlatform.iOS) {
        IosDeviceInfo iosInfo = await deviceInfoPlugin.iosInfo;
        // 对于 iOS，我们使用一些不同的但同样能代表设备型号的信息
        info += (iosInfo.model.length % 10).toString();
        info += (iosInfo.utsname.machine.length % 10).toString();
        info += (iosInfo.systemName.length % 10).toString();
        info += (iosInfo.systemVersion.length % 10).toString();
        // 填充剩余的位数以保持长度与Android一致
        info += "000000";
      }
    } catch (e) {
      // 如果获取设备信息失败，返回一个默认的字符串
      return "000000000000";
    }
    // 确保总长度至少为12位，不足则补0
    if (info.length < 12) {
      info = info.padRight(12, '0');
    }
    // 取前12位
    return "35${info.substring(0, 12)}";
  }

  /// 格式化数字为万单位（如12000 → 1.2万，9999 → 9999）
  static String getMillon(String param) {
    try {
      int num = int.parse(param);
      if (num > 10000) {
        double dTid = num / 10000;
        // 使用NumberFormat格式化保留1位小数
        final formatter = NumberFormat("0.0");
        return "${formatter.format(dTid)}万";
      } else {
        return num.toString();
      }
    } catch (e) {
      return "";
    }
  }

  static double calculateTextHeight({
    required String text,
    required TextStyle style,
    double? maxWidth, // 如果文本需要换行，必须指定最大宽度
    int? maxLines,
  }) {
    final TextPainter textPainter = TextPainter(
      text: TextSpan(text: text, style: style),
      textDirection: ui.TextDirection.ltr,
      // 或 rtl
      textAlign: TextAlign.left,
      maxLines: maxLines,
    );

    if (maxWidth != null) {
      textPainter.layout(maxWidth: maxWidth);
    } else {
      textPainter.layout(); // 不限制宽度（单行）
    }

    return textPainter.size.height;
  }
}
