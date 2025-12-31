import 'package:flutter_study/generated/json/base/json_convert_content.dart';
import 'package:flutter_study/api/response/common/author_entity.dart';

AuthorEntity $AuthorEntityFromJson(Map<String, dynamic> json) {
  final AuthorEntity authorEntity = AuthorEntity();
  final String? uid = jsonConvert.convert<String>(json['uid']);
  if (uid != null) {
    authorEntity.uid = uid;
  }
  final String? userName = jsonConvert.convert<String>(json['user_name']);
  if (userName != null) {
    authorEntity.userName = userName;
  }
  final String? searchUserName = jsonConvert.convert<String>(
      json['search_user_name']);
  if (searchUserName != null) {
    authorEntity.searchUserName = searchUserName;
  }
  final String? oldUserName = jsonConvert.convert<String>(
      json['old_user_name']);
  if (oldUserName != null) {
    authorEntity.oldUserName = oldUserName;
  }
  final AuthorGroup? group = jsonConvert.convert<AuthorGroup>(json['group']);
  if (group != null) {
    authorEntity.group = group;
  }
  final String? avatar = jsonConvert.convert<String>(json['avatar']);
  if (avatar != null) {
    authorEntity.avatar = avatar;
  }
  final String? verifyNew = jsonConvert.convert<String>(json['verify_new']);
  if (verifyNew != null) {
    authorEntity.verifyNew = verifyNew;
  }
  final String? verifyDesc = jsonConvert.convert<String>(json['verify_desc']);
  if (verifyDesc != null) {
    authorEntity.verifyDesc = verifyDesc;
  }
  final String? originalAvatar = jsonConvert.convert<String>(
      json['original_avatar']);
  if (originalAvatar != null) {
    authorEntity.originalAvatar = originalAvatar;
  }
  final String? smallAvatar = jsonConvert.convert<String>(json['small_avatar']);
  if (smallAvatar != null) {
    authorEntity.smallAvatar = smallAvatar;
  }
  final String? genderPrivate = jsonConvert.convert<String>(
      json['gender_private']);
  if (genderPrivate != null) {
    authorEntity.genderPrivate = genderPrivate;
  }
  final String? address = jsonConvert.convert<String>(json['address']);
  if (address != null) {
    authorEntity.address = address;
  }
  final String? birthday = jsonConvert.convert<String>(json['birthday']);
  if (birthday != null) {
    authorEntity.birthday = birthday;
  }
  final String? mobile = jsonConvert.convert<String>(json['mobile']);
  if (mobile != null) {
    authorEntity.mobile = mobile;
  }
  final List<dynamic>? medals = (json['medals'] as List<dynamic>?)?.map(
          (e) => e).toList();
  if (medals != null) {
    authorEntity.medals = medals;
  }
  final String? location = jsonConvert.convert<String>(json['location']);
  if (location != null) {
    authorEntity.location = location;
  }
  final String? verify = jsonConvert.convert<String>(json['verify']);
  if (verify != null) {
    authorEntity.verify = verify;
  }
  final String? highVerify = jsonConvert.convert<String>(json['high_verify']);
  if (highVerify != null) {
    authorEntity.highVerify = highVerify;
  }
  final String? highDesc = jsonConvert.convert<String>(json['high_desc']);
  if (highDesc != null) {
    authorEntity.highDesc = highDesc;
  }
  final String? honourVerify = jsonConvert.convert<String>(
      json['honour_verify']);
  if (honourVerify != null) {
    authorEntity.honourVerify = honourVerify;
  }
  final String? honourDesc = jsonConvert.convert<String>(json['honour_desc']);
  if (honourDesc != null) {
    authorEntity.honourDesc = honourDesc;
  }
  final String? realVerify = jsonConvert.convert<String>(json['real_verify']);
  if (realVerify != null) {
    authorEntity.realVerify = realVerify;
  }
  final String? atNum = jsonConvert.convert<String>(json['at_num']);
  if (atNum != null) {
    authorEntity.atNum = atNum;
  }
  final bool? active = jsonConvert.convert<bool>(json['active']);
  if (active != null) {
    authorEntity.active = active;
  }
  final bool? qqBind = jsonConvert.convert<bool>(json['qq_bind']);
  if (qqBind != null) {
    authorEntity.qqBind = qqBind;
  }
  final bool? qihooBind = jsonConvert.convert<bool>(json['qihoo_bind']);
  if (qihooBind != null) {
    authorEntity.qihooBind = qihooBind;
  }
  final bool? mobileBind = jsonConvert.convert<bool>(json['mobile_bind']);
  if (mobileBind != null) {
    authorEntity.mobileBind = mobileBind;
  }
  final bool? emailBind = jsonConvert.convert<bool>(json['email_bind']);
  if (emailBind != null) {
    authorEntity.emailBind = emailBind;
  }
  final bool? sinaBind = jsonConvert.convert<bool>(json['sina_bind']);
  if (sinaBind != null) {
    authorEntity.sinaBind = sinaBind;
  }
  final bool? weixinBind = jsonConvert.convert<bool>(json['weixin_bind']);
  if (weixinBind != null) {
    authorEntity.weixinBind = weixinBind;
  }
  final bool? isTenYear = jsonConvert.convert<bool>(json['is_ten_year']);
  if (isTenYear != null) {
    authorEntity.isTenYear = isTenYear;
  }
  final bool? shiJiaShangJia = jsonConvert.convert<bool>(
      json['shi_jia_shang_jia']);
  if (shiJiaShangJia != null) {
    authorEntity.shiJiaShangJia = shiJiaShangJia;
  }
  final String? shiJiaShangJiaDesc = jsonConvert.convert<String>(
      json['shi_jia_shang_jia_desc']);
  if (shiJiaShangJiaDesc != null) {
    authorEntity.shiJiaShangJiaDesc = shiJiaShangJiaDesc;
  }
  final bool? isSecurity = jsonConvert.convert<bool>(json['is_security']);
  if (isSecurity != null) {
    authorEntity.isSecurity = isSecurity;
  }
  final bool? isAbnormal = jsonConvert.convert<bool>(json['is_abnormal']);
  if (isAbnormal != null) {
    authorEntity.isAbnormal = isAbnormal;
  }
  final bool? appUser = jsonConvert.convert<bool>(json['app_user']);
  if (appUser != null) {
    authorEntity.appUser = appUser;
  }
  final String? infoProgress = jsonConvert.convert<String>(
      json['info_progress']);
  if (infoProgress != null) {
    authorEntity.infoProgress = infoProgress;
  }
  final String? userType = jsonConvert.convert<String>(json['user_type']);
  if (userType != null) {
    authorEntity.userType = userType;
  }
  return authorEntity;
}

Map<String, dynamic> $AuthorEntityToJson(AuthorEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['uid'] = entity.uid;
  data['user_name'] = entity.userName;
  data['search_user_name'] = entity.searchUserName;
  data['old_user_name'] = entity.oldUserName;
  data['group'] = entity.group.toJson();
  data['avatar'] = entity.avatar;
  data['verify_new'] = entity.verifyNew;
  data['verify_desc'] = entity.verifyDesc;
  data['original_avatar'] = entity.originalAvatar;
  data['small_avatar'] = entity.smallAvatar;
  data['gender_private'] = entity.genderPrivate;
  data['address'] = entity.address;
  data['birthday'] = entity.birthday;
  data['mobile'] = entity.mobile;
  data['medals'] = entity.medals;
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
  data['app_user'] = entity.appUser;
  data['info_progress'] = entity.infoProgress;
  data['user_type'] = entity.userType;
  return data;
}

extension AuthorEntityExtension on AuthorEntity {
  AuthorEntity copyWith({
    String? uid,
    String? userName,
    String? searchUserName,
    String? oldUserName,
    AuthorGroup? group,
    String? avatar,
    String? verifyNew,
    String? verifyDesc,
    String? originalAvatar,
    String? smallAvatar,
    String? genderPrivate,
    String? address,
    String? birthday,
    String? mobile,
    List<dynamic>? medals,
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
    bool? appUser,
    String? infoProgress,
    String? userType,
  }) {
    return AuthorEntity()
      ..uid = uid ?? this.uid
      ..userName = userName ?? this.userName
      ..searchUserName = searchUserName ?? this.searchUserName
      ..oldUserName = oldUserName ?? this.oldUserName
      ..group = group ?? this.group
      ..avatar = avatar ?? this.avatar
      ..verifyNew = verifyNew ?? this.verifyNew
      ..verifyDesc = verifyDesc ?? this.verifyDesc
      ..originalAvatar = originalAvatar ?? this.originalAvatar
      ..smallAvatar = smallAvatar ?? this.smallAvatar
      ..genderPrivate = genderPrivate ?? this.genderPrivate
      ..address = address ?? this.address
      ..birthday = birthday ?? this.birthday
      ..mobile = mobile ?? this.mobile
      ..medals = medals ?? this.medals
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
      ..appUser = appUser ?? this.appUser
      ..infoProgress = infoProgress ?? this.infoProgress
      ..userType = userType ?? this.userType;
  }
}

AuthorGroup $AuthorGroupFromJson(Map<String, dynamic> json) {
  final AuthorGroup authorGroup = AuthorGroup();
  final String? gid = jsonConvert.convert<String>(json['gid']);
  if (gid != null) {
    authorGroup.gid = gid;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    authorGroup.name = name;
  }
  final String? category = jsonConvert.convert<String>(json['category']);
  if (category != null) {
    authorGroup.category = category;
  }
  final String? rank = jsonConvert.convert<String>(json['rank']);
  if (rank != null) {
    authorGroup.rank = rank;
  }
  final String? picture = jsonConvert.convert<String>(json['picture']);
  if (picture != null) {
    authorGroup.picture = picture;
  }
  return authorGroup;
}

Map<String, dynamic> $AuthorGroupToJson(AuthorGroup entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['gid'] = entity.gid;
  data['name'] = entity.name;
  data['category'] = entity.category;
  data['rank'] = entity.rank;
  data['picture'] = entity.picture;
  return data;
}

extension AuthorGroupExtension on AuthorGroup {
  AuthorGroup copyWith({
    String? gid,
    String? name,
    String? category,
    String? rank,
    String? picture,
  }) {
    return AuthorGroup()
      ..gid = gid ?? this.gid
      ..name = name ?? this.name
      ..category = category ?? this.category
      ..rank = rank ?? this.rank
      ..picture = picture ?? this.picture;
  }
}