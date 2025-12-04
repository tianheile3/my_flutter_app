import 'package:flutter_study/generated/json/base/json_convert_content.dart';
import 'package:flutter_study/models/extra_entity.dart';

ExtraEntity $ExtraEntityFromJson(Map<String, dynamic> json) {
  final ExtraEntity extraEntity = ExtraEntity();
  final String? summary = jsonConvert.convert<String>(json['summary']);
  if (summary != null) {
    extraEntity.summary = summary;
  }
  final String? videoUrl = jsonConvert.convert<String>(json['videoUrl']);
  if (videoUrl != null) {
    extraEntity.videoUrl = videoUrl;
  }
  final String? imageUrls = jsonConvert.convert<String>(json['imageUrls']);
  if (imageUrls != null) {
    extraEntity.imageUrls = imageUrls;
  }
  final String? picNum = jsonConvert.convert<String>(json['picNum']);
  if (picNum != null) {
    extraEntity.picNum = picNum;
  }
  final String? holdVideo = jsonConvert.convert<String>(json['holdVideo']);
  if (holdVideo != null) {
    extraEntity.holdVideo = holdVideo;
  }
  return extraEntity;
}

Map<String, dynamic> $ExtraEntityToJson(ExtraEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['summary'] = entity.summary;
  data['videoUrl'] = entity.videoUrl;
  data['imageUrls'] = entity.imageUrls;
  data['picNum'] = entity.picNum;
  data['holdVideo'] = entity.holdVideo;
  return data;
}

extension ExtraEntityExtension on ExtraEntity {
  ExtraEntity copyWith({
    String? summary,
    String? videoUrl,
    String? imageUrls,
    String? picNum,
    String? holdVideo,
  }) {
    return ExtraEntity()
      ..summary = summary ?? this.summary
      ..videoUrl = videoUrl ?? this.videoUrl
      ..imageUrls = imageUrls ?? this.imageUrls
      ..picNum = picNum ?? this.picNum
      ..holdVideo = holdVideo ?? this.holdVideo;
  }
}