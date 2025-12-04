import 'package:flutter_study/generated/json/base/json_field.dart';
import 'package:flutter_study/generated/json/token_entity.g.dart';
import 'dart:convert';
export 'package:flutter_study/generated/json/token_entity.g.dart';

@JsonSerializable()
class TokenEntity {
	@JSONField(name: 'access_token')
	late String accessToken;
	@JSONField(name: 'expires_in')
	late String expiresIn;
	@JSONField(name: 'refresh_token')
	late String refreshToken;
	late String scope;
	@JSONField(name: 'auth_uid')
	late String authUid;

	TokenEntity();

	factory TokenEntity.fromJson(Map<String, dynamic> json) => $TokenEntityFromJson(json);

	Map<String, dynamic> toJson() => $TokenEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}