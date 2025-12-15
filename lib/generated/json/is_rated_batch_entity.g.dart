import 'package:flutter_study/generated/json/base/json_convert_content.dart';
import 'package:flutter_study/api/response/is_rated_batch_entity.dart';

IsRatedBatchEntity $IsRatedBatchEntityFromJson(Map<String, dynamic> json) {
  final IsRatedBatchEntity isRatedBatchEntity = IsRatedBatchEntity();
  final int? code = jsonConvert.convert<int>(json['code']);
  if (code != null) {
    isRatedBatchEntity.code = code;
  }
  final String? message = jsonConvert.convert<String>(json['message']);
  if (message != null) {
    isRatedBatchEntity.message = message;
  }
  final Map<String, bool>? isRatedMap =
  (json['is_rated_map'] as Map<String, dynamic>).map(
          (k, e) => MapEntry(k, jsonConvert.convert<bool>(e) as bool));
  if (isRatedMap != null) {
    isRatedBatchEntity.isRatedMap = isRatedMap;
  }
  final Map<String, bool>? isZanMap =
  (json['is_zan_map'] as Map<String, dynamic>?)?.map(
          (k, e) => MapEntry(k, jsonConvert.convert<bool>(e) as bool));
  if (isZanMap != null) {
    isRatedBatchEntity.isZanMap = isZanMap;
  }
  return isRatedBatchEntity;
}

Map<String, dynamic> $IsRatedBatchEntityToJson(IsRatedBatchEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['code'] = entity.code;
  data['message'] = entity.message;
  data['is_rated_map'] = entity.isRatedMap;
  data['is_zan_map'] = entity.isZanMap;
  return data;
}

extension IsRatedBatchEntityExtension on IsRatedBatchEntity {
  IsRatedBatchEntity copyWith({
    int? code,
    String? message,
    Map<String, bool>? isRatedMap,
    Map<String, bool>? isZanMap,
  }) {
    return IsRatedBatchEntity()
      ..code = code ?? this.code
      ..message = message ?? this.message
      ..isRatedMap = isRatedMap ?? this.isRatedMap
      ..isZanMap = isZanMap ?? this.isZanMap;
  }
}