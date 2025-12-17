import 'package:flutter/material.dart';
import 'package:flutter_study/base/base_state.dart';
import 'package:flutter_study/utils/download_util.dart';

class TestPage extends BaseStatefulWidget {
  const TestPage({super.key});

  @override
  BaseState<BaseStatefulWidget> createState() => _TestState();
}

class _TestState extends BaseState<TestPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Test")),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            DownloadUtil().download(
              url: "https://m.19lou.com/config_data.json?llll=llll",
              fileName: "config_data",
              saveToPublicDir: true,
              onProgress: (progress) {
                logger.d("下载进度：${(progress * 100).toStringAsFixed(1)}%");
              },
              onSuccess: (path) {
                logger.d("下载成功，目录：$path");
              },
              onError: (error) {
                logger.d(error);
              },
            );
          },
          child: const Text("下载"),
        ),
      ),
    );
  }
}
