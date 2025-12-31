import 'package:flutter_study/generated/json/base/json_field.dart';
import 'package:flutter_study/generated/json/topic_tag_entity.g.dart';
import 'dart:convert';
export 'package:flutter_study/generated/json/topic_tag_entity.g.dart';

@JsonSerializable()
class TopicTagEntity {
	late String id;
	late String name;
	@JSONField(name: 'can_business')
	late String canBusiness;
	@JSONField(name: 'logo_img_url')
	late String logoImgUrl;

	TopicTagEntity();

	factory TopicTagEntity.fromJson(Map<String, dynamic> json) => $TopicTagEntityFromJson(json);

	Map<String, dynamic> toJson() => $TopicTagEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}