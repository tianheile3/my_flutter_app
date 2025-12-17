import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_study/utils/logger_mixin.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';

class DownloadUtil with LoggerMixin {
  // 单例
  static final DownloadUtil _instance = DownloadUtil._internal();

  factory DownloadUtil() => _instance;

  DownloadUtil._internal();

  TargetPlatform _platform = TargetPlatform.android;

  void setPlatform(TargetPlatform platform) {
    _platform = platform;
  }

  Future<void> download({
    required String url,
    required String fileName,
    bool saveToPublicDir = false, // 是否保存到公共 Download 目录
    required Function(double) onProgress,
    required Function(String) onSuccess,
    required Function(String) onError,
  }) async {
    Directory saveDir;
    if (saveToPublicDir) {
      final hasPermission = await requestStoragePermission();
      if (!hasPermission) {
        onError("存储权限未授予，无法保存到公共目录");
        return;
      }
      // Android 公共 Download 目录
      if (_platform == TargetPlatform.android) {
        saveDir = Directory("/storage/emulated/0/Download/flutter");
      } else {
        // iOS 公共目录
        saveDir = await getApplicationDocumentsDirectory();
      }
    } else {
      saveDir = await getApplicationDocumentsDirectory();
    }
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

  // 检查并申请下载所需的存储权限
  Future<bool> requestStoragePermission() async {
    Permission permission;

    if (_platform == TargetPlatform.android) {
      // Android 权限适配
      if (await Permission.manageExternalStorage.isRestricted) {
        // Android 13+ 用 MANAGE_EXTERNAL_STORAGE
        permission = Permission.manageExternalStorage;
      } else {
        // Android 12- 用 STORAGE（兼容旧版本）
        permission = Permission.storage;
      }
    } else if (_platform == TargetPlatform.iOS) {
      // iOS 权限适配（替代原 filesLibrary）
      // 场景1：仅添加文件到相册/文件库 → photosAddOnly（推荐，权限更低）
      // 场景2：读写文件库 → photos（需完整相册权限）
      permission = Permission.photos;
      // 若需要完整读写权限，用：permission = Permission.photos;
    } else {
      // 其他平台（如 macOS/Windows）
      return true;
    }

    // 权限状态判断
    final status = await permission.status;
    if (status.isGranted) {
      return true;
    } else if (status.isDenied) {
      // 首次申请权限
      final result = await permission.request();
      return result.isGranted;
    } else if (status.isPermanentlyDenied || status.isRestricted) {
      // 权限被永久拒绝，引导到设置页
      openAppSettings();
      return false;
    }
    return false;
  }
}
