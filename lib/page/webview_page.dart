import 'package:flutter/material.dart';
import 'package:flutter_study/base/base_state.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewPage extends BaseStatefulWidget {
  final String url; // 传入要加载的URL
  const WebViewPage({super.key, required this.url});

  @override
  BaseState<WebViewPage> createState() => _WebViewPageState();
}

class _WebViewPageState extends BaseState<WebViewPage> {
  late final WebViewController _controller;

  @override
  void initState() {
    super.initState();
    // 初始化WebView控制器
    _controller = WebViewController()
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
      // 加载远程URL
      ..loadRequest(Uri.parse(widget.url));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("WebView示例")),
      body: WebViewWidget(controller: _controller), // 4.x版本用WebViewWidget包裹
    );
  }
}
