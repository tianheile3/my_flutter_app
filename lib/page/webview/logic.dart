import 'package:flutter_study/base/some_publish.dart';
import 'package:get/get.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebviewLogic extends BaseController {
  late final WebViewController controller = WebViewController();
  String url = '';

  @override
  void onInit() {
    super.onInit();
    var map = Get.arguments;
    url = map['url'] ?? "";
    if (url.isNotEmpty) {
      controller
        // 启用JavaScript（默认禁用，需手动开启）
        ..setJavaScriptMode(JavaScriptMode.unrestricted)
        // 设置WebView初始大小
        ..setNavigationDelegate(
          NavigationDelegate(
            // 页面开始加载
            onPageStarted: (String url) {
              logger.d("开始加载：$url");
            },
            // 页面加载完成
            onPageFinished: (String url) {
              logger.d("加载完成：$url");
            },
            // 拦截导航请求（如禁止跳转到指定域名）
            onNavigationRequest: (NavigationRequest request) {
              if (request.url.contains("unsafe-domain.com")) {
                return NavigationDecision.prevent; // 阻止跳转
              }
              return NavigationDecision.navigate; // 允许跳转
            },
          ),
        )
        ..loadRequest(Uri.parse(url));
    }
  }
}
