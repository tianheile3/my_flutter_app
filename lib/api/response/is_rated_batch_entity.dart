import 'package:flutter_study/generated/json/base/json_field.dart';
import 'package:flutter_study/generated/json/is_rated_batch_entity.g.dart';
import 'dart:convert';
export 'package:flutter_study/generated/json/is_rated_batch_entity.g.dart';

@JsonSerializable()
class IsRatedBatchEntity {
  late int code;
  late String message;
  @JSONField(name: 'is_rated_map')
  late Map<String, bool> isRatedMap;
  @JSONField(name: 'is_zan_map')
  late Map<String, bool>? isZanMap;

  IsRatedBatchEntity();

  factory IsRatedBatchEntity.fromJson(Map<String, dynamic> json) =>
      $IsRatedBatchEntityFromJson(json);

  Map<String, dynamic> toJson() => $IsRatedBatchEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}
