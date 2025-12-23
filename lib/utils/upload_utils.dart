import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:flutter_study/utils/logger_mixin.dart';

import '../api/network_manager.dart';
import '../api/response/file_upload_entity.dart';
import 'auth_utils.dart';

class UploadUtils with LoggerMixin {
  final api = NetworkManager().getApiClient();
  static const int chunkSize = 1024 * 1024;
  int chunk = 1;
  String fileId = "";

  late FileUploadFile item;
  late final int chunks;
  late String fileBase64;

  UploadUtils(this.item);

  Future<void> doUpload() async {
    item.status.value = "loading";
    final List<String> slices = await sliceFileToBase64(file: File(item.path));
    if (slices.isEmpty) return;
    chunks = slices.length;
    while (chunk <= chunks) {
      final result = await uploadSlice(slices[chunk - 1]);
      if (result == null) {
        item.status.value = "fail";
        break;
      }
      if (result.chunk != null) {
        fileId = result.chunk!.fileId;
        chunk++;
      } else if (result.file != null) {
        item.aid = result.file!.aid;
        item.middleUrl = result.file!.middleUrl;
        item.origUrl = result.file!.origUrl;
        item.status.value = "success";
        break;
      }
    }
  }

  Future<FileUploadEntity?> uploadSlice(String slice) async {
    final params = AuthUtils.buildCommonFormParams();
    final formData = FormData.fromMap({
      "isChunk": true,
      "chunks": chunks,
      "chunk": chunk,
      "fcontent": slice,
      "file_name": "test.txt",
      "file_id": fileId,
      ...params,
    });
    return await api.fileUpload(formData);
  }

  /// 将文件按 1MB 分片，每片转换为 Base64 字符串
  /// [file]：待分片的本地文件
  /// [urlSafe]：是否生成 URL 安全的 Base64（默认 false）
  /// 返回：Base64 字符串列表（每一项对应 1MB 分片，最后一片可能小于 1MB）
  Future<List<String>> sliceFileToBase64({required File file}) async {
    try {
      // 1. 检查文件是否存在
      if (!await file.exists()) {
        return [];
      }

      // 2. 获取文件总字节数
      final fileLength = await file.length();
      if (fileLength == 0) {
        return [];
      }

      // 3. 计算总分片数
      final totalSlices = (fileLength / chunkSize).ceil();
      final base64Slices = <String>[];

      // 4. 打开文件随机读取流（避免一次性加载大文件到内存）
      final randomAccessFile = await file.open(mode: FileMode.read);

      try {
        // 5. 循环分片读取并编码
        for (int i = 0; i < totalSlices; i++) {
          // 计算当前分片的起始位置和读取长度
          final start = i * chunkSize;
          final end = (i + 1) * chunkSize;
          final readLength = end > fileLength ? fileLength - start : chunkSize;

          // 读取当前分片的字节
          final bytes = Uint8List(readLength);
          await randomAccessFile.setPosition(start);
          await randomAccessFile.readInto(bytes);

          // 转换为 Base64 字符串
          final base64Str = base64.encode(bytes);
          base64Slices.add(base64Str);
        }
      } finally {
        // 必须关闭文件流，避免资源泄漏
        await randomAccessFile.close();
      }
      return base64Slices;
    } catch (e) {
      logger.d("文件分片并转 Base64 失败：$e");
    }
    return [];
  }

  /// File 转 Base64 编码字符串
  /// [file]：待转换的本地文件
  Future<String> fileToBase64({required File file}) async {
    try {
      // 1. 读取文件字节（异步操作，需 await）
      Uint8List fileBytes = await file.readAsBytes();
      // 2. 编码为 Base64 字符串
      String base64Str = base64.encode(fileBytes); // 标准 Base64 编码
      return base64Str;
    } catch (e) {
      throw Exception("File 转 Base64 失败：$e");
    }
  }
}
