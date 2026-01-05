import 'package:flutter_study/generated/json/base/json_convert_content.dart';
import 'package:flutter_study/api/response/common/medal_entity.dart';

MedalEntity $MedalEntityFromJson(Map<String, dynamic> json) {
  final MedalEntity medalEntity = MedalEntity();
  final String? id = jsonConvert.convert<String>(json['id']);
  if (id != null) {
    medalEntity.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    medalEntity.name = name;
  }
  final String? requireValue = jsonConvert.convert<String>(
      json['require_value']);
  if (requireValue != null) {
    medalEntity.requireValue = requireValue;
  }
  final String? requireDays = jsonConvert.convert<String>(json['require_days']);
  if (requireDays != null) {
    medalEntity.requireDays = requireDays;
  }
  final String? iconUrl = jsonConvert.convert<String>(json['icon_url']);
  if (iconUrl != null) {
    medalEntity.iconUrl = iconUrl;
  }
  final String? colorIconUrl = jsonConvert.convert<String>(
      json['color_icon_url']);
  if (colorIconUrl != null) {
    medalEntity.colorIconUrl = colorIconUrl;
  }
  final String? tuwenIconUrl = jsonConvert.convert<String>(
      json['tuwen_icon_url']);
  if (tuwenIconUrl != null) {
    medalEntity.tuwenIconUrl = tuwenIconUrl;
  }
  final String? description = jsonConvert.convert<String>(json['description']);
  if (description != null) {
    medalEntity.description = description;
  }
  final String? cityId = jsonConvert.convert<String>(json['city_id']);
  if (cityId != null) {
    medalEntity.cityId = cityId;
  }
  final String? groupId = jsonConvert.convert<String>(json['group_id']);
  if (groupId != null) {
    medalEntity.groupId = groupId;
  }
  final String? sortId = jsonConvert.convert<String>(json['sort_id']);
  if (sortId != null) {
    medalEntity.sortId = sortId;
  }
  final bool? awarded = jsonConvert.convert<bool>(json['awarded']);
  if (awarded != null) {
    medalEntity.awarded = awarded;
  }
  final bool? isNew = jsonConvert.convert<bool>(json['is_new']);
  if (isNew != null) {
    medalEntity.isNew = isNew;
  }
  final bool? online = jsonConvert.convert<bool>(json['online']);
  if (online != null) {
    medalEntity.online = online;
  }
  final String? groupName = jsonConvert.convert<String>(json['group_name']);
  if (groupName != null) {
    medalEntity.groupName = groupName;
  }
  final bool? wearing = jsonConvert.convert<bool>(json['wearing']);
  if (wearing != null) {
    medalEntity.wearing = wearing;
  }
  final bool? growing = jsonConvert.convert<bool>(json['growing']);
  if (growing != null) {
    medalEntity.growing = growing;
  }
  final String? createdAt = jsonConvert.convert<String>(json['created_at']);
  if (createdAt != null) {
    medalEntity.createdAt = createdAt;
  }
  final String? updatedAt = jsonConvert.convert<String>(json['updated_at']);
  if (updatedAt != null) {
    medalEntity.updatedAt = updatedAt;
  }
  final String? actionId = jsonConvert.convert<String>(json['action_id']);
  if (actionId != null) {
    medalEntity.actionId = actionId;
  }
  final String? statisticsType = jsonConvert.convert<String>(
      json['statistics_type']);
  if (statisticsType != null) {
    medalEntity.statisticsType = statisticsType;
  }
  final String? buttonName = jsonConvert.convert<String>(json['button_name']);
  if (buttonName != null) {
    medalEntity.buttonName = buttonName;
  }
  final bool? buttonDisplay = jsonConvert.convert<bool>(json['button_display']);
  if (buttonDisplay != null) {
    medalEntity.buttonDisplay = buttonDisplay;
  }
  final String? linkUrl = jsonConvert.convert<String>(json['link_url']);
  if (linkUrl != null) {
    medalEntity.linkUrl = linkUrl;
  }
  final String? value = jsonConvert.convert<String>(json['value']);
  if (value != null) {
    medalEntity.value = value;
  }
  final String? sourceId = jsonConvert.convert<String>(json['source_id']);
  if (sourceId != null) {
    medalEntity.sourceId = sourceId;
  }
  final String? fid = jsonConvert.convert<String>(json['fid']);
  if (fid != null) {
    medalEntity.fid = fid;
  }
  final String? groupStatus = jsonConvert.convert<String>(json['group_status']);
  if (groupStatus != null) {
    medalEntity.groupStatus = groupStatus;
  }
  final bool? autoWearing = jsonConvert.convert<bool>(json['auto_wearing']);
  if (autoWearing != null) {
    medalEntity.autoWearing = autoWearing;
  }
  final bool? linkDisplay = jsonConvert.convert<bool>(json['link_display']);
  if (linkDisplay != null) {
    medalEntity.linkDisplay = linkDisplay;
  }
  return medalEntity;
}

Map<String, dynamic> $MedalEntityToJson(MedalEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['name'] = entity.name;
  data['require_value'] = entity.requireValue;
  data['require_days'] = entity.requireDays;
  data['icon_url'] = entity.iconUrl;
  data['color_icon_url'] = entity.colorIconUrl;
  data['tuwen_icon_url'] = entity.tuwenIconUrl;
  data['description'] = entity.description;
  data['city_id'] = entity.cityId;
  data['group_id'] = entity.groupId;
  data['sort_id'] = entity.sortId;
  data['awarded'] = entity.awarded;
  data['is_new'] = entity.isNew;
  data['online'] = entity.online;
  data['group_name'] = entity.groupName;
  data['wearing'] = entity.wearing;
  data['growing'] = entity.growing;
  data['created_at'] = entity.createdAt;
  data['updated_at'] = entity.updatedAt;
  data['action_id'] = entity.actionId;
  data['statistics_type'] = entity.statisticsType;
  data['button_name'] = entity.buttonName;
  data['button_display'] = entity.buttonDisplay;
  data['link_url'] = entity.linkUrl;
  data['value'] = entity.value;
  data['source_id'] = entity.sourceId;
  data['fid'] = entity.fid;
  data['group_status'] = entity.groupStatus;
  data['auto_wearing'] = entity.autoWearing;
  data['link_display'] = entity.linkDisplay;
  return data;
}

extension MedalEntityExtension on MedalEntity {
  MedalEntity copyWith({
    String? id,
    String? name,
    String? requireValue,
    String? requireDays,
    String? iconUrl,
    String? colorIconUrl,
    String? tuwenIconUrl,
    String? description,
    String? cityId,
    String? groupId,
    String? sortId,
    bool? awarded,
    bool? isNew,
    bool? online,
    String? groupName,
    bool? wearing,
    bool? growing,
    String? createdAt,
    String? updatedAt,
    String? actionId,
    String? statisticsType,
    String? buttonName,
    bool? buttonDisplay,
    String? linkUrl,
    String? value,
    String? sourceId,
    String? fid,
    String? groupStatus,
    bool? autoWearing,
    bool? linkDisplay,
  }) {
    return MedalEntity()
      ..id = id ?? this.id
      ..name = name ?? this.name
      ..requireValue = requireValue ?? this.requireValue
      ..requireDays = requireDays ?? this.requireDays
      ..iconUrl = iconUrl ?? this.iconUrl
      ..colorIconUrl = colorIconUrl ?? this.colorIconUrl
      ..tuwenIconUrl = tuwenIconUrl ?? this.tuwenIconUrl
      ..description = description ?? this.description
      ..cityId = cityId ?? this.cityId
      ..groupId = groupId ?? this.groupId
      ..sortId = sortId ?? this.sortId
      ..awarded = awarded ?? this.awarded
      ..isNew = isNew ?? this.isNew
      ..online = online ?? this.online
      ..groupName = groupName ?? this.groupName
      ..wearing = wearing ?? this.wearing
      ..growing = growing ?? this.growing
      ..createdAt = createdAt ?? this.createdAt
      ..updatedAt = updatedAt ?? this.updatedAt
      ..actionId = actionId ?? this.actionId
      ..statisticsType = statisticsType ?? this.statisticsType
      ..buttonName = buttonName ?? this.buttonName
      ..buttonDisplay = buttonDisplay ?? this.buttonDisplay
      ..linkUrl = linkUrl ?? this.linkUrl
      ..value = value ?? this.value
      ..sourceId = sourceId ?? this.sourceId
      ..fid = fid ?? this.fid
      ..groupStatus = groupStatus ?? this.groupStatus
      ..autoWearing = autoWearing ?? this.autoWearing
      ..linkDisplay = linkDisplay ?? this.linkDisplay;
  }
}