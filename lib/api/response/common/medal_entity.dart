import 'package:flutter_study/generated/json/base/json_field.dart';
import 'package:flutter_study/generated/json/medal_entity.g.dart';
import 'dart:convert';
export 'package:flutter_study/generated/json/medal_entity.g.dart';

@JsonSerializable()
class MedalEntity {
	late String id;
	late String name;
	@JSONField(name: 'require_value')
	late String requireValue;
	@JSONField(name: 'require_days')
	late String requireDays;
	@JSONField(name: 'icon_url')
	late String iconUrl;
	@JSONField(name: 'color_icon_url')
	late String colorIconUrl;
	@JSONField(name: 'tuwen_icon_url')
	late String tuwenIconUrl;
	late String description;
	@JSONField(name: 'city_id')
	late String cityId;
	@JSONField(name: 'group_id')
	late String groupId;
	@JSONField(name: 'sort_id')
	late String sortId;
	late bool awarded;
	@JSONField(name: 'is_new')
	late bool isNew;
	late bool online;
	@JSONField(name: 'group_name')
	late String groupName;
	late bool wearing;
	late bool growing;
	@JSONField(name: 'created_at')
	late String createdAt;
	@JSONField(name: 'updated_at')
	late String updatedAt;
	@JSONField(name: 'action_id')
	late String actionId;
	@JSONField(name: 'statistics_type')
	late String statisticsType;
	@JSONField(name: 'button_name')
	late String buttonName;
	@JSONField(name: 'button_display')
	late bool buttonDisplay;
	@JSONField(name: 'link_url')
	late String linkUrl;
	late String value;
	@JSONField(name: 'source_id')
	late String sourceId;
	late String fid;
	@JSONField(name: 'group_status')
	late String groupStatus;
	@JSONField(name: 'auto_wearing')
	late bool autoWearing;
	@JSONField(name: 'link_display')
	late bool linkDisplay;

	MedalEntity();

	factory MedalEntity.fromJson(Map<String, dynamic> json) => $MedalEntityFromJson(json);

	Map<String, dynamic> toJson() => $MedalEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}