import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'logic.dart';

class WebviewPage extends StatelessWidget {
  WebviewPage({super.key});

  final WebviewLogic logic = Get.put(WebviewLogic());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("WebView示例")),
      body: WebViewWidget(controller: logic.controller), // 4.x版本用WebViewWidget包裹
    );
  }
}
