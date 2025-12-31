import 'package:flutter_study/generated/json/base/json_field.dart';
import 'package:flutter_study/generated/json/zan_info_entity.g.dart';
import 'dart:convert';
export 'package:flutter_study/generated/json/zan_info_entity.g.dart';

@JsonSerializable()
class ZanInfoEntity {
	@JSONField(name: 'time_stamp')
	late String timeStamp;
	late String uid;
	late String category;
	@JSONField(name: 'object_id')
	late String objectId;
	@JSONField(name: 'relation_object_ids')
	late String relationObjectIds;
	late String sign;

	ZanInfoEntity();

	factory ZanInfoEntity.fromJson(Map<String, dynamic> json) => $ZanInfoEntityFromJson(json);

	Map<String, dynamic> toJson() => $ZanInfoEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}