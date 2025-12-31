import 'package:flutter_study/generated/json/base/json_field.dart';
import 'package:flutter_study/generated/json/business_tag_entity.g.dart';
import 'dart:convert';
export 'package:flutter_study/generated/json/business_tag_entity.g.dart';

@JsonSerializable()
class BusinessTagEntity {
	late String id;
	late String name;
	@JSONField(name: 'can_business')
	late String canBusiness;
	@JSONField(name: 'logo_img_url')
	late String logoImgUrl;

	BusinessTagEntity();

	factory BusinessTagEntity.fromJson(Map<String, dynamic> json) => $BusinessTagEntityFromJson(json);

	Map<String, dynamic> toJson() => $BusinessTagEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}