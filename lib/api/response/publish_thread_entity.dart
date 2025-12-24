import 'package:flutter_study/generated/json/base/json_field.dart';
import 'package:flutter_study/generated/json/publish_thread_entity.g.dart';
import 'dart:convert';
export 'package:flutter_study/generated/json/publish_thread_entity.g.dart';

@JsonSerializable()
class PublishThreadEntity {
	late PublishThreadThread thread;
	late PublishThreadPost post;
	@JSONField(name: 'can_share')
	late bool canShare;
	late int code;
	late String message;
	late bool auth;
	@JSONField(name: 'coin_score')
	late PublishThreadCoinScore coinScore;
	late int error;

	PublishThreadEntity();

	factory PublishThreadEntity.fromJson(Map<String, dynamic> json) => $PublishThreadEntityFromJson(json);

	Map<String, dynamic> toJson() => $PublishThreadEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class PublishThreadThread {
	late PublishThreadThreadAuthor author;
	@JSONField(name: 'topic_tag')
	late PublishThreadThreadTopicTag topicTag;
	@JSONField(name: 'is_private')
	late String isPrivate;
	@JSONField(name: 'city_id')
	late String cityId;
	late String fid;
	late String tid;
	late String pid;
	@JSONField(name: 'author_uid')
	late String authorUid;
	late String category;
	late String subject;
	@JSONField(name: 'thread_type')
	late String threadType;
	late String hot;
	late String views;
	late String replies;
	late String forwards;
	@JSONField(name: 'hold_attachment')
	late bool holdAttachment;
	@JSONField(name: 'hold_video')
	late bool holdVideo;
	@JSONField(name: 'attend_activity')
	late bool attendActivity;
	@JSONField(name: 'first_post')
	late PublishThreadThreadFirstPost firstPost;
	@JSONField(name: 'last_post')
	late PublishThreadThreadLastPost lastPost;
	@JSONField(name: 'last_post_time')
	late String lastPostTime;
	@JSONField(name: 'stick_level')
	late String stickLevel;
	late String highlight;
	@JSONField(name: 'digest_level')
	late String digestLevel;
	@JSONField(name: 'created_at')
	late String createdAt;
	late String url;
	late String status;
	@JSONField(name: 'board_signed')
	late bool boardSigned;
	@JSONField(name: 'read_perm')
	late String readPerm;
	@JSONField(name: 'city_name')
	late String cityName;
	late String extra;
	@JSONField(name: 'reply_need_verify')
	late bool replyNeedVerify;
	@JSONField(name: 'rate_need_verify')
	late bool rateNeedVerify;
	@JSONField(name: 'thread_pk')
	late bool threadPk;
	@JSONField(name: 'thread_vote')
	late bool threadVote;
	late String source;
	@JSONField(name: 'is_locked')
	late bool isLocked;
	@JSONField(name: 'thread_open_original')
	late bool threadOpenOriginal;
	@JSONField(name: 'search_subject')
	late String searchSubject;
	@JSONField(name: 'search_content')
	late String searchContent;
	@JSONField(name: 'adv_status')
	late String advStatus;
	@JSONField(name: 'open_captcha')
	late bool openCaptcha;
	late String favorites;
	late String coins;
	late List<dynamic> tags;

	PublishThreadThread();

	factory PublishThreadThread.fromJson(Map<String, dynamic> json) => $PublishThreadThreadFromJson(json);

	Map<String, dynamic> toJson() => $PublishThreadThreadToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class PublishThreadThreadAuthor {
	late String uid;
	@JSONField(name: 'user_name')
	late String userName;
	@JSONField(name: 'search_user_name')
	late String searchUserName;
	@JSONField(name: 'old_user_name')
	late String oldUserName;
	late PublishThreadThreadAuthorGroup group;
	late String avatar;
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
	late String threads;
	late String posts;
	@JSONField(name: 'attend_count')
	late String attendCount;
	@JSONField(name: 'fans_count')
	late String fansCount;
	@JSONField(name: 'rate_num')
	late String rateNum;
	late String mobile;
	late String color;
	late List<PublishThreadThreadAuthorMedals> medals;
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
	@JSONField(name: 'app_user')
	late bool appUser;
	@JSONField(name: 'info_progress')
	late String infoProgress;
	@JSONField(name: 'user_type')
	late String userType;

	PublishThreadThreadAuthor();

	factory PublishThreadThreadAuthor.fromJson(Map<String, dynamic> json) => $PublishThreadThreadAuthorFromJson(json);

	Map<String, dynamic> toJson() => $PublishThreadThreadAuthorToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class PublishThreadThreadAuthorGroup {
	late String gid;
	late String name;
	late String category;
	late String rank;
	late String picture;

	PublishThreadThreadAuthorGroup();

	factory PublishThreadThreadAuthorGroup.fromJson(Map<String, dynamic> json) => $PublishThreadThreadAuthorGroupFromJson(json);

	Map<String, dynamic> toJson() => $PublishThreadThreadAuthorGroupToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class PublishThreadThreadAuthorMedals {
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

	PublishThreadThreadAuthorMedals();

	factory PublishThreadThreadAuthorMedals.fromJson(Map<String, dynamic> json) => $PublishThreadThreadAuthorMedalsFromJson(json);

	Map<String, dynamic> toJson() => $PublishThreadThreadAuthorMedalsToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class PublishThreadThreadTopicTag {
	late String id;
	late String name;
	@JSONField(name: 'logo_img_url')
	late String logoImgUrl;
	@JSONField(name: 'can_business')
	late String canBusiness;

	PublishThreadThreadTopicTag();

	factory PublishThreadThreadTopicTag.fromJson(Map<String, dynamic> json) => $PublishThreadThreadTopicTagFromJson(json);

	Map<String, dynamic> toJson() => $PublishThreadThreadTopicTagToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class PublishThreadThreadFirstPost {
	late String pid;
	@JSONField(name: 'is_first')
	late bool isFirst;
	@JSONField(name: 'is_water')
	late bool isWater;
	late PublishThreadThreadFirstPostAuthor author;
	late String subject;
	late String message;
	@JSONField(name: 'share_bbcode_message')
	late String shareBbcodeMessage;
	@JSONField(name: 'parent_pid')
	late String parentPid;
	@JSONField(name: 'reply_pid')
	late String replyPid;
	@JSONField(name: 'reply_uid')
	late String replyUid;
	@JSONField(name: 'reply_user_name')
	late String replyUserName;
	@JSONField(name: 'warn_message')
	late String warnMessage;
	@JSONField(name: 'edit_message')
	late String editMessage;
	late bool htmlon;
	@JSONField(name: 'hold_attachment')
	late bool holdAttachment;
	late List<PublishThreadThreadFirstPostAttachment> attachment;
	@JSONField(name: 'hold_refer')
	late bool holdRefer;
	@JSONField(name: 'good_reply')
	late bool goodReply;
	@JSONField(name: 'hold_rate')
	late bool holdRate;
	@JSONField(name: 'rate_pk')
	late bool ratePk;
	late String source;
	@JSONField(name: 'created_at')
	late String createdAt;
	@JSONField(name: 'updated_at')
	late String updatedAt;
	@JSONField(name: 'has_rich_text')
	late bool hasRichText;
	late String status;
	@JSONField(name: 'audit_first')
	late bool auditFirst;

	PublishThreadThreadFirstPost();

	factory PublishThreadThreadFirstPost.fromJson(Map<String, dynamic> json) => $PublishThreadThreadFirstPostFromJson(json);

	Map<String, dynamic> toJson() => $PublishThreadThreadFirstPostToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class PublishThreadThreadFirstPostAuthor {
	late String uid;
	@JSONField(name: 'user_name')
	late String userName;
	@JSONField(name: 'search_user_name')
	late String searchUserName;
	@JSONField(name: 'old_user_name')
	late String oldUserName;
	late PublishThreadThreadFirstPostAuthorGroup group;
	late String avatar;
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
	late String threads;
	late String posts;
	@JSONField(name: 'attend_count')
	late String attendCount;
	@JSONField(name: 'fans_count')
	late String fansCount;
	@JSONField(name: 'rate_num')
	late String rateNum;
	late String mobile;
	late String color;
	late List<PublishThreadThreadFirstPostAuthorMedals> medals;
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
	@JSONField(name: 'app_user')
	late bool appUser;
	@JSONField(name: 'info_progress')
	late String infoProgress;
	@JSONField(name: 'user_type')
	late String userType;

	PublishThreadThreadFirstPostAuthor();

	factory PublishThreadThreadFirstPostAuthor.fromJson(Map<String, dynamic> json) => $PublishThreadThreadFirstPostAuthorFromJson(json);

	Map<String, dynamic> toJson() => $PublishThreadThreadFirstPostAuthorToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class PublishThreadThreadFirstPostAuthorGroup {
	late String gid;
	late String name;
	late String category;
	late String rank;
	late String picture;

	PublishThreadThreadFirstPostAuthorGroup();

	factory PublishThreadThreadFirstPostAuthorGroup.fromJson(Map<String, dynamic> json) => $PublishThreadThreadFirstPostAuthorGroupFromJson(json);

	Map<String, dynamic> toJson() => $PublishThreadThreadFirstPostAuthorGroupToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class PublishThreadThreadFirstPostAuthorMedals {
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

	PublishThreadThreadFirstPostAuthorMedals();

	factory PublishThreadThreadFirstPostAuthorMedals.fromJson(Map<String, dynamic> json) => $PublishThreadThreadFirstPostAuthorMedalsFromJson(json);

	Map<String, dynamic> toJson() => $PublishThreadThreadFirstPostAuthorMedalsToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class PublishThreadThreadFirstPostAttachment {
	late String aid;
	@JSONField(name: 'orig_file_name')
	late String origFileName;
	@JSONField(name: 'file_type')
	late String fileType;
	late String description;
	late String filesize;
	late String downloads;
	@JSONField(name: 'is_image')
	late bool isImage;
	late String uri;
	@JSONField(name: 'orig_url')
	late String origUrl;
	@JSONField(name: 'middle_url')
	late String middleUrl;
	@JSONField(name: 'thumb_url')
	late String thumbUrl;
	@JSONField(name: 'has_sticker')
	late String hasSticker;
	@JSONField(name: 'file_uri')
	late String fileUri;
	@JSONField(name: 'file_name')
	late String fileName;

	PublishThreadThreadFirstPostAttachment();

	factory PublishThreadThreadFirstPostAttachment.fromJson(Map<String, dynamic> json) => $PublishThreadThreadFirstPostAttachmentFromJson(json);

	Map<String, dynamic> toJson() => $PublishThreadThreadFirstPostAttachmentToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class PublishThreadThreadLastPost {
	late String pid;
	@JSONField(name: 'is_first')
	late bool isFirst;
	@JSONField(name: 'is_water')
	late bool isWater;
	late PublishThreadThreadLastPostAuthor author;
	late String subject;
	late String message;
	@JSONField(name: 'share_bbcode_message')
	late String shareBbcodeMessage;
	@JSONField(name: 'parent_pid')
	late String parentPid;
	@JSONField(name: 'reply_pid')
	late String replyPid;
	@JSONField(name: 'reply_uid')
	late String replyUid;
	@JSONField(name: 'reply_user_name')
	late String replyUserName;
	@JSONField(name: 'warn_message')
	late String warnMessage;
	@JSONField(name: 'edit_message')
	late String editMessage;
	late bool htmlon;
	@JSONField(name: 'hold_attachment')
	late bool holdAttachment;
	late List<PublishThreadThreadLastPostAttachment> attachment;
	@JSONField(name: 'hold_refer')
	late bool holdRefer;
	@JSONField(name: 'good_reply')
	late bool goodReply;
	@JSONField(name: 'hold_rate')
	late bool holdRate;
	@JSONField(name: 'rate_pk')
	late bool ratePk;
	late String source;
	@JSONField(name: 'created_at')
	late String createdAt;
	@JSONField(name: 'updated_at')
	late String updatedAt;
	@JSONField(name: 'has_rich_text')
	late bool hasRichText;
	late String status;
	@JSONField(name: 'audit_first')
	late bool auditFirst;

	PublishThreadThreadLastPost();

	factory PublishThreadThreadLastPost.fromJson(Map<String, dynamic> json) => $PublishThreadThreadLastPostFromJson(json);

	Map<String, dynamic> toJson() => $PublishThreadThreadLastPostToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class PublishThreadThreadLastPostAuthor {
	late String uid;
	@JSONField(name: 'user_name')
	late String userName;
	@JSONField(name: 'search_user_name')
	late String searchUserName;
	@JSONField(name: 'old_user_name')
	late String oldUserName;
	late PublishThreadThreadLastPostAuthorGroup group;
	late String avatar;
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
	late String threads;
	late String posts;
	@JSONField(name: 'attend_count')
	late String attendCount;
	@JSONField(name: 'fans_count')
	late String fansCount;
	@JSONField(name: 'rate_num')
	late String rateNum;
	late String mobile;
	late String color;
	late List<PublishThreadThreadLastPostAuthorMedals> medals;
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
	@JSONField(name: 'app_user')
	late bool appUser;
	@JSONField(name: 'info_progress')
	late String infoProgress;
	@JSONField(name: 'user_type')
	late String userType;

	PublishThreadThreadLastPostAuthor();

	factory PublishThreadThreadLastPostAuthor.fromJson(Map<String, dynamic> json) => $PublishThreadThreadLastPostAuthorFromJson(json);

	Map<String, dynamic> toJson() => $PublishThreadThreadLastPostAuthorToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class PublishThreadThreadLastPostAuthorGroup {
	late String gid;
	late String name;
	late String category;
	late String rank;
	late String picture;

	PublishThreadThreadLastPostAuthorGroup();

	factory PublishThreadThreadLastPostAuthorGroup.fromJson(Map<String, dynamic> json) => $PublishThreadThreadLastPostAuthorGroupFromJson(json);

	Map<String, dynamic> toJson() => $PublishThreadThreadLastPostAuthorGroupToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class PublishThreadThreadLastPostAuthorMedals {
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

	PublishThreadThreadLastPostAuthorMedals();

	factory PublishThreadThreadLastPostAuthorMedals.fromJson(Map<String, dynamic> json) => $PublishThreadThreadLastPostAuthorMedalsFromJson(json);

	Map<String, dynamic> toJson() => $PublishThreadThreadLastPostAuthorMedalsToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class PublishThreadThreadLastPostAttachment {
	late String aid;
	@JSONField(name: 'orig_file_name')
	late String origFileName;
	@JSONField(name: 'file_type')
	late String fileType;
	late String description;
	late String filesize;
	late String downloads;
	@JSONField(name: 'is_image')
	late bool isImage;
	late String uri;
	@JSONField(name: 'orig_url')
	late String origUrl;
	@JSONField(name: 'middle_url')
	late String middleUrl;
	@JSONField(name: 'thumb_url')
	late String thumbUrl;
	@JSONField(name: 'has_sticker')
	late String hasSticker;
	@JSONField(name: 'file_uri')
	late String fileUri;
	@JSONField(name: 'file_name')
	late String fileName;

	PublishThreadThreadLastPostAttachment();

	factory PublishThreadThreadLastPostAttachment.fromJson(Map<String, dynamic> json) => $PublishThreadThreadLastPostAttachmentFromJson(json);

	Map<String, dynamic> toJson() => $PublishThreadThreadLastPostAttachmentToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class PublishThreadPost {
	late String pid;
	@JSONField(name: 'is_first')
	late bool isFirst;
	@JSONField(name: 'is_water')
	late bool isWater;
	late PublishThreadPostAuthor author;
	late String subject;
	late String message;
	@JSONField(name: 'share_bbcode_message')
	late String shareBbcodeMessage;
	@JSONField(name: 'parent_pid')
	late String parentPid;
	@JSONField(name: 'reply_pid')
	late String replyPid;
	@JSONField(name: 'reply_uid')
	late String replyUid;
	@JSONField(name: 'reply_user_name')
	late String replyUserName;
	@JSONField(name: 'warn_message')
	late String warnMessage;
	@JSONField(name: 'edit_message')
	late String editMessage;
	late bool htmlon;
	@JSONField(name: 'hold_attachment')
	late bool holdAttachment;
	late List<PublishThreadPostAttachment> attachment;
	@JSONField(name: 'hold_refer')
	late bool holdRefer;
	@JSONField(name: 'good_reply')
	late bool goodReply;
	@JSONField(name: 'hold_rate')
	late bool holdRate;
	@JSONField(name: 'rate_pk')
	late bool ratePk;
	late String source;
	@JSONField(name: 'created_at')
	late String createdAt;
	@JSONField(name: 'updated_at')
	late String updatedAt;
	@JSONField(name: 'has_rich_text')
	late bool hasRichText;
	late String status;
	@JSONField(name: 'audit_first')
	late bool auditFirst;

	PublishThreadPost();

	factory PublishThreadPost.fromJson(Map<String, dynamic> json) => $PublishThreadPostFromJson(json);

	Map<String, dynamic> toJson() => $PublishThreadPostToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class PublishThreadPostAuthor {
	late String uid;
	@JSONField(name: 'user_name')
	late String userName;
	@JSONField(name: 'search_user_name')
	late String searchUserName;
	@JSONField(name: 'old_user_name')
	late String oldUserName;
	late PublishThreadPostAuthorGroup group;
	late String avatar;
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
	late String threads;
	late String posts;
	@JSONField(name: 'attend_count')
	late String attendCount;
	@JSONField(name: 'fans_count')
	late String fansCount;
	@JSONField(name: 'rate_num')
	late String rateNum;
	late String mobile;
	late String color;
	late List<PublishThreadPostAuthorMedals> medals;
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
	@JSONField(name: 'app_user')
	late bool appUser;
	@JSONField(name: 'info_progress')
	late String infoProgress;
	@JSONField(name: 'user_type')
	late String userType;

	PublishThreadPostAuthor();

	factory PublishThreadPostAuthor.fromJson(Map<String, dynamic> json) => $PublishThreadPostAuthorFromJson(json);

	Map<String, dynamic> toJson() => $PublishThreadPostAuthorToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class PublishThreadPostAuthorGroup {
	late String gid;
	late String name;
	late String category;
	late String rank;
	late String picture;

	PublishThreadPostAuthorGroup();

	factory PublishThreadPostAuthorGroup.fromJson(Map<String, dynamic> json) => $PublishThreadPostAuthorGroupFromJson(json);

	Map<String, dynamic> toJson() => $PublishThreadPostAuthorGroupToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class PublishThreadPostAuthorMedals {
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

	PublishThreadPostAuthorMedals();

	factory PublishThreadPostAuthorMedals.fromJson(Map<String, dynamic> json) => $PublishThreadPostAuthorMedalsFromJson(json);

	Map<String, dynamic> toJson() => $PublishThreadPostAuthorMedalsToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class PublishThreadPostAttachment {
	late String aid;
	@JSONField(name: 'orig_file_name')
	late String origFileName;
	@JSONField(name: 'file_type')
	late String fileType;
	late String description;
	late String filesize;
	late String downloads;
	@JSONField(name: 'is_image')
	late bool isImage;
	late String uri;
	@JSONField(name: 'orig_url')
	late String origUrl;
	@JSONField(name: 'middle_url')
	late String middleUrl;
	@JSONField(name: 'thumb_url')
	late String thumbUrl;
	@JSONField(name: 'has_sticker')
	late String hasSticker;
	@JSONField(name: 'file_uri')
	late String fileUri;
	@JSONField(name: 'file_name')
	late String fileName;

	PublishThreadPostAttachment();

	factory PublishThreadPostAttachment.fromJson(Map<String, dynamic> json) => $PublishThreadPostAttachmentFromJson(json);

	Map<String, dynamic> toJson() => $PublishThreadPostAttachmentToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class PublishThreadCoinScore {
	late String score;
	late String coin;

	PublishThreadCoinScore();

	factory PublishThreadCoinScore.fromJson(Map<String, dynamic> json) => $PublishThreadCoinScoreFromJson(json);

	Map<String, dynamic> toJson() => $PublishThreadCoinScoreToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}