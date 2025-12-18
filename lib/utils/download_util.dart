import 'dart:io';
import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:flutter_study/utils/logger_mixin.dart';
import 'package:flutter_study/utils/permission_utils.dart';
import 'package:path_provider/path_provider.dart';
import 'package:saver_gallery/saver_gallery.dart';

class DownloadUtil with LoggerMixin {
  // 单例
  static final DownloadUtil _instance = DownloadUtil._internal();

  factory DownloadUtil() => _instance;

  DownloadUtil._internal();

  Future<void> download({
    required String url,
    required String fileName,
    required Function(double) onProgress,
    required Function(String) onSuccess,
    required Function(String) onError,
  }) async {
    Directory saveDir = await getApplicationDocumentsDirectory();
    if (!await saveDir.exists()) {
      await saveDir.create(recursive: true);
    }
    logger.d("saveDir：${saveDir.toString()}");
    logger.d("path：${saveDir.path} uri：${saveDir.uri}");

    final filePath = "${saveDir.path}/$fileName";
    final file = File(filePath);
    if (await file.exists()) await file.delete();
    //发起下载
    final dio = Dio();
    try {
      await dio.download(
        url,
        filePath,
        onReceiveProgress: (received, total) {
          if (total != -1) {
            onProgress(received / total);
          }
        },
      );
      onSuccess(filePath);
    } catch (e) {
      onError("下载失败：${e.toString()}");
    }
  }

  /// 保存网络图片到相册
  Future<void> saveNetworkImage({
    required String imageUrl,
    required Function() onSuccess,
    required Function(String) onError,
  }) async {
    try {
      // 1. 申请权限
      final hasPermission = await PermissionUtils.requestPhotoPermission(
        skipIfExists: true,
      );
      if (!hasPermission) {
        throw Exception("相册权限未授权");
      }
      // 2. 下载图片为字节数据
      var response = await Dio().get(
        imageUrl,
        options: Options(responseType: ResponseType.bytes),
      );
      // 3. 保存到相册
      final String fileName = "19lou_${DateTime.now().millisecondsSinceEpoch}";
      logger.d("fileName:$fileName");
      final result = await SaverGallery.saveImage(
        Uint8List.fromList(response.data),
        fileName: fileName,
        skipIfExists: true,
      );
      if (result.isSuccess) {
        return onSuccess();
      } else {
        onError("保存失败：${result.errorMessage}");
      }
    } catch (e) {
      onError("保存网络图片失败：$e");
    }
  }
}
