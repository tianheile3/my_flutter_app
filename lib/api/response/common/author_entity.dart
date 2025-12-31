import 'package:flutter_study/generated/json/base/json_field.dart';
import 'package:flutter_study/generated/json/author_entity.g.dart';
import 'dart:convert';
export 'package:flutter_study/generated/json/author_entity.g.dart';

@JsonSerializable()
class AuthorEntity {
	late String uid;
	@JSONField(name: 'user_name')
	late String userName;
	@JSONField(name: 'search_user_name')
	late String searchUserName;
	@JSONField(name: 'old_user_name')
	late String oldUserName;
	late AuthorGroup group;
	late String avatar;
	@JSONField(name: 'verify_new')
	late String verifyNew;
	@JSONField(name: 'verify_desc')
	late String verifyDesc;
	@JSONField(name: 'original_avatar')
	late String originalAvatar;
	@JSONField(name: 'small_avatar')
	late String smallAvatar;
	@JSONField(name: 'gender_private')
	late String genderPrivate;
	late String address;
	late String birthday;
	late String mobile;
	late List<dynamic> medals;
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
	@JSONField(name: 'app_user')
	late bool appUser;
	@JSONField(name: 'info_progress')
	late String infoProgress;
	@JSONField(name: 'user_type')
	late String userType;

	AuthorEntity();

	factory AuthorEntity.fromJson(Map<String, dynamic> json) => $AuthorEntityFromJson(json);

	Map<String, dynamic> toJson() => $AuthorEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class AuthorGroup {
	late String gid;
	late String name;
	late String category;
	late String rank;
	late String picture;

	AuthorGroup();

	factory AuthorGroup.fromJson(Map<String, dynamic> json) => $AuthorGroupFromJson(json);

	Map<String, dynamic> toJson() => $AuthorGroupToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}