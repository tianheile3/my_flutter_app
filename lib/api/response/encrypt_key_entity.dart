import 'package:flutter_study/generated/json/base/json_field.dart';
import 'package:flutter_study/generated/json/encrypt_key_entity.g.dart';
import 'dart:convert';
export 'package:flutter_study/generated/json/encrypt_key_entity.g.dart';

@JsonSerializable()
class EncryptKeyEntity {
	late String code;
	late String message;
	@JSONField(name: 'encrypt_key')
	late String encryptKey;

	EncryptKeyEntity();

	factory EncryptKeyEntity.fromJson(Map<String, dynamic> json) => $EncryptKeyEntityFromJson(json);

	Map<String, dynamic> toJson() => $EncryptKeyEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}