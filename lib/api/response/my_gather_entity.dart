import 'package:flutter_study/generated/json/base/json_field.dart';
import 'package:flutter_study/generated/json/my_gather_entity.g.dart';
import 'dart:convert';
export 'package:flutter_study/generated/json/my_gather_entity.g.dart';

@JsonSerializable()
class MyGatherEntity {
	@JSONField(name: 'gather_list')
	late List<MyGatherGatherList> gatherList;

	MyGatherEntity();

	factory MyGatherEntity.fromJson(Map<String, dynamic> json) => $MyGatherEntityFromJson(json);

	Map<String, dynamic> toJson() => $MyGatherEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class MyGatherGatherList {
	late String id;
	late String uid;
	late String name;
	late String desc;
	late String cover;
	late String status;
	@JSONField(name: 'visit_num')
	late String visitNum;
	late String threads;
	@JSONField(name: 'last_gather_at')
	late String lastGatherAt;
	@JSONField(name: 'created_at')
	late String createdAt;
	@JSONField(name: 'updated_at')
	late String updatedAt;

	MyGatherGatherList();

	factory MyGatherGatherList.fromJson(Map<String, dynamic> json) => $MyGatherGatherListFromJson(json);

	Map<String, dynamic> toJson() => $MyGatherGatherListToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}