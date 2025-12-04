import 'package:flutter_study/generated/json/base/json_field.dart';
import 'package:flutter_study/generated/json/system_time_entity.g.dart';
import 'dart:convert';
export 'package:flutter_study/generated/json/system_time_entity.g.dart';

@JsonSerializable()
class SystemTimeEntity {
  late String code;
  late String message;
  @JSONField(name: 'system_time')
  late String systemTime;

  SystemTimeEntity();

  factory SystemTimeEntity.fromJson(Map<String, dynamic> json) =>
      $SystemTimeEntityFromJson(json);

  Map<String, dynamic> toJson() => $SystemTimeEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}
