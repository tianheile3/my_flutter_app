import 'package:flutter_study/generated/json/base/json_field.dart';
import 'package:flutter_study/generated/json/user_entity.g.dart';
import 'dart:convert';
export 'package:flutter_study/generated/json/user_entity.g.dart';

@JsonSerializable()
class UserEntity {
	late String uid;
	@JSONField(name: 'user_name')
	late String userName;
	late String status;
	late String sign;
	late String warning;
	late String avatar;
	late String verify;
	@JSONField(name: 'high_verify')
	late String highVerify;
	@JSONField(name: 'honour_verify')
	late String honourVerify;
	@JSONField(name: 'verify_new')
	late String verifyNew;
	@JSONField(name: 'verify_desc')
	late String verifyDesc;
	late String gender;
	@JSONField(name: 'honour_desc')
	late String honourDesc;
	@JSONField(name: 'high_desc')
	late String highDesc;
	@JSONField(name: 'board_perm')
	late String boardPerm;
	late String gid;
	@JSONField(name: 'group_rank')
	late String groupRank;
	@JSONField(name: 'group_name')
	late String groupName;
	@JSONField(name: 'is_ten_year')
	late bool isTenYear;
	@JSONField(name: 'shi_jia_shang_jia')
	late bool shiJiaShangJia;
	@JSONField(name: 'shi_jia_shang_jia_desc')
	late String shiJiaShangJiaDesc;
	late List<UserMedals> medals;
	@JSONField(name: 'pendant_id')
	late String pendantId;
	late String cityname;
	@JSONField(name: 'original_avatar')
	late String originalAvatar;
	@JSONField(name: 'small_avatar')
	late String smallAvatar;
	late String latitude;
	late String longitude;
	@JSONField(name: 'total_zan_count')
	late String totalZanCount;
	@JSONField(name: 'total_fans_count')
	late String totalFansCount;
	@JSONField(name: 'total_fav_count')
	late String totalFavCount;

	UserEntity();

	factory UserEntity.fromJson(Map<String, dynamic> json) => $UserEntityFromJson(json);

	Map<String, dynamic> toJson() => $UserEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class UserMedals {
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

	UserMedals();

	factory UserMedals.fromJson(Map<String, dynamic> json) => $UserMedalsFromJson(json);

	Map<String, dynamic> toJson() => $UserMedalsToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}