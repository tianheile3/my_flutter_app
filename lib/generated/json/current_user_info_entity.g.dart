import 'package:flutter_study/generated/json/base/json_convert_content.dart';
import 'package:flutter_study/api/response/current_user_info_entity.dart';

CurrentUserInfoEntity $CurrentUserInfoEntityFromJson(
    Map<String, dynamic> json) {
  final CurrentUserInfoEntity currentUserInfoEntity = CurrentUserInfoEntity();
  final String? code = jsonConvert.convert<String>(json['code']);
  if (code != null) {
    currentUserInfoEntity.code = code;
  }
  final String? message = jsonConvert.convert<String>(json['message']);
  if (message != null) {
    currentUserInfoEntity.message = message;
  }
  final CurrentUserInfoUser? user = jsonConvert.convert<CurrentUserInfoUser>(
      json['user']);
  if (user != null) {
    currentUserInfoEntity.user = user;
  }
  return currentUserInfoEntity;
}

Map<String, dynamic> $CurrentUserInfoEntityToJson(
    CurrentUserInfoEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['code'] = entity.code;
  data['message'] = entity.message;
  data['user'] = entity.user.toJson();
  return data;
}

extension CurrentUserInfoEntityExtension on CurrentUserInfoEntity {
  CurrentUserInfoEntity copyWith({
    String? code,
    String? message,
    CurrentUserInfoUser? user,
  }) {
    return CurrentUserInfoEntity()
      ..code = code ?? this.code
      ..message = message ?? this.message
      ..user = user ?? this.user;
  }
}

CurrentUserInfoUser $CurrentUserInfoUserFromJson(Map<String, dynamic> json) {
  final CurrentUserInfoUser currentUserInfoUser = CurrentUserInfoUser();
  final CurrentUserInfoUserGroup? group = jsonConvert.convert<
      CurrentUserInfoUserGroup>(json['group']);
  if (group != null) {
    currentUserInfoUser.group = group;
  }
  final String? avatar = jsonConvert.convert<String>(json['avatar']);
  if (avatar != null) {
    currentUserInfoUser.avatar = avatar;
  }
  final int? uid = jsonConvert.convert<int>(json['uid']);
  if (uid != null) {
    currentUserInfoUser.uid = uid;
  }
  final String? userName = jsonConvert.convert<String>(json['user_name']);
  if (userName != null) {
    currentUserInfoUser.userName = userName;
  }
  final String? searchUserName = jsonConvert.convert<String>(
      json['search_user_name']);
  if (searchUserName != null) {
    currentUserInfoUser.searchUserName = searchUserName;
  }
  final String? oldUserName = jsonConvert.convert<String>(
      json['old_user_name']);
  if (oldUserName != null) {
    currentUserInfoUser.oldUserName = oldUserName;
  }
  final String? verifyNew = jsonConvert.convert<String>(json['verify_new']);
  if (verifyNew != null) {
    currentUserInfoUser.verifyNew = verifyNew;
  }
  final String? verifyDesc = jsonConvert.convert<String>(json['verify_desc']);
  if (verifyDesc != null) {
    currentUserInfoUser.verifyDesc = verifyDesc;
  }
  final String? originalAvatar = jsonConvert.convert<String>(
      json['original_avatar']);
  if (originalAvatar != null) {
    currentUserInfoUser.originalAvatar = originalAvatar;
  }
  final String? smallAvatar = jsonConvert.convert<String>(json['small_avatar']);
  if (smallAvatar != null) {
    currentUserInfoUser.smallAvatar = smallAvatar;
  }
  final String? gender = jsonConvert.convert<String>(json['gender']);
  if (gender != null) {
    currentUserInfoUser.gender = gender;
  }
  final String? genderPrivate = jsonConvert.convert<String>(
      json['gender_private']);
  if (genderPrivate != null) {
    currentUserInfoUser.genderPrivate = genderPrivate;
  }
  final String? lifeStage = jsonConvert.convert<String>(json['life_stage']);
  if (lifeStage != null) {
    currentUserInfoUser.lifeStage = lifeStage;
  }
  final String? sign = jsonConvert.convert<String>(json['sign']);
  if (sign != null) {
    currentUserInfoUser.sign = sign;
  }
  final String? address = jsonConvert.convert<String>(json['address']);
  if (address != null) {
    currentUserInfoUser.address = address;
  }
  final String? birthday = jsonConvert.convert<String>(json['birthday']);
  if (birthday != null) {
    currentUserInfoUser.birthday = birthday;
  }
  final String? threads = jsonConvert.convert<String>(json['threads']);
  if (threads != null) {
    currentUserInfoUser.threads = threads;
  }
  final String? posts = jsonConvert.convert<String>(json['posts']);
  if (posts != null) {
    currentUserInfoUser.posts = posts;
  }
  final String? comments = jsonConvert.convert<String>(json['comments']);
  if (comments != null) {
    currentUserInfoUser.comments = comments;
  }
  final String? gatherNum = jsonConvert.convert<String>(json['gather_num']);
  if (gatherNum != null) {
    currentUserInfoUser.gatherNum = gatherNum;
  }
  final String? louNewsNum = jsonConvert.convert<String>(json['lou_news_num']);
  if (louNewsNum != null) {
    currentUserInfoUser.louNewsNum = louNewsNum;
  }
  final String? favCount = jsonConvert.convert<String>(json['fav_count']);
  if (favCount != null) {
    currentUserInfoUser.favCount = favCount;
  }
  final String? attendCount = jsonConvert.convert<String>(json['attend_count']);
  if (attendCount != null) {
    currentUserInfoUser.attendCount = attendCount;
  }
  final String? fansCount = jsonConvert.convert<String>(json['fans_count']);
  if (fansCount != null) {
    currentUserInfoUser.fansCount = fansCount;
  }
  final String? todayfansCount = jsonConvert.convert<String>(
      json['todayfans_count']);
  if (todayfansCount != null) {
    currentUserInfoUser.todayfansCount = todayfansCount;
  }
  final String? boardCount = jsonConvert.convert<String>(json['board_count']);
  if (boardCount != null) {
    currentUserInfoUser.boardCount = boardCount;
  }
  final String? zanNum = jsonConvert.convert<String>(json['zan_num']);
  if (zanNum != null) {
    currentUserInfoUser.zanNum = zanNum;
  }
  final String? rateNum = jsonConvert.convert<String>(json['rate_num']);
  if (rateNum != null) {
    currentUserInfoUser.rateNum = rateNum;
  }
  final String? medalNum = jsonConvert.convert<String>(json['medal_num']);
  if (medalNum != null) {
    currentUserInfoUser.medalNum = medalNum;
  }
  final String? color = jsonConvert.convert<String>(json['color']);
  if (color != null) {
    currentUserInfoUser.color = color;
  }
  final String? gold = jsonConvert.convert<String>(json['gold']);
  if (gold != null) {
    currentUserInfoUser.gold = gold;
  }
  final List<CurrentUserInfoUserMedals>? medals = (json['medals'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<CurrentUserInfoUserMedals>(
          e) as CurrentUserInfoUserMedals).toList();
  if (medals != null) {
    currentUserInfoUser.medals = medals;
  }
  final String? prestige = jsonConvert.convert<String>(json['prestige']);
  if (prestige != null) {
    currentUserInfoUser.prestige = prestige;
  }
  final String? regTime = jsonConvert.convert<String>(json['reg_time']);
  if (regTime != null) {
    currentUserInfoUser.regTime = regTime;
  }
  final String? location = jsonConvert.convert<String>(json['location']);
  if (location != null) {
    currentUserInfoUser.location = location;
  }
  final String? verify = jsonConvert.convert<String>(json['verify']);
  if (verify != null) {
    currentUserInfoUser.verify = verify;
  }
  final String? highVerify = jsonConvert.convert<String>(json['high_verify']);
  if (highVerify != null) {
    currentUserInfoUser.highVerify = highVerify;
  }
  final String? highDesc = jsonConvert.convert<String>(json['high_desc']);
  if (highDesc != null) {
    currentUserInfoUser.highDesc = highDesc;
  }
  final String? honourVerify = jsonConvert.convert<String>(
      json['honour_verify']);
  if (honourVerify != null) {
    currentUserInfoUser.honourVerify = honourVerify;
  }
  final String? honourDesc = jsonConvert.convert<String>(json['honour_desc']);
  if (honourDesc != null) {
    currentUserInfoUser.honourDesc = honourDesc;
  }
  final String? realVerify = jsonConvert.convert<String>(json['real_verify']);
  if (realVerify != null) {
    currentUserInfoUser.realVerify = realVerify;
  }
  final String? atNum = jsonConvert.convert<String>(json['at_num']);
  if (atNum != null) {
    currentUserInfoUser.atNum = atNum;
  }
  final bool? active = jsonConvert.convert<bool>(json['active']);
  if (active != null) {
    currentUserInfoUser.active = active;
  }
  final bool? qqBind = jsonConvert.convert<bool>(json['qq_bind']);
  if (qqBind != null) {
    currentUserInfoUser.qqBind = qqBind;
  }
  final bool? qihooBind = jsonConvert.convert<bool>(json['qihoo_bind']);
  if (qihooBind != null) {
    currentUserInfoUser.qihooBind = qihooBind;
  }
  final bool? mobileBind = jsonConvert.convert<bool>(json['mobile_bind']);
  if (mobileBind != null) {
    currentUserInfoUser.mobileBind = mobileBind;
  }
  final bool? emailBind = jsonConvert.convert<bool>(json['email_bind']);
  if (emailBind != null) {
    currentUserInfoUser.emailBind = emailBind;
  }
  final bool? sinaBind = jsonConvert.convert<bool>(json['sina_bind']);
  if (sinaBind != null) {
    currentUserInfoUser.sinaBind = sinaBind;
  }
  final bool? weixinBind = jsonConvert.convert<bool>(json['weixin_bind']);
  if (weixinBind != null) {
    currentUserInfoUser.weixinBind = weixinBind;
  }
  final bool? isTenYear = jsonConvert.convert<bool>(json['is_ten_year']);
  if (isTenYear != null) {
    currentUserInfoUser.isTenYear = isTenYear;
  }
  final bool? shiJiaShangJia = jsonConvert.convert<bool>(
      json['shi_jia_shang_jia']);
  if (shiJiaShangJia != null) {
    currentUserInfoUser.shiJiaShangJia = shiJiaShangJia;
  }
  final String? shiJiaShangJiaDesc = jsonConvert.convert<String>(
      json['shi_jia_shang_jia_desc']);
  if (shiJiaShangJiaDesc != null) {
    currentUserInfoUser.shiJiaShangJiaDesc = shiJiaShangJiaDesc;
  }
  final bool? isSecurity = jsonConvert.convert<bool>(json['is_security']);
  if (isSecurity != null) {
    currentUserInfoUser.isSecurity = isSecurity;
  }
  final bool? isAbnormal = jsonConvert.convert<bool>(json['is_abnormal']);
  if (isAbnormal != null) {
    currentUserInfoUser.isAbnormal = isAbnormal;
  }
  final String? uidEncrypt = jsonConvert.convert<String>(json['uid_encrypt']);
  if (uidEncrypt != null) {
    currentUserInfoUser.uidEncrypt = uidEncrypt;
  }
  final bool? appUser = jsonConvert.convert<bool>(json['app_user']);
  if (appUser != null) {
    currentUserInfoUser.appUser = appUser;
  }
  final String? infoProgress = jsonConvert.convert<String>(
      json['info_progress']);
  if (infoProgress != null) {
    currentUserInfoUser.infoProgress = infoProgress;
  }
  final String? userType = jsonConvert.convert<String>(json['user_type']);
  if (userType != null) {
    currentUserInfoUser.userType = userType;
  }
  final String? lastLoginTime = jsonConvert.convert<String>(
      json['last_login_time']);
  if (lastLoginTime != null) {
    currentUserInfoUser.lastLoginTime = lastLoginTime;
  }
  final bool? isMainId = jsonConvert.convert<bool>(json['is_main_id']);
  if (isMainId != null) {
    currentUserInfoUser.isMainId = isMainId;
  }
  return currentUserInfoUser;
}

Map<String, dynamic> $CurrentUserInfoUserToJson(CurrentUserInfoUser entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['group'] = entity.group.toJson();
  data['avatar'] = entity.avatar;
  data['uid'] = entity.uid;
  data['user_name'] = entity.userName;
  data['search_user_name'] = entity.searchUserName;
  data['old_user_name'] = entity.oldUserName;
  data['verify_new'] = entity.verifyNew;
  data['verify_desc'] = entity.verifyDesc;
  data['original_avatar'] = entity.originalAvatar;
  data['small_avatar'] = entity.smallAvatar;
  data['gender'] = entity.gender;
  data['gender_private'] = entity.genderPrivate;
  data['life_stage'] = entity.lifeStage;
  data['sign'] = entity.sign;
  data['address'] = entity.address;
  data['birthday'] = entity.birthday;
  data['threads'] = entity.threads;
  data['posts'] = entity.posts;
  data['comments'] = entity.comments;
  data['gather_num'] = entity.gatherNum;
  data['lou_news_num'] = entity.louNewsNum;
  data['fav_count'] = entity.favCount;
  data['attend_count'] = entity.attendCount;
  data['fans_count'] = entity.fansCount;
  data['todayfans_count'] = entity.todayfansCount;
  data['board_count'] = entity.boardCount;
  data['zan_num'] = entity.zanNum;
  data['rate_num'] = entity.rateNum;
  data['medal_num'] = entity.medalNum;
  data['color'] = entity.color;
  data['gold'] = entity.gold;
  data['medals'] = entity.medals.map((v) => v.toJson()).toList();
  data['prestige'] = entity.prestige;
  data['reg_time'] = entity.regTime;
  data['location'] = entity.location;
  data['verify'] = entity.verify;
  data['high_verify'] = entity.highVerify;
  data['high_desc'] = entity.highDesc;
  data['honour_verify'] = entity.honourVerify;
  data['honour_desc'] = entity.honourDesc;
  data['real_verify'] = entity.realVerify;
  data['at_num'] = entity.atNum;
  data['active'] = entity.active;
  data['qq_bind'] = entity.qqBind;
  data['qihoo_bind'] = entity.qihooBind;
  data['mobile_bind'] = entity.mobileBind;
  data['email_bind'] = entity.emailBind;
  data['sina_bind'] = entity.sinaBind;
  data['weixin_bind'] = entity.weixinBind;
  data['is_ten_year'] = entity.isTenYear;
  data['shi_jia_shang_jia'] = entity.shiJiaShangJia;
  data['shi_jia_shang_jia_desc'] = entity.shiJiaShangJiaDesc;
  data['is_security'] = entity.isSecurity;
  data['is_abnormal'] = entity.isAbnormal;
  data['uid_encrypt'] = entity.uidEncrypt;
  data['app_user'] = entity.appUser;
  data['info_progress'] = entity.infoProgress;
  data['user_type'] = entity.userType;
  data['last_login_time'] = entity.lastLoginTime;
  data['is_main_id'] = entity.isMainId;
  return data;
}

extension CurrentUserInfoUserExtension on CurrentUserInfoUser {
  CurrentUserInfoUser copyWith({
    CurrentUserInfoUserGroup? group,
    String? avatar,
    int? uid,
    String? userName,
    String? searchUserName,
    String? oldUserName,
    String? verifyNew,
    String? verifyDesc,
    String? originalAvatar,
    String? smallAvatar,
    String? gender,
    String? genderPrivate,
    String? lifeStage,
    String? sign,
    String? address,
    String? birthday,
    String? threads,
    String? posts,
    String? comments,
    String? gatherNum,
    String? louNewsNum,
    String? favCount,
    String? attendCount,
    String? fansCount,
    String? todayfansCount,
    String? boardCount,
    String? zanNum,
    String? rateNum,
    String? medalNum,
    String? color,
    String? gold,
    List<CurrentUserInfoUserMedals>? medals,
    String? prestige,
    String? regTime,
    String? location,
    String? verify,
    String? highVerify,
    String? highDesc,
    String? honourVerify,
    String? honourDesc,
    String? realVerify,
    String? atNum,
    bool? active,
    bool? qqBind,
    bool? qihooBind,
    bool? mobileBind,
    bool? emailBind,
    bool? sinaBind,
    bool? weixinBind,
    bool? isTenYear,
    bool? shiJiaShangJia,
    String? shiJiaShangJiaDesc,
    bool? isSecurity,
    bool? isAbnormal,
    String? uidEncrypt,
    bool? appUser,
    String? infoProgress,
    String? userType,
    String? lastLoginTime,
    bool? isMainId,
  }) {
    return CurrentUserInfoUser()
      ..group = group ?? this.group
      ..avatar = avatar ?? this.avatar
      ..uid = uid ?? this.uid
      ..userName = userName ?? this.userName
      ..searchUserName = searchUserName ?? this.searchUserName
      ..oldUserName = oldUserName ?? this.oldUserName
      ..verifyNew = verifyNew ?? this.verifyNew
      ..verifyDesc = verifyDesc ?? this.verifyDesc
      ..originalAvatar = originalAvatar ?? this.originalAvatar
      ..smallAvatar = smallAvatar ?? this.smallAvatar
      ..gender = gender ?? this.gender
      ..genderPrivate = genderPrivate ?? this.genderPrivate
      ..lifeStage = lifeStage ?? this.lifeStage
      ..sign = sign ?? this.sign
      ..address = address ?? this.address
      ..birthday = birthday ?? this.birthday
      ..threads = threads ?? this.threads
      ..posts = posts ?? this.posts
      ..comments = comments ?? this.comments
      ..gatherNum = gatherNum ?? this.gatherNum
      ..louNewsNum = louNewsNum ?? this.louNewsNum
      ..favCount = favCount ?? this.favCount
      ..attendCount = attendCount ?? this.attendCount
      ..fansCount = fansCount ?? this.fansCount
      ..todayfansCount = todayfansCount ?? this.todayfansCount
      ..boardCount = boardCount ?? this.boardCount
      ..zanNum = zanNum ?? this.zanNum
      ..rateNum = rateNum ?? this.rateNum
      ..medalNum = medalNum ?? this.medalNum
      ..color = color ?? this.color
      ..gold = gold ?? this.gold
      ..medals = medals ?? this.medals
      ..prestige = prestige ?? this.prestige
      ..regTime = regTime ?? this.regTime
      ..location = location ?? this.location
      ..verify = verify ?? this.verify
      ..highVerify = highVerify ?? this.highVerify
      ..highDesc = highDesc ?? this.highDesc
      ..honourVerify = honourVerify ?? this.honourVerify
      ..honourDesc = honourDesc ?? this.honourDesc
      ..realVerify = realVerify ?? this.realVerify
      ..atNum = atNum ?? this.atNum
      ..active = active ?? this.active
      ..qqBind = qqBind ?? this.qqBind
      ..qihooBind = qihooBind ?? this.qihooBind
      ..mobileBind = mobileBind ?? this.mobileBind
      ..emailBind = emailBind ?? this.emailBind
      ..sinaBind = sinaBind ?? this.sinaBind
      ..weixinBind = weixinBind ?? this.weixinBind
      ..isTenYear = isTenYear ?? this.isTenYear
      ..shiJiaShangJia = shiJiaShangJia ?? this.shiJiaShangJia
      ..shiJiaShangJiaDesc = shiJiaShangJiaDesc ?? this.shiJiaShangJiaDesc
      ..isSecurity = isSecurity ?? this.isSecurity
      ..isAbnormal = isAbnormal ?? this.isAbnormal
      ..uidEncrypt = uidEncrypt ?? this.uidEncrypt
      ..appUser = appUser ?? this.appUser
      ..infoProgress = infoProgress ?? this.infoProgress
      ..userType = userType ?? this.userType
      ..lastLoginTime = lastLoginTime ?? this.lastLoginTime
      ..isMainId = isMainId ?? this.isMainId;
  }
}

CurrentUserInfoUserGroup $CurrentUserInfoUserGroupFromJson(
    Map<String, dynamic> json) {
  final CurrentUserInfoUserGroup currentUserInfoUserGroup = CurrentUserInfoUserGroup();
  final String? gid = jsonConvert.convert<String>(json['gid']);
  if (gid != null) {
    currentUserInfoUserGroup.gid = gid;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    currentUserInfoUserGroup.name = name;
  }
  final String? category = jsonConvert.convert<String>(json['category']);
  if (category != null) {
    currentUserInfoUserGroup.category = category;
  }
  final String? rank = jsonConvert.convert<String>(json['rank']);
  if (rank != null) {
    currentUserInfoUserGroup.rank = rank;
  }
  final String? picture = jsonConvert.convert<String>(json['picture']);
  if (picture != null) {
    currentUserInfoUserGroup.picture = picture;
  }
  return currentUserInfoUserGroup;
}

Map<String, dynamic> $CurrentUserInfoUserGroupToJson(
    CurrentUserInfoUserGroup entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['gid'] = entity.gid;
  data['name'] = entity.name;
  data['category'] = entity.category;
  data['rank'] = entity.rank;
  data['picture'] = entity.picture;
  return data;
}

extension CurrentUserInfoUserGroupExtension on CurrentUserInfoUserGroup {
  CurrentUserInfoUserGroup copyWith({
    String? gid,
    String? name,
    String? category,
    String? rank,
    String? picture,
  }) {
    return CurrentUserInfoUserGroup()
      ..gid = gid ?? this.gid
      ..name = name ?? this.name
      ..category = category ?? this.category
      ..rank = rank ?? this.rank
      ..picture = picture ?? this.picture;
  }
}

CurrentUserInfoUserMedals $CurrentUserInfoUserMedalsFromJson(
    Map<String, dynamic> json) {
  final CurrentUserInfoUserMedals currentUserInfoUserMedals = CurrentUserInfoUserMedals();
  final String? id = jsonConvert.convert<String>(json['id']);
  if (id != null) {
    currentUserInfoUserMedals.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    currentUserInfoUserMedals.name = name;
  }
  final String? requireValue = jsonConvert.convert<String>(
      json['require_value']);
  if (requireValue != null) {
    currentUserInfoUserMedals.requireValue = requireValue;
  }
  final String? requireDays = jsonConvert.convert<String>(json['require_days']);
  if (requireDays != null) {
    currentUserInfoUserMedals.requireDays = requireDays;
  }
  final String? iconUrl = jsonConvert.convert<String>(json['icon_url']);
  if (iconUrl != null) {
    currentUserInfoUserMedals.iconUrl = iconUrl;
  }
  final String? colorIconUrl = jsonConvert.convert<String>(
      json['color_icon_url']);
  if (colorIconUrl != null) {
    currentUserInfoUserMedals.colorIconUrl = colorIconUrl;
  }
  final String? tuwenIconUrl = jsonConvert.convert<String>(
      json['tuwen_icon_url']);
  if (tuwenIconUrl != null) {
    currentUserInfoUserMedals.tuwenIconUrl = tuwenIconUrl;
  }
  final String? description = jsonConvert.convert<String>(json['description']);
  if (description != null) {
    currentUserInfoUserMedals.description = description;
  }
  final String? cityId = jsonConvert.convert<String>(json['city_id']);
  if (cityId != null) {
    currentUserInfoUserMedals.cityId = cityId;
  }
  final String? groupId = jsonConvert.convert<String>(json['group_id']);
  if (groupId != null) {
    currentUserInfoUserMedals.groupId = groupId;
  }
  final String? sortId = jsonConvert.convert<String>(json['sort_id']);
  if (sortId != null) {
    currentUserInfoUserMedals.sortId = sortId;
  }
  final bool? awarded = jsonConvert.convert<bool>(json['awarded']);
  if (awarded != null) {
    currentUserInfoUserMedals.awarded = awarded;
  }
  final bool? isNew = jsonConvert.convert<bool>(json['is_new']);
  if (isNew != null) {
    currentUserInfoUserMedals.isNew = isNew;
  }
  final bool? online = jsonConvert.convert<bool>(json['online']);
  if (online != null) {
    currentUserInfoUserMedals.online = online;
  }
  final String? groupName = jsonConvert.convert<String>(json['group_name']);
  if (groupName != null) {
    currentUserInfoUserMedals.groupName = groupName;
  }
  final bool? wearing = jsonConvert.convert<bool>(json['wearing']);
  if (wearing != null) {
    currentUserInfoUserMedals.wearing = wearing;
  }
  final bool? growing = jsonConvert.convert<bool>(json['growing']);
  if (growing != null) {
    currentUserInfoUserMedals.growing = growing;
  }
  final String? createdAt = jsonConvert.convert<String>(json['created_at']);
  if (createdAt != null) {
    currentUserInfoUserMedals.createdAt = createdAt;
  }
  final String? updatedAt = jsonConvert.convert<String>(json['updated_at']);
  if (updatedAt != null) {
    currentUserInfoUserMedals.updatedAt = updatedAt;
  }
  final String? actionId = jsonConvert.convert<String>(json['action_id']);
  if (actionId != null) {
    currentUserInfoUserMedals.actionId = actionId;
  }
  final String? statisticsType = jsonConvert.convert<String>(
      json['statistics_type']);
  if (statisticsType != null) {
    currentUserInfoUserMedals.statisticsType = statisticsType;
  }
  final String? buttonName = jsonConvert.convert<String>(json['button_name']);
  if (buttonName != null) {
    currentUserInfoUserMedals.buttonName = buttonName;
  }
  final bool? buttonDisplay = jsonConvert.convert<bool>(json['button_display']);
  if (buttonDisplay != null) {
    currentUserInfoUserMedals.buttonDisplay = buttonDisplay;
  }
  final String? linkUrl = jsonConvert.convert<String>(json['link_url']);
  if (linkUrl != null) {
    currentUserInfoUserMedals.linkUrl = linkUrl;
  }
  final String? value = jsonConvert.convert<String>(json['value']);
  if (value != null) {
    currentUserInfoUserMedals.value = value;
  }
  final String? sourceId = jsonConvert.convert<String>(json['source_id']);
  if (sourceId != null) {
    currentUserInfoUserMedals.sourceId = sourceId;
  }
  final String? fid = jsonConvert.convert<String>(json['fid']);
  if (fid != null) {
    currentUserInfoUserMedals.fid = fid;
  }
  final String? groupStatus = jsonConvert.convert<String>(json['group_status']);
  if (groupStatus != null) {
    currentUserInfoUserMedals.groupStatus = groupStatus;
  }
  final bool? autoWearing = jsonConvert.convert<bool>(json['auto_wearing']);
  if (autoWearing != null) {
    currentUserInfoUserMedals.autoWearing = autoWearing;
  }
  final bool? linkDisplay = jsonConvert.convert<bool>(json['link_display']);
  if (linkDisplay != null) {
    currentUserInfoUserMedals.linkDisplay = linkDisplay;
  }
  return currentUserInfoUserMedals;
}

Map<String, dynamic> $CurrentUserInfoUserMedalsToJson(
    CurrentUserInfoUserMedals entity) {
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

extension CurrentUserInfoUserMedalsExtension on CurrentUserInfoUserMedals {
  CurrentUserInfoUserMedals copyWith({
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
    return CurrentUserInfoUserMedals()
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