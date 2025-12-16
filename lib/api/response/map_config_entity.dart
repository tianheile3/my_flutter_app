import 'package:flutter_study/generated/json/base/json_field.dart';
import 'package:flutter_study/generated/json/map_config_entity.g.dart';
import 'dart:convert';
export 'package:flutter_study/generated/json/map_config_entity.g.dart';

@JsonSerializable()
class MapConfigEntity {
	late String code;
	late String message;
	@JSONField(name: 'group_list')
	late List<MapConfigGroupList> groupList;
	@JSONField(name: 'info_check')
	late bool infoCheck;

	MapConfigEntity();

	factory MapConfigEntity.fromJson(Map<String, dynamic> json) => $MapConfigEntityFromJson(json);

	Map<String, dynamic> toJson() => $MapConfigEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class MapConfigGroupList {
	@JSONField(name: 'display_order')
	late int displayOrder;
	late String name;
	@JSONField(name: 'display_type')
	late int displayType;
  int hide = 0;
	@JSONField(name: 'item_list')
	late List<MapConfigGroupListItemList> itemList;

	MapConfigGroupList();

	factory MapConfigGroupList.fromJson(Map<String, dynamic> json) => $MapConfigGroupListFromJson(json);

	Map<String, dynamic> toJson() => $MapConfigGroupListToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class MapConfigGroupListItemList {
	late String id;
	late String name;
	@JSONField(name: 'display_order')
	late int displayOrder;
	@JSONField(name: 'group_id')
	late String groupId;
	@JSONField(name: 'operator_uid')
	late String operatorUid;
	@JSONField(name: 'operator_name')
	late String operatorName;
	@JSONField(name: 'icon_url')
	late String iconUrl;
	late String link;
	late String desc;
	@JSONField(name: 'created_at')
	late String createdAt;
	@JSONField(name: 'updated_at')
	late String updatedAt;

	MapConfigGroupListItemList();

	factory MapConfigGroupListItemList.fromJson(Map<String, dynamic> json) => $MapConfigGroupListItemListFromJson(json);

	Map<String, dynamic> toJson() => $MapConfigGroupListItemListToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}