import 'package:flutter_study/generated/json/base/json_convert_content.dart';
import 'package:flutter_study/models/extra_entity.dart';

ExtraEntity $ExtraEntityFromJson(Map<String, dynamic> json) {
  final ExtraEntity extraEntity = ExtraEntity();
  final String? summary = jsonConvert.convert<String>(json['summary']);
  if (summary != null) {
    extraEntity.summary = summary;
  }
  final String? address = jsonConvert.convert<String>(json['address']);
  if (address != null) {
    extraEntity.address = address;
  }
  final String? lastThreeUid = jsonConvert.convert<String>(
      json['lastThreeUid']);
  if (lastThreeUid != null) {
    extraEntity.lastThreeUid = lastThreeUid;
  }
  final String? videoUrl = jsonConvert.convert<String>(json['videoUrl']);
  if (videoUrl != null) {
    extraEntity.videoUrl = videoUrl;
  }
  final String? gatherId = jsonConvert.convert<String>(json['gatherId']);
  if (gatherId != null) {
    extraEntity.gatherId = gatherId;
  }
  final String? imageUrls = jsonConvert.convert<String>(json['imageUrls']);
  if (imageUrls != null) {
    extraEntity.imageUrls = imageUrls;
  }
  final int? picNum = jsonConvert.convert<int>(json['picNum']);
  if (picNum != null) {
    extraEntity.picNum = picNum;
  }
  final String? lon = jsonConvert.convert<String>(json['lon']);
  if (lon != null) {
    extraEntity.lon = lon;
  }
  final int? ratePlusNumber = jsonConvert.convert<int>(
      json['ratePlusNumber']);
  if (ratePlusNumber != null) {
    extraEntity.ratePlusNumber = ratePlusNumber;
  }
  final String? lat = jsonConvert.convert<String>(json['lat']);
  if (lat != null) {
    extraEntity.lat = lat;
  }
  final bool? holdVideo = jsonConvert.convert<bool>(json['holdVideo']);
  if (holdVideo != null) {
    extraEntity.holdVideo = holdVideo;
  }
  return extraEntity;
}

Map<String, dynamic> $ExtraEntityToJson(ExtraEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['summary'] = entity.summary;
  data['address'] = entity.address;
  data['lastThreeUid'] = entity.lastThreeUid;
  data['videoUrl'] = entity.videoUrl;
  data['gatherId'] = entity.gatherId;
  data['imageUrls'] = entity.imageUrls;
  data['picNum'] = entity.picNum;
  data['lon'] = entity.lon;
  data['ratePlusNumber'] = entity.ratePlusNumber;
  data['lat'] = entity.lat;
  data['holdVideo'] = entity.holdVideo;
  return data;
}

extension ExtraEntityExtension on ExtraEntity {
  ExtraEntity copyWith({
    String? summary,
    String? address,
    String? lastThreeUid,
    String? videoUrl,
    String? gatherId,
    String? imageUrls,
    int? picNum,
    String? lon,
    int? ratePlusNumber,
    String? lat,
    bool? holdVideo,
  }) {
    return ExtraEntity()
      ..summary = summary ?? this.summary
      ..address = address ?? this.address
      ..lastThreeUid = lastThreeUid ?? this.lastThreeUid
      ..videoUrl = videoUrl ?? this.videoUrl
      ..gatherId = gatherId ?? this.gatherId
      ..imageUrls = imageUrls ?? this.imageUrls
      ..picNum = picNum ?? this.picNum
      ..lon = lon ?? this.lon
      ..ratePlusNumber = ratePlusNumber ?? this.ratePlusNumber
      ..lat = lat ?? this.lat
      ..holdVideo = holdVideo ?? this.holdVideo;
  }
}