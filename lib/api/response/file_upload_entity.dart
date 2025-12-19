import 'dart:convert';

import 'package:flutter_study/generated/json/base/json_field.dart';
import 'package:flutter_study/generated/json/file_upload_entity.g.dart';

export 'package:flutter_study/generated/json/file_upload_entity.g.dart';

@JsonSerializable()
class FileUploadEntity {
  int? code;
  late String message;
  FileUploadFile? file;
  FileUploadChunk? chunk;

  FileUploadEntity();

  factory FileUploadEntity.fromJson(Map<String, dynamic> json) =>
      $FileUploadEntityFromJson(json);

  Map<String, dynamic> toJson() => $FileUploadEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class FileUploadFile {
  String aid = "";
  @JSONField(name: 'orig_file_name')
  late String origFileName;
  @JSONField(name: 'file_type')
  late String fileType;
  late String filesize;
  @JSONField(name: 'is_image')
  late bool isImage;
  late String uri;
  @JSONField(name: 'orig_url')
  late String origUrl;
  @JSONField(name: 'middle_url')
  late String middleUrl;
  @JSONField(name: 'thumb_url')
  late String thumbUrl;
  late String height;
  late String width;
  @JSONField(name: 'has_sticker')
  late String hasSticker;
  @JSONField(name: 'file_uri')
  late String fileUri;
  @JSONField(name: 'file_name')
  late String fileName;

  String path = ""; //本地uri
  String status = "success"; //状态，success,fail,uploading

  FileUploadFile();

  factory FileUploadFile.fromJson(Map<String, dynamic> json) =>
      $FileUploadFileFromJson(json);

  Map<String, dynamic> toJson() => $FileUploadFileToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class FileUploadChunk {
  @JSONField(name: 'file_id')
  late String fileId;
  late int chunk;
  late int chunks;

  FileUploadChunk();

  factory FileUploadChunk.fromJson(Map<String, dynamic> json) =>
      $FileUploadChunkFromJson(json);

  Map<String, dynamic> toJson() => $FileUploadChunkToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}
