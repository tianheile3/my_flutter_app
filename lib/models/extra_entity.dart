import 'package:flutter_study/generated/json/base/json_field.dart';
import 'package:flutter_study/generated/json/extra_entity.g.dart';
import 'dart:convert';
export 'package:flutter_study/generated/json/extra_entity.g.dart';

@JsonSerializable()
class ExtraEntity {
	late String summary;
	late String videoUrl;
	late String? imageUrls;
	late String picNum;
	late String holdVideo;

	ExtraEntity();

	factory ExtraEntity.fromJson(Map<String, dynamic> json) => $ExtraEntityFromJson(json);

	Map<String, dynamic> toJson() => $ExtraEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}