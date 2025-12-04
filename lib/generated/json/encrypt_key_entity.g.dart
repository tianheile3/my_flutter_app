import 'package:flutter_study/generated/json/base/json_convert_content.dart';
import 'package:flutter_study/api/response/encrypt_key_entity.dart';

EncryptKeyEntity $EncryptKeyEntityFromJson(Map<String, dynamic> json) {
  final EncryptKeyEntity encryptKeyEntity = EncryptKeyEntity();
  final String? code = jsonConvert.convert<String>(json['code']);
  if (code != null) {
    encryptKeyEntity.code = code;
  }
  final String? message = jsonConvert.convert<String>(json['message']);
  if (message != null) {
    encryptKeyEntity.message = message;
  }
  final String? encryptKey = jsonConvert.convert<String>(json['encrypt_key']);
  if (encryptKey != null) {
    encryptKeyEntity.encryptKey = encryptKey;
  }
  return encryptKeyEntity;
}

Map<String, dynamic> $EncryptKeyEntityToJson(EncryptKeyEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['code'] = entity.code;
  data['message'] = entity.message;
  data['encrypt_key'] = entity.encryptKey;
  return data;
}

extension EncryptKeyEntityExtension on EncryptKeyEntity {
  EncryptKeyEntity copyWith({
    String? code,
    String? message,
    String? encryptKey,
  }) {
    return EncryptKeyEntity()
      ..code = code ?? this.code
      ..message = message ?? this.message
      ..encryptKey = encryptKey ?? this.encryptKey;
  }
}