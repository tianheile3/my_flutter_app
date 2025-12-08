import 'package:flutter_study/generated/json/base/json_field.dart';
import 'package:flutter_study/generated/json/mobile_bg_url_entity.g.dart';
import 'dart:convert';
export 'package:flutter_study/generated/json/mobile_bg_url_entity.g.dart';

@JsonSerializable()
class MobileBgUrlEntity {
	late String code;
	late String message;
	@JSONField(name: 'bg_url')
	late String bgUrl;
	@JSONField(name: 'msg_shield_status')
	late String msgShieldStatus;
	late bool success;

	MobileBgUrlEntity();

	factory MobileBgUrlEntity.fromJson(Map<String, dynamic> json) => $MobileBgUrlEntityFromJson(json);

	Map<String, dynamic> toJson() => $MobileBgUrlEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}