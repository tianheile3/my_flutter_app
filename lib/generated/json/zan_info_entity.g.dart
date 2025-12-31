import 'package:flutter_study/generated/json/base/json_convert_content.dart';
import 'package:flutter_study/api/response/common/zan_info_entity.dart';

ZanInfoEntity $ZanInfoEntityFromJson(Map<String, dynamic> json) {
  final ZanInfoEntity zanInfoEntity = ZanInfoEntity();
  final String? timeStamp = jsonConvert.convert<String>(json['time_stamp']);
  if (timeStamp != null) {
    zanInfoEntity.timeStamp = timeStamp;
  }
  final String? uid = jsonConvert.convert<String>(json['uid']);
  if (uid != null) {
    zanInfoEntity.uid = uid;
  }
  final String? category = jsonConvert.convert<String>(json['category']);
  if (category != null) {
    zanInfoEntity.category = category;
  }
  final String? objectId = jsonConvert.convert<String>(json['object_id']);
  if (objectId != null) {
    zanInfoEntity.objectId = objectId;
  }
  final String? relationObjectIds = jsonConvert.convert<String>(
      json['relation_object_ids']);
  if (relationObjectIds != null) {
    zanInfoEntity.relationObjectIds = relationObjectIds;
  }
  final String? sign = jsonConvert.convert<String>(json['sign']);
  if (sign != null) {
    zanInfoEntity.sign = sign;
  }
  return zanInfoEntity;
}

Map<String, dynamic> $ZanInfoEntityToJson(ZanInfoEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['time_stamp'] = entity.timeStamp;
  data['uid'] = entity.uid;
  data['category'] = entity.category;
  data['object_id'] = entity.objectId;
  data['relation_object_ids'] = entity.relationObjectIds;
  data['sign'] = entity.sign;
  return data;
}

extension ZanInfoEntityExtension on ZanInfoEntity {
  ZanInfoEntity copyWith({
    String? timeStamp,
    String? uid,
    String? category,
    String? objectId,
    String? relationObjectIds,
    String? sign,
  }) {
    return ZanInfoEntity()
      ..timeStamp = timeStamp ?? this.timeStamp
      ..uid = uid ?? this.uid
      ..category = category ?? this.category
      ..objectId = objectId ?? this.objectId
      ..relationObjectIds = relationObjectIds ?? this.relationObjectIds
      ..sign = sign ?? this.sign;
  }
}