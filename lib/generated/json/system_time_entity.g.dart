import 'package:flutter_study/generated/json/base/json_convert_content.dart';
import 'package:flutter_study/api/response/system_time_entity.dart';

SystemTimeEntity $SystemTimeEntityFromJson(Map<String, dynamic> json) {
  final SystemTimeEntity systemTimeEntity = SystemTimeEntity();
  final String? code = jsonConvert.convert<String>(json['code']);
  if (code != null) {
    systemTimeEntity.code = code;
  }
  final String? message = jsonConvert.convert<String>(json['message']);
  if (message != null) {
    systemTimeEntity.message = message;
  }
  final String? systemTime = jsonConvert.convert<String>(json['system_time']);
  if (systemTime != null) {
    systemTimeEntity.systemTime = systemTime;
  }
  return systemTimeEntity;
}

Map<String, dynamic> $SystemTimeEntityToJson(SystemTimeEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['code'] = entity.code;
  data['message'] = entity.message;
  data['system_time'] = entity.systemTime;
  return data;
}

extension SystemTimeEntityExtension on SystemTimeEntity {
  SystemTimeEntity copyWith({
    String? code,
    String? message,
    String? systemTime,
  }) {
    return SystemTimeEntity()
      ..code = code ?? this.code
      ..message = message ?? this.message
      ..systemTime = systemTime ?? this.systemTime;
  }
}