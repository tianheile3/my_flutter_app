import 'package:flutter_study/generated/json/base/json_convert_content.dart';
import 'package:flutter_study/api/response/file_upload_entity.dart';

FileUploadEntity $FileUploadEntityFromJson(Map<String, dynamic> json) {
  final FileUploadEntity fileUploadEntity = FileUploadEntity();
  final int? code = jsonConvert.convert<int>(json['code']);
  if (code != null) {
    fileUploadEntity.code = code;
  }
  final String? message = jsonConvert.convert<String>(json['message']);
  if (message != null) {
    fileUploadEntity.message = message;
  }
  final FileUploadFile? file = jsonConvert.convert<FileUploadFile>(
      json['file']);
  if (file != null) {
    fileUploadEntity.file = file;
  }
  final FileUploadChunk? chunk = jsonConvert.convert<FileUploadChunk>(
      json['chunk']);
  if (chunk != null) {
    fileUploadEntity.chunk = chunk;
  }
  return fileUploadEntity;
}

Map<String, dynamic> $FileUploadEntityToJson(FileUploadEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['code'] = entity.code;
  data['message'] = entity.message;
  data['file'] = entity.file?.toJson();
  data['chunk'] = entity.chunk?.toJson();
  return data;
}

extension FileUploadEntityExtension on FileUploadEntity {
  FileUploadEntity copyWith({
    int? code,
    String? message,
    FileUploadFile? file,
    FileUploadChunk? chunk,
  }) {
    return FileUploadEntity()
      ..code = code ?? this.code
      ..message = message ?? this.message
      ..file = file ?? this.file
      ..chunk = chunk ?? this.chunk;
  }
}

FileUploadFile $FileUploadFileFromJson(Map<String, dynamic> json) {
  final FileUploadFile fileUploadFile = FileUploadFile();
  final String? aid = jsonConvert.convert<String>(json['aid']);
  if (aid != null) {
    fileUploadFile.aid = aid;
  }
  final String? origFileName = jsonConvert.convert<String>(
      json['orig_file_name']);
  if (origFileName != null) {
    fileUploadFile.origFileName = origFileName;
  }
  final String? fileType = jsonConvert.convert<String>(json['file_type']);
  if (fileType != null) {
    fileUploadFile.fileType = fileType;
  }
  final String? filesize = jsonConvert.convert<String>(json['filesize']);
  if (filesize != null) {
    fileUploadFile.filesize = filesize;
  }
  final bool? isImage = jsonConvert.convert<bool>(json['is_image']);
  if (isImage != null) {
    fileUploadFile.isImage = isImage;
  }
  final String? uri = jsonConvert.convert<String>(json['uri']);
  if (uri != null) {
    fileUploadFile.uri = uri;
  }
  final String? origUrl = jsonConvert.convert<String>(json['orig_url']);
  if (origUrl != null) {
    fileUploadFile.origUrl = origUrl;
  }
  final String? middleUrl = jsonConvert.convert<String>(json['middle_url']);
  if (middleUrl != null) {
    fileUploadFile.middleUrl = middleUrl;
  }
  final String? thumbUrl = jsonConvert.convert<String>(json['thumb_url']);
  if (thumbUrl != null) {
    fileUploadFile.thumbUrl = thumbUrl;
  }
  final String? height = jsonConvert.convert<String>(json['height']);
  if (height != null) {
    fileUploadFile.height = height;
  }
  final String? width = jsonConvert.convert<String>(json['width']);
  if (width != null) {
    fileUploadFile.width = width;
  }
  final String? hasSticker = jsonConvert.convert<String>(json['has_sticker']);
  if (hasSticker != null) {
    fileUploadFile.hasSticker = hasSticker;
  }
  final String? fileUri = jsonConvert.convert<String>(json['file_uri']);
  if (fileUri != null) {
    fileUploadFile.fileUri = fileUri;
  }
  final String? fileName = jsonConvert.convert<String>(json['file_name']);
  if (fileName != null) {
    fileUploadFile.fileName = fileName;
  }
  return fileUploadFile;
}

Map<String, dynamic> $FileUploadFileToJson(FileUploadFile entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['aid'] = entity.aid;
  data['orig_file_name'] = entity.origFileName;
  data['file_type'] = entity.fileType;
  data['filesize'] = entity.filesize;
  data['is_image'] = entity.isImage;
  data['uri'] = entity.uri;
  data['orig_url'] = entity.origUrl;
  data['middle_url'] = entity.middleUrl;
  data['thumb_url'] = entity.thumbUrl;
  data['height'] = entity.height;
  data['width'] = entity.width;
  data['has_sticker'] = entity.hasSticker;
  data['file_uri'] = entity.fileUri;
  data['file_name'] = entity.fileName;
  return data;
}

extension FileUploadFileExtension on FileUploadFile {
  FileUploadFile copyWith({
    String? aid,
    String? origFileName,
    String? fileType,
    String? filesize,
    bool? isImage,
    String? uri,
    String? origUrl,
    String? middleUrl,
    String? thumbUrl,
    String? height,
    String? width,
    String? hasSticker,
    String? fileUri,
    String? fileName,
  }) {
    return FileUploadFile()
      ..aid = aid ?? this.aid
      ..origFileName = origFileName ?? this.origFileName
      ..fileType = fileType ?? this.fileType
      ..filesize = filesize ?? this.filesize
      ..isImage = isImage ?? this.isImage
      ..uri = uri ?? this.uri
      ..origUrl = origUrl ?? this.origUrl
      ..middleUrl = middleUrl ?? this.middleUrl
      ..thumbUrl = thumbUrl ?? this.thumbUrl
      ..height = height ?? this.height
      ..width = width ?? this.width
      ..hasSticker = hasSticker ?? this.hasSticker
      ..fileUri = fileUri ?? this.fileUri
      ..fileName = fileName ?? this.fileName;
  }
}

FileUploadChunk $FileUploadChunkFromJson(Map<String, dynamic> json) {
  final FileUploadChunk fileUploadChunk = FileUploadChunk();
  final String? fileId = jsonConvert.convert<String>(json['file_id']);
  if (fileId != null) {
    fileUploadChunk.fileId = fileId;
  }
  final int? chunk = jsonConvert.convert<int>(json['chunk']);
  if (chunk != null) {
    fileUploadChunk.chunk = chunk;
  }
  final int? chunks = jsonConvert.convert<int>(json['chunks']);
  if (chunks != null) {
    fileUploadChunk.chunks = chunks;
  }
  return fileUploadChunk;
}

Map<String, dynamic> $FileUploadChunkToJson(FileUploadChunk entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['file_id'] = entity.fileId;
  data['chunk'] = entity.chunk;
  data['chunks'] = entity.chunks;
  return data;
}

extension FileUploadChunkExtension on FileUploadChunk {
  FileUploadChunk copyWith({
    String? fileId,
    int? chunk,
    int? chunks,
  }) {
    return FileUploadChunk()
      ..fileId = fileId ?? this.fileId
      ..chunk = chunk ?? this.chunk
      ..chunks = chunks ?? this.chunks;
  }
}