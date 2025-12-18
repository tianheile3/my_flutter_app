import 'package:flutter/material.dart';
import 'package:flutter_study/base/base_state.dart';
import 'package:flutter_study/utils/download_util.dart';
import 'package:fluttertoast/fluttertoast.dart';

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

  void _saveFile() {
    DownloadUtil().download(
      url: "https://m.19lou.com/config_data.json?llll=llll",
      fileName: "config_data",
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
  }

  void _saveImage() {
    DownloadUtil().saveNetworkImage(
      imageUrl:
          "https://att2.citysbs.com/hangzhou/2025/12/17/10/middle_780x576-104436_v3_12541765939476531_abf7fcfcff70225789237b19b7e5f2d2.jpg",
      onSuccess: () {
        Fluttertoast.showToast(msg: "保存成功");
      },
      onError: (error) {
        logger.d(error);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Test")),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            _saveImage();
          },
          child: const Text("下载"),
        ),
      ),
    );
  }
}
