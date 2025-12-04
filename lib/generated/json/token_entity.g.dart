import 'package:flutter_study/generated/json/base/json_convert_content.dart';
import 'package:flutter_study/api/response/token_entity.dart';

TokenEntity $TokenEntityFromJson(Map<String, dynamic> json) {
  final TokenEntity tokenEntity = TokenEntity();
  final String? accessToken = jsonConvert.convert<String>(json['access_token']);
  if (accessToken != null) {
    tokenEntity.accessToken = accessToken;
  }
  final String? expiresIn = jsonConvert.convert<String>(json['expires_in']);
  if (expiresIn != null) {
    tokenEntity.expiresIn = expiresIn;
  }
  final String? refreshToken = jsonConvert.convert<String>(
      json['refresh_token']);
  if (refreshToken != null) {
    tokenEntity.refreshToken = refreshToken;
  }
  final String? scope = jsonConvert.convert<String>(json['scope']);
  if (scope != null) {
    tokenEntity.scope = scope;
  }
  final String? authUid = jsonConvert.convert<String>(json['auth_uid']);
  if (authUid != null) {
    tokenEntity.authUid = authUid;
  }
  return tokenEntity;
}

Map<String, dynamic> $TokenEntityToJson(TokenEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['access_token'] = entity.accessToken;
  data['expires_in'] = entity.expiresIn;
  data['refresh_token'] = entity.refreshToken;
  data['scope'] = entity.scope;
  data['auth_uid'] = entity.authUid;
  return data;
}

extension TokenEntityExtension on TokenEntity {
  TokenEntity copyWith({
    String? accessToken,
    String? expiresIn,
    String? refreshToken,
    String? scope,
    String? authUid,
  }) {
    return TokenEntity()
      ..accessToken = accessToken ?? this.accessToken
      ..expiresIn = expiresIn ?? this.expiresIn
      ..refreshToken = refreshToken ?? this.refreshToken
      ..scope = scope ?? this.scope
      ..authUid = authUid ?? this.authUid;
  }
}