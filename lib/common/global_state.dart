// 全局状态管理类（单例）
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class GlobalState {
  // 私有构造函数，禁止外部创建实例
  GlobalState._privateConstructor();

  // 唯一实例（懒加载，第一次访问时初始化）
  static final GlobalState instance = GlobalState._privateConstructor();

  // 动态数据（运行时获取，可更新）
  String? _token;
  int? _userId;
  String? _cityName;
  int? _systemTimeDiff;

  String get token => _token ?? "";

  int get userId => _userId ?? 0;

  int get systemTimeDiff => _systemTimeDiff ?? 0;

  String get cityName => _cityName ?? "";

  set token(String? newToken) {
    _token = newToken;
    _saveTokenToLocal(newToken);
  }

  set userId(int? userId) {
    _userId = userId;
    _saveUsernameToLocal(userId);
  }

  set cityName(String? cityName) {
    _cityName = cityName;
    _saveCityNameToLocal(cityName);
  }

  set systemTimeDiff(int? systemTimeDiff) {
    _systemTimeDiff = systemTimeDiff;
    _saveSystemTimeDiffToLocal(systemTimeDiff);
  }

  // ------------------- 本地存储辅助方法（可选）-------------------
  // 存储 token 到本地（使用 SharedPreferences）
  Future<void> _saveTokenToLocal(String? token) async {
    final prefs = await SharedPreferences.getInstance();
    if (token != null) {
      prefs.setString('token', token);
    } else {
      prefs.remove('token');
    }
  }

  Future<void> _saveUsernameToLocal(int? userId) async {
    final prefs = await SharedPreferences.getInstance();
    if (userId != null) {
      prefs.setInt('userId', userId);
    } else {
      prefs.remove('userId');
    }
  }

  Future<void> _saveCityNameToLocal(String? cityName) async {
    final prefs = await SharedPreferences.getInstance();
    if (cityName != null) {
      prefs.setString('cityName', cityName);
    } else {
      prefs.remove('cityName');
    }
  }

  Future<void> _saveSystemTimeDiffToLocal(int? systemTimeDiff) async {
    final prefs = await SharedPreferences.getInstance();
    if (systemTimeDiff != null) {
      prefs.setInt('systemTimeDiff', systemTimeDiff);
    } else {
      prefs.remove('systemTimeDiff');
    }
  }

  // 获取本地存储
  Future<void> getLocalStorage() async {
    final prefs = await SharedPreferences.getInstance();
    _token = prefs.getString('token');
    _userId = prefs.getInt('userId');
    _cityName = prefs.getString('cityName');
    _systemTimeDiff = prefs.getInt("systemTimeDiff");

    getDeviceParams();
  }

  // 清除本地存储
  Future<void> clearLocalStorage() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.remove('token');
    prefs.remove('userId');
    prefs.remove('cityName');
  }

  double screenWidth = 0.0;
  double statusBarHeight = 0.0;

  void getDeviceParams() {
    screenWidth = Get.mediaQuery.size.width;
    statusBarHeight = Get.mediaQuery.padding.top;
  }
}
