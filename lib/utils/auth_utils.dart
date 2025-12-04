import 'package:flutter_study/utils/common_utils.dart';
import 'package:flutter_study/utils/constants.dart';
import 'package:flutter_study/utils/crypto_utils.dart';
import 'package:flutter_study/utils/global_state.dart';

class AuthUtils {
  /// 构建 19楼 OAuth 登录所需的公共表单参数
  static Map<String, dynamic> buildCommonFormParams() {
    final time = CommonUtils.compareTime().toString();
    final clientSecret = CryptoUtils.md5Encode(
      Constants.CLIENT_SECRET_KEY + time,
    );
    return {
      'client_id': Constants.CLIENT_ID,
      'client_secret': clientSecret,
      'access_token': GlobalState.instance.token,
      'current_time': time,
      'sign': '1',
      'ver': Constants.CLIENT_VER,
      'device': '19LouAPP-30f8-0a12-ffff-ffffca01fdf4', // 建议统一设备 ID
      'uid': GlobalState.instance.userId.toString(),
      'cityName': GlobalState.instance.cityName,
      'simple': true,
    };
  }
}
