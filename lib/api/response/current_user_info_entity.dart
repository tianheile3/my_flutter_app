import 'package:flutter_study/generated/json/base/json_field.dart';
import 'package:flutter_study/generated/json/current_user_info_entity.g.dart';
import 'dart:convert';
export 'package:flutter_study/generated/json/current_user_info_entity.g.dart';

@JsonSerializable()
class CurrentUserInfoEntity {
	late String code;
	late String message;
	late CurrentUserInfoUser user;

	CurrentUserInfoEntity();

	factory CurrentUserInfoEntity.fromJson(Map<String, dynamic> json) => $CurrentUserInfoEntityFromJson(json);

	Map<String, dynamic> toJson() => $CurrentUserInfoEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class CurrentUserInfoUser {
	late CurrentUserInfoUserGroup group;
	late String avatar;
	late int uid;
	@JSONField(name: 'user_name')
	late String userName;
	@JSONField(name: 'search_user_name')
	late String searchUserName;
	@JSONField(name: 'old_user_name')
	late String oldUserName;
	@JSONField(name: 'verify_new')
	late String verifyNew;
	@JSONField(name: 'verify_desc')
	late String verifyDesc;
	@JSONField(name: 'original_avatar')
	late String originalAvatar;
	@JSONField(name: 'small_avatar')
	late String smallAvatar;
	late String gender;
	@JSONField(name: 'gender_private')
	late String genderPrivate;
	@JSONField(name: 'life_stage')
	late String lifeStage;
	late String sign;
	late String address;
	late String birthday;
	late int threads;
	late String posts;
	late int comments;
	@JSONField(name: 'gather_num')
	late String gatherNum;
	@JSONField(name: 'lou_news_num')
	late String louNewsNum;
	@JSONField(name: 'fav_count')
	late int favCount;
	@JSONField(name: 'attend_count')
	late String attendCount;
	@JSONField(name: 'fans_count')
	late String fansCount;
	@JSONField(name: 'todayfans_count')
	late String todayfansCount;
	@JSONField(name: 'board_count')
	late String boardCount;
	@JSONField(name: 'zan_num')
	late String zanNum;
	@JSONField(name: 'rate_num')
	late int rateNum;
	@JSONField(name: 'medal_num')
	late String medalNum;
	late String color;
	late String gold;
	late List<CurrentUserInfoUserMedals> medals;
	late String prestige;
	@JSONField(name: 'reg_time')
	late String regTime;
	late String location;
	late String verify;
	@JSONField(name: 'high_verify')
	late String highVerify;
	@JSONField(name: 'high_desc')
	late String highDesc;
	@JSONField(name: 'honour_verify')
	late String honourVerify;
	@JSONField(name: 'honour_desc')
	late String honourDesc;
	@JSONField(name: 'real_verify')
	late String realVerify;
	@JSONField(name: 'at_num')
	late String atNum;
	late bool active;
	@JSONField(name: 'qq_bind')
	late bool qqBind;
	@JSONField(name: 'qihoo_bind')
	late bool qihooBind;
	@JSONField(name: 'mobile_bind')
	late bool mobileBind;
	@JSONField(name: 'email_bind')
	late bool emailBind;
	@JSONField(name: 'sina_bind')
	late bool sinaBind;
	@JSONField(name: 'weixin_bind')
	late bool weixinBind;
	@JSONField(name: 'is_ten_year')
	late bool isTenYear;
	@JSONField(name: 'shi_jia_shang_jia')
	late bool shiJiaShangJia;
	@JSONField(name: 'shi_jia_shang_jia_desc')
	late String shiJiaShangJiaDesc;
	@JSONField(name: 'is_security')
	late bool isSecurity;
	@JSONField(name: 'is_abnormal')
	late bool isAbnormal;
	@JSONField(name: 'uid_encrypt')
	late String uidEncrypt;
	@JSONField(name: 'app_user')
	late bool appUser;
	@JSONField(name: 'info_progress')
	late String infoProgress;
	@JSONField(name: 'user_type')
	late String userType;
	@JSONField(name: 'last_login_time')
	late String lastLoginTime;
	@JSONField(name: 'is_main_id')
	late bool isMainId;

	CurrentUserInfoUser();

	factory CurrentUserInfoUser.fromJson(Map<String, dynamic> json) => $CurrentUserInfoUserFromJson(json);

	Map<String, dynamic> toJson() => $CurrentUserInfoUserToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class CurrentUserInfoUserGroup {
	late String gid;
	late String name;
	late String category;
	late String rank;
	late String picture;

	CurrentUserInfoUserGroup();

	factory CurrentUserInfoUserGroup.fromJson(Map<String, dynamic> json) => $CurrentUserInfoUserGroupFromJson(json);

	Map<String, dynamic> toJson() => $CurrentUserInfoUserGroupToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class CurrentUserInfoUserMedals {
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

	CurrentUserInfoUserMedals();

	factory CurrentUserInfoUserMedals.fromJson(Map<String, dynamic> json) => $CurrentUserInfoUserMedalsFromJson(json);

	Map<String, dynamic> toJson() => $CurrentUserInfoUserMedalsToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}