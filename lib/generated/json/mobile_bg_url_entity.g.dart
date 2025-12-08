import 'package:flutter_study/generated/json/base/json_convert_content.dart';
import 'package:flutter_study/api/response/mobile_bg_url_entity.dart';

MobileBgUrlEntity $MobileBgUrlEntityFromJson(Map<String, dynamic> json) {
  final MobileBgUrlEntity mobileBgUrlEntity = MobileBgUrlEntity();
  final String? code = jsonConvert.convert<String>(json['code']);
  if (code != null) {
    mobileBgUrlEntity.code = code;
  }
  final String? message = jsonConvert.convert<String>(json['message']);
  if (message != null) {
    mobileBgUrlEntity.message = message;
  }
  final String? bgUrl = jsonConvert.convert<String>(json['bg_url']);
  if (bgUrl != null) {
    mobileBgUrlEntity.bgUrl = bgUrl;
  }
  final String? msgShieldStatus = jsonConvert.convert<String>(
      json['msg_shield_status']);
  if (msgShieldStatus != null) {
    mobileBgUrlEntity.msgShieldStatus = msgShieldStatus;
  }
  final bool? success = jsonConvert.convert<bool>(json['success']);
  if (success != null) {
    mobileBgUrlEntity.success = success;
  }
  return mobileBgUrlEntity;
}

Map<String, dynamic> $MobileBgUrlEntityToJson(MobileBgUrlEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['code'] = entity.code;
  data['message'] = entity.message;
  data['bg_url'] = entity.bgUrl;
  data['msg_shield_status'] = entity.msgShieldStatus;
  data['success'] = entity.success;
  return data;
}

extension MobileBgUrlEntityExtension on MobileBgUrlEntity {
  MobileBgUrlEntity copyWith({
    String? code,
    String? message,
    String? bgUrl,
    String? msgShieldStatus,
    bool? success,
  }) {
    return MobileBgUrlEntity()
      ..code = code ?? this.code
      ..message = message ?? this.message
      ..bgUrl = bgUrl ?? this.bgUrl
      ..msgShieldStatus = msgShieldStatus ?? this.msgShieldStatus
      ..success = success ?? this.success;
  }
}