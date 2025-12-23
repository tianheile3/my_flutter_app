import 'package:flutter_study/main.dart';
import 'package:flutter_study/page/login/view.dart';
import 'package:flutter_study/page/main_home/view.dart';
import 'package:flutter_study/page/test/view.dart';
import 'package:flutter_study/page/webview/view.dart';
import 'package:get/get.dart';

class MyRouteConfig {
  static const String main = "/";

  //登录
  static const String login = "/login";

  //首页
  static const String mainHome = "/mainHome";
  static const String homeTab = "/homeTab";
  static const String categoryTab = "/categoryTab";
  static const String mineTab = "/mineTab";

  //webview
  static const String webview = "/webview";

  //测试
  static const String test = "/test";

  //我家
  static const String commentList = "/commentList";
  static const String gatherList = "/gatherList";
  static const String postList = "/postList";

  //合集
  static const String gather = "/gather";

  static final List<GetPage> getPages = [
    GetPage(name: main, page: () => MyApp()),
    GetPage(name: login, page: () => LoginPage()),
    GetPage(name: mainHome, page: () => MainHomePage()),
    GetPage(name: webview, page: () => WebviewPage()),
    GetPage(name: test, page: () => TestPage()),
    // GetPage(name: main, page: () => MyApp()),
    // GetPage(name: main, page: () => MyApp()),
    // GetPage(name: main, page: () => MyApp()),
    // GetPage(name: main, page: () => MyApp()),
    // GetPage(name: main, page: () => MyApp()),
  ];
}
