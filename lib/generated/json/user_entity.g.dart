import 'package:flutter_study/generated/json/base/json_convert_content.dart';
import 'package:flutter_study/api/response/common/user_entity.dart';

UserEntity $UserEntityFromJson(Map<String, dynamic> json) {
  final UserEntity userEntity = UserEntity();
  final int? uid = jsonConvert.convert<int>(json['uid']);
  if (uid != null) {
    userEntity.uid = uid;
  }
  final String? userName = jsonConvert.convert<String>(json['user_name']);
  if (userName != null) {
    userEntity.userName = userName;
  }
  final String? status = jsonConvert.convert<String>(json['status']);
  if (status != null) {
    userEntity.status = status;
  }
  final String? sign = jsonConvert.convert<String>(json['sign']);
  if (sign != null) {
    userEntity.sign = sign;
  }
  final String? warning = jsonConvert.convert<String>(json['warning']);
  if (warning != null) {
    userEntity.warning = warning;
  }
  final String? avatar = jsonConvert.convert<String>(json['avatar']);
  if (avatar != null) {
    userEntity.avatar = avatar;
  }
  final String? verify = jsonConvert.convert<String>(json['verify']);
  if (verify != null) {
    userEntity.verify = verify;
  }
  final String? highVerify = jsonConvert.convert<String>(json['high_verify']);
  if (highVerify != null) {
    userEntity.highVerify = highVerify;
  }
  final String? honourVerify = jsonConvert.convert<String>(
      json['honour_verify']);
  if (honourVerify != null) {
    userEntity.honourVerify = honourVerify;
  }
  final String? verifyNew = jsonConvert.convert<String>(json['verify_new']);
  if (verifyNew != null) {
    userEntity.verifyNew = verifyNew;
  }
  final String? verifyDesc = jsonConvert.convert<String>(json['verify_desc']);
  if (verifyDesc != null) {
    userEntity.verifyDesc = verifyDesc;
  }
  final String? gender = jsonConvert.convert<String>(json['gender']);
  if (gender != null) {
    userEntity.gender = gender;
  }
  final String? honourDesc = jsonConvert.convert<String>(json['honour_desc']);
  if (honourDesc != null) {
    userEntity.honourDesc = honourDesc;
  }
  final String? highDesc = jsonConvert.convert<String>(json['high_desc']);
  if (highDesc != null) {
    userEntity.highDesc = highDesc;
  }
  final String? boardPerm = jsonConvert.convert<String>(json['board_perm']);
  if (boardPerm != null) {
    userEntity.boardPerm = boardPerm;
  }
  final String? gid = jsonConvert.convert<String>(json['gid']);
  if (gid != null) {
    userEntity.gid = gid;
  }
  final String? groupRank = jsonConvert.convert<String>(json['group_rank']);
  if (groupRank != null) {
    userEntity.groupRank = groupRank;
  }
  final String? groupName = jsonConvert.convert<String>(json['group_name']);
  if (groupName != null) {
    userEntity.groupName = groupName;
  }
  final bool? isTenYear = jsonConvert.convert<bool>(json['is_ten_year']);
  if (isTenYear != null) {
    userEntity.isTenYear = isTenYear;
  }
  final bool? shiJiaShangJia = jsonConvert.convert<bool>(
      json['shi_jia_shang_jia']);
  if (shiJiaShangJia != null) {
    userEntity.shiJiaShangJia = shiJiaShangJia;
  }
  final String? shiJiaShangJiaDesc = jsonConvert.convert<String>(
      json['shi_jia_shang_jia_desc']);
  if (shiJiaShangJiaDesc != null) {
    userEntity.shiJiaShangJiaDesc = shiJiaShangJiaDesc;
  }
  final List<UserMedals>? medals = (json['medals'] as List<dynamic>?)?.map(
          (e) => jsonConvert.convert<UserMedals>(e) as UserMedals).toList();
  if (medals != null) {
    userEntity.medals = medals;
  }
  final String? pendantId = jsonConvert.convert<String>(json['pendant_id']);
  if (pendantId != null) {
    userEntity.pendantId = pendantId;
  }
  final String? cityname = jsonConvert.convert<String>(json['cityname']);
  if (cityname != null) {
    userEntity.cityname = cityname;
  }
  final String? originalAvatar = jsonConvert.convert<String>(
      json['original_avatar']);
  if (originalAvatar != null) {
    userEntity.originalAvatar = originalAvatar;
  }
  final String? smallAvatar = jsonConvert.convert<String>(json['small_avatar']);
  if (smallAvatar != null) {
    userEntity.smallAvatar = smallAvatar;
  }
  final String? latitude = jsonConvert.convert<String>(json['latitude']);
  if (latitude != null) {
    userEntity.latitude = latitude;
  }
  final String? longitude = jsonConvert.convert<String>(json['longitude']);
  if (longitude != null) {
    userEntity.longitude = longitude;
  }
  final String? totalZanCount = jsonConvert.convert<String>(
      json['total_zan_count']);
  if (totalZanCount != null) {
    userEntity.totalZanCount = totalZanCount;
  }
  final String? totalFansCount = jsonConvert.convert<String>(
      json['total_fans_count']);
  if (totalFansCount != null) {
    userEntity.totalFansCount = totalFansCount;
  }
  final String? totalFavCount = jsonConvert.convert<String>(
      json['total_fav_count']);
  if (totalFavCount != null) {
    userEntity.totalFavCount = totalFavCount;
  }
  return userEntity;
}

Map<String, dynamic> $UserEntityToJson(UserEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['uid'] = entity.uid;
  data['user_name'] = entity.userName;
  data['status'] = entity.status;
  data['sign'] = entity.sign;
  data['warning'] = entity.warning;
  data['avatar'] = entity.avatar;
  data['verify'] = entity.verify;
  data['high_verify'] = entity.highVerify;
  data['honour_verify'] = entity.honourVerify;
  data['verify_new'] = entity.verifyNew;
  data['verify_desc'] = entity.verifyDesc;
  data['gender'] = entity.gender;
  data['honour_desc'] = entity.honourDesc;
  data['high_desc'] = entity.highDesc;
  data['board_perm'] = entity.boardPerm;
  data['gid'] = entity.gid;
  data['group_rank'] = entity.groupRank;
  data['group_name'] = entity.groupName;
  data['is_ten_year'] = entity.isTenYear;
  data['shi_jia_shang_jia'] = entity.shiJiaShangJia;
  data['shi_jia_shang_jia_desc'] = entity.shiJiaShangJiaDesc;
  data['medals'] = entity.medals.map((v) => v.toJson()).toList();
  data['pendant_id'] = entity.pendantId;
  data['cityname'] = entity.cityname;
  data['original_avatar'] = entity.originalAvatar;
  data['small_avatar'] = entity.smallAvatar;
  data['latitude'] = entity.latitude;
  data['longitude'] = entity.longitude;
  data['total_zan_count'] = entity.totalZanCount;
  data['total_fans_count'] = entity.totalFansCount;
  data['total_fav_count'] = entity.totalFavCount;
  return data;
}

extension UserEntityExtension on UserEntity {
  UserEntity copyWith({
    int? uid,
    String? userName,
    String? status,
    String? sign,
    String? warning,
    String? avatar,
    String? verify,
    String? highVerify,
    String? honourVerify,
    String? verifyNew,
    String? verifyDesc,
    String? gender,
    String? honourDesc,
    String? highDesc,
    String? boardPerm,
    String? gid,
    String? groupRank,
    String? groupName,
    bool? isTenYear,
    bool? shiJiaShangJia,
    String? shiJiaShangJiaDesc,
    List<UserMedals>? medals,
    String? pendantId,
    String? cityname,
    String? originalAvatar,
    String? smallAvatar,
    String? latitude,
    String? longitude,
    String? totalZanCount,
    String? totalFansCount,
    String? totalFavCount,
  }) {
    return UserEntity()
      ..uid = uid ?? this.uid
      ..userName = userName ?? this.userName
      ..status = status ?? this.status
      ..sign = sign ?? this.sign
      ..warning = warning ?? this.warning
      ..avatar = avatar ?? this.avatar
      ..verify = verify ?? this.verify
      ..highVerify = highVerify ?? this.highVerify
      ..honourVerify = honourVerify ?? this.honourVerify
      ..verifyNew = verifyNew ?? this.verifyNew
      ..verifyDesc = verifyDesc ?? this.verifyDesc
      ..gender = gender ?? this.gender
      ..honourDesc = honourDesc ?? this.honourDesc
      ..highDesc = highDesc ?? this.highDesc
      ..boardPerm = boardPerm ?? this.boardPerm
      ..gid = gid ?? this.gid
      ..groupRank = groupRank ?? this.groupRank
      ..groupName = groupName ?? this.groupName
      ..isTenYear = isTenYear ?? this.isTenYear
      ..shiJiaShangJia = shiJiaShangJia ?? this.shiJiaShangJia
      ..shiJiaShangJiaDesc = shiJiaShangJiaDesc ?? this.shiJiaShangJiaDesc
      ..medals = medals ?? this.medals
      ..pendantId = pendantId ?? this.pendantId
      ..cityname = cityname ?? this.cityname
      ..originalAvatar = originalAvatar ?? this.originalAvatar
      ..smallAvatar = smallAvatar ?? this.smallAvatar
      ..latitude = latitude ?? this.latitude
      ..longitude = longitude ?? this.longitude
      ..totalZanCount = totalZanCount ?? this.totalZanCount
      ..totalFansCount = totalFansCount ?? this.totalFansCount
      ..totalFavCount = totalFavCount ?? this.totalFavCount;
  }
}

UserMedals $UserMedalsFromJson(Map<String, dynamic> json) {
  final UserMedals userMedals = UserMedals();
  final String? id = jsonConvert.convert<String>(json['id']);
  if (id != null) {
    userMedals.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    userMedals.name = name;
  }
  final String? requireValue = jsonConvert.convert<String>(
      json['require_value']);
  if (requireValue != null) {
    userMedals.requireValue = requireValue;
  }
  final String? requireDays = jsonConvert.convert<String>(json['require_days']);
  if (requireDays != null) {
    userMedals.requireDays = requireDays;
  }
  final String? iconUrl = jsonConvert.convert<String>(json['icon_url']);
  if (iconUrl != null) {
    userMedals.iconUrl = iconUrl;
  }
  final String? colorIconUrl = jsonConvert.convert<String>(
      json['color_icon_url']);
  if (colorIconUrl != null) {
    userMedals.colorIconUrl = colorIconUrl;
  }
  final String? tuwenIconUrl = jsonConvert.convert<String>(
      json['tuwen_icon_url']);
  if (tuwenIconUrl != null) {
    userMedals.tuwenIconUrl = tuwenIconUrl;
  }
  final String? description = jsonConvert.convert<String>(json['description']);
  if (description != null) {
    userMedals.description = description;
  }
  final String? cityId = jsonConvert.convert<String>(json['city_id']);
  if (cityId != null) {
    userMedals.cityId = cityId;
  }
  final String? groupId = jsonConvert.convert<String>(json['group_id']);
  if (groupId != null) {
    userMedals.groupId = groupId;
  }
  final String? sortId = jsonConvert.convert<String>(json['sort_id']);
  if (sortId != null) {
    userMedals.sortId = sortId;
  }
  final bool? awarded = jsonConvert.convert<bool>(json['awarded']);
  if (awarded != null) {
    userMedals.awarded = awarded;
  }
  final bool? isNew = jsonConvert.convert<bool>(json['is_new']);
  if (isNew != null) {
    userMedals.isNew = isNew;
  }
  final bool? online = jsonConvert.convert<bool>(json['online']);
  if (online != null) {
    userMedals.online = online;
  }
  final String? groupName = jsonConvert.convert<String>(json['group_name']);
  if (groupName != null) {
    userMedals.groupName = groupName;
  }
  final bool? wearing = jsonConvert.convert<bool>(json['wearing']);
  if (wearing != null) {
    userMedals.wearing = wearing;
  }
  final bool? growing = jsonConvert.convert<bool>(json['growing']);
  if (growing != null) {
    userMedals.growing = growing;
  }
  final String? createdAt = jsonConvert.convert<String>(json['created_at']);
  if (createdAt != null) {
    userMedals.createdAt = createdAt;
  }
  final String? updatedAt = jsonConvert.convert<String>(json['updated_at']);
  if (updatedAt != null) {
    userMedals.updatedAt = updatedAt;
  }
  final String? actionId = jsonConvert.convert<String>(json['action_id']);
  if (actionId != null) {
    userMedals.actionId = actionId;
  }
  final String? statisticsType = jsonConvert.convert<String>(
      json['statistics_type']);
  if (statisticsType != null) {
    userMedals.statisticsType = statisticsType;
  }
  final String? buttonName = jsonConvert.convert<String>(json['button_name']);
  if (buttonName != null) {
    userMedals.buttonName = buttonName;
  }
  final bool? buttonDisplay = jsonConvert.convert<bool>(json['button_display']);
  if (buttonDisplay != null) {
    userMedals.buttonDisplay = buttonDisplay;
  }
  final String? linkUrl = jsonConvert.convert<String>(json['link_url']);
  if (linkUrl != null) {
    userMedals.linkUrl = linkUrl;
  }
  final String? value = jsonConvert.convert<String>(json['value']);
  if (value != null) {
    userMedals.value = value;
  }
  final String? sourceId = jsonConvert.convert<String>(json['source_id']);
  if (sourceId != null) {
    userMedals.sourceId = sourceId;
  }
  final String? fid = jsonConvert.convert<String>(json['fid']);
  if (fid != null) {
    userMedals.fid = fid;
  }
  final String? groupStatus = jsonConvert.convert<String>(json['group_status']);
  if (groupStatus != null) {
    userMedals.groupStatus = groupStatus;
  }
  final bool? autoWearing = jsonConvert.convert<bool>(json['auto_wearing']);
  if (autoWearing != null) {
    userMedals.autoWearing = autoWearing;
  }
  final bool? linkDisplay = jsonConvert.convert<bool>(json['link_display']);
  if (linkDisplay != null) {
    userMedals.linkDisplay = linkDisplay;
  }
  return userMedals;
}

Map<String, dynamic> $UserMedalsToJson(UserMedals entity) {
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

extension UserMedalsExtension on UserMedals {
  UserMedals copyWith({
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
    return UserMedals()
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