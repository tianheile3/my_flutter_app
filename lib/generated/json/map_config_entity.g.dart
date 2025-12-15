import 'package:flutter_study/generated/json/base/json_convert_content.dart';
import 'package:flutter_study/api/response/map_config_entity.dart';

MapConfigEntity $MapConfigEntityFromJson(Map<String, dynamic> json) {
  final MapConfigEntity mapConfigEntity = MapConfigEntity();
  final String? code = jsonConvert.convert<String>(json['code']);
  if (code != null) {
    mapConfigEntity.code = code;
  }
  final String? message = jsonConvert.convert<String>(json['message']);
  if (message != null) {
    mapConfigEntity.message = message;
  }
  final List<MapConfigGroupList>? groupList = (json['group_list'] as List<
      dynamic>?)
      ?.map(
          (e) =>
      jsonConvert.convert<MapConfigGroupList>(e) as MapConfigGroupList)
      .toList();
  if (groupList != null) {
    mapConfigEntity.groupList = groupList;
  }
  final bool? infoCheck = jsonConvert.convert<bool>(json['info_check']);
  if (infoCheck != null) {
    mapConfigEntity.infoCheck = infoCheck;
  }
  return mapConfigEntity;
}

Map<String, dynamic> $MapConfigEntityToJson(MapConfigEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['code'] = entity.code;
  data['message'] = entity.message;
  data['group_list'] = entity.groupList.map((v) => v.toJson()).toList();
  data['info_check'] = entity.infoCheck;
  return data;
}

extension MapConfigEntityExtension on MapConfigEntity {
  MapConfigEntity copyWith({
    String? code,
    String? message,
    List<MapConfigGroupList>? groupList,
    bool? infoCheck,
  }) {
    return MapConfigEntity()
      ..code = code ?? this.code
      ..message = message ?? this.message
      ..groupList = groupList ?? this.groupList
      ..infoCheck = infoCheck ?? this.infoCheck;
  }
}

MapConfigGroupList $MapConfigGroupListFromJson(Map<String, dynamic> json) {
  final MapConfigGroupList mapConfigGroupList = MapConfigGroupList();
  final int? displayOrder = jsonConvert.convert<int>(json['display_order']);
  if (displayOrder != null) {
    mapConfigGroupList.displayOrder = displayOrder;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    mapConfigGroupList.name = name;
  }
  final int? displayType = jsonConvert.convert<int>(json['display_type']);
  if (displayType != null) {
    mapConfigGroupList.displayType = displayType;
  }
  final int? hide = jsonConvert.convert<int>(json['hide']);
  if (hide != null) {
    mapConfigGroupList.hide = hide;
  }
  final List<MapConfigGroupListItemList>? itemList = (json['item_list'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<MapConfigGroupListItemList>(
          e) as MapConfigGroupListItemList).toList();
  if (itemList != null) {
    mapConfigGroupList.itemList = itemList;
  }
  return mapConfigGroupList;
}

Map<String, dynamic> $MapConfigGroupListToJson(MapConfigGroupList entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['display_order'] = entity.displayOrder;
  data['name'] = entity.name;
  data['display_type'] = entity.displayType;
  data['hide'] = entity.hide;
  data['item_list'] = entity.itemList.map((v) => v.toJson()).toList();
  return data;
}

extension MapConfigGroupListExtension on MapConfigGroupList {
  MapConfigGroupList copyWith({
    int? displayOrder,
    String? name,
    int? displayType,
    int? hide,
    List<MapConfigGroupListItemList>? itemList,
  }) {
    return MapConfigGroupList()
      ..displayOrder = displayOrder ?? this.displayOrder
      ..name = name ?? this.name
      ..displayType = displayType ?? this.displayType
      ..hide = hide ?? this.hide
      ..itemList = itemList ?? this.itemList;
  }
}

MapConfigGroupListItemList $MapConfigGroupListItemListFromJson(
    Map<String, dynamic> json) {
  final MapConfigGroupListItemList mapConfigGroupListItemList = MapConfigGroupListItemList();
  final String? id = jsonConvert.convert<String>(json['id']);
  if (id != null) {
    mapConfigGroupListItemList.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    mapConfigGroupListItemList.name = name;
  }
  final int? displayOrder = jsonConvert.convert<int>(json['display_order']);
  if (displayOrder != null) {
    mapConfigGroupListItemList.displayOrder = displayOrder;
  }
  final String? groupId = jsonConvert.convert<String>(json['group_id']);
  if (groupId != null) {
    mapConfigGroupListItemList.groupId = groupId;
  }
  final String? operatorUid = jsonConvert.convert<String>(json['operator_uid']);
  if (operatorUid != null) {
    mapConfigGroupListItemList.operatorUid = operatorUid;
  }
  final String? operatorName = jsonConvert.convert<String>(
      json['operator_name']);
  if (operatorName != null) {
    mapConfigGroupListItemList.operatorName = operatorName;
  }
  final String? iconUrl = jsonConvert.convert<String>(json['icon_url']);
  if (iconUrl != null) {
    mapConfigGroupListItemList.iconUrl = iconUrl;
  }
  final String? link = jsonConvert.convert<String>(json['link']);
  if (link != null) {
    mapConfigGroupListItemList.link = link;
  }
  final String? desc = jsonConvert.convert<String>(json['desc']);
  if (desc != null) {
    mapConfigGroupListItemList.desc = desc;
  }
  final String? createdAt = jsonConvert.convert<String>(json['created_at']);
  if (createdAt != null) {
    mapConfigGroupListItemList.createdAt = createdAt;
  }
  final String? updatedAt = jsonConvert.convert<String>(json['updated_at']);
  if (updatedAt != null) {
    mapConfigGroupListItemList.updatedAt = updatedAt;
  }
  return mapConfigGroupListItemList;
}

Map<String, dynamic> $MapConfigGroupListItemListToJson(
    MapConfigGroupListItemList entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['name'] = entity.name;
  data['display_order'] = entity.displayOrder;
  data['group_id'] = entity.groupId;
  data['operator_uid'] = entity.operatorUid;
  data['operator_name'] = entity.operatorName;
  data['icon_url'] = entity.iconUrl;
  data['link'] = entity.link;
  data['desc'] = entity.desc;
  data['created_at'] = entity.createdAt;
  data['updated_at'] = entity.updatedAt;
  return data;
}

extension MapConfigGroupListItemListExtension on MapConfigGroupListItemList {
  MapConfigGroupListItemList copyWith({
    String? id,
    String? name,
    int? displayOrder,
    String? groupId,
    String? operatorUid,
    String? operatorName,
    String? iconUrl,
    String? link,
    String? desc,
    String? createdAt,
    String? updatedAt,
  }) {
    return MapConfigGroupListItemList()
      ..id = id ?? this.id
      ..name = name ?? this.name
      ..displayOrder = displayOrder ?? this.displayOrder
      ..groupId = groupId ?? this.groupId
      ..operatorUid = operatorUid ?? this.operatorUid
      ..operatorName = operatorName ?? this.operatorName
      ..iconUrl = iconUrl ?? this.iconUrl
      ..link = link ?? this.link
      ..desc = desc ?? this.desc
      ..createdAt = createdAt ?? this.createdAt
      ..updatedAt = updatedAt ?? this.updatedAt;
  }
}