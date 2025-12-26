import 'package:flutter_study/generated/json/base/json_field.dart';
import 'package:flutter_study/generated/json/thread_page_entity.g.dart';
import 'dart:convert';
export 'package:flutter_study/generated/json/thread_page_entity.g.dart';

@JsonSerializable()
class ThreadPageEntity {
	late int code;
	late String message;
	@JSONField(name: 'forum_info')
	late ThreadPageForumInfo forumInfo;
	@JSONField(name: 'thread_list')
	late List<ThreadPageThreadList> threadList;
	@JSONField(name: 'stick_thread_list')
	late List<ThreadPageStickThreadList> stickThreadList;
	@JSONField(name: 'total_count')
	late int totalCount;
	late int page;
	@JSONField(name: 'per_page')
	late int perPage;

	ThreadPageEntity();

	factory ThreadPageEntity.fromJson(Map<String, dynamic> json) => $ThreadPageEntityFromJson(json);

	Map<String, dynamic> toJson() => $ThreadPageEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class ThreadPageForumInfo {
	late String fid;
	late String category;
	late String fup;
	late String name;
	late String location;
	late String icon;
	late String url;
	@JSONField(name: 'is_mobile_forum')
	late bool isMobileForum;
	@JSONField(name: 'mobile_threadlist_style')
	late String mobileThreadlistStyle;
	@JSONField(name: 'mobile_recommend_threadlist_style')
	late String mobileRecommendThreadlistStyle;
	@JSONField(name: 'mobile_thread_theme')
	late bool mobileThreadTheme;
	late String status;
	late bool password;
	@JSONField(name: 'today_post')
	late String todayPost;
	@JSONField(name: 'total_post')
	late String totalPost;
	@JSONField(name: 'today_thread')
	late String todayThread;
	@JSONField(name: 'total_thread')
	late String totalThread;
	@JSONField(name: 'rss_count')
	late String rssCount;
	@JSONField(name: 'is_pic_show')
	late bool isPicShow;
	late String verify;
	late String description;
	@JSONField(name: 'tags_list')
	late List<ThreadPageForumInfoTagsList> tagsList;
	@JSONField(name: 'show_children_forum')
	late bool showChildrenForum;
	@JSONField(name: 'recursion_forum_list')
	late List<ThreadPageForumInfoRecursionForumList> recursionForumList;
	late bool fav;
	@JSONField(name: 'seo_description')
	late String seoDescription;
	@JSONField(name: 'default_sort_by')
	late String defaultSortBy;
	@JSONField(name: 'circle_category')
	late ThreadPageForumInfoCircleCategory circleCategory;

	ThreadPageForumInfo();

	factory ThreadPageForumInfo.fromJson(Map<String, dynamic> json) => $ThreadPageForumInfoFromJson(json);

	Map<String, dynamic> toJson() => $ThreadPageForumInfoToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class ThreadPageForumInfoTagsList {
	late String id;
	late String name;
	@JSONField(name: 'can_business')
	late String canBusiness;
	@JSONField(name: 'logo_img_url')
	late String logoImgUrl;

	ThreadPageForumInfoTagsList();

	factory ThreadPageForumInfoTagsList.fromJson(Map<String, dynamic> json) => $ThreadPageForumInfoTagsListFromJson(json);

	Map<String, dynamic> toJson() => $ThreadPageForumInfoTagsListToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class ThreadPageForumInfoRecursionForumList {
	late String fid;
	late String category;
	late String fup;
	late String name;
	late String kind;
	@JSONField(name: 'html_title')
	late String htmlTitle;
	@JSONField(name: 'pic_list_title')
	late String picListTitle;
	@JSONField(name: 'seo_description')
	late String seoDescription;
	late String description;
	late String icon;
	late String location;
	@JSONField(name: 'icon_url')
	late String iconUrl;
	late String password;
	late String redirect;
	@JSONField(name: 'display_order')
	late String displayOrder;
	@JSONField(name: 'layout_type')
	late String layoutType;
	@JSONField(name: 'layout_column_type')
	late String layoutColumnType;
	late String status;
	late List<dynamic> children;
	@JSONField(name: 'moderator_list')
	late List<dynamic> moderatorList;
	late String attachment;
	@JSONField(name: 'rule_url')
	late String ruleUrl;
	@JSONField(name: 'tl_sort')
	late String tlSort;
	late String recommend;
	@JSONField(name: 'enable_sec_nav')
	late bool enableSecNav;
	@JSONField(name: 'sec_nav_bg')
	late String secNavBg;
	@JSONField(name: 'sec_show')
	late String secShow;
	@JSONField(name: 'sec_logo')
	late String secLogo;
	@JSONField(name: 'sec_index_url')
	late String secIndexUrl;
	@JSONField(name: 'bn_thread_ready')
	late String bnThreadReady;
	@JSONField(name: 'bn_thread_open')
	late String bnThreadOpen;
	@JSONField(name: 'bn_forum_entry')
	late String bnForumEntry;
	@JSONField(name: 'bn_forum_recommend')
	late String bnForumRecommend;
	@JSONField(name: 'bn_keyword_display')
	late String bnKeywordDisplay;
	@JSONField(name: 'pic_width')
	late String picWidth;
	@JSONField(name: 'pic_high')
	late String picHigh;
	@JSONField(name: 'guess_you_like')
	late String guessYouLike;
	@JSONField(name: 'thread_tip')
	late String threadTip;
	@JSONField(name: 'thread_title')
	late String threadTitle;
	@JSONField(name: 'thread_description')
	late String threadDescription;
	late String verify;
	@JSONField(name: 'sec_post_type')
	late String secPostType;
	@JSONField(name: 'created_at')
	late String createdAt;
	@JSONField(name: 'updated_at')
	late String updatedAt;

	ThreadPageForumInfoRecursionForumList();

	factory ThreadPageForumInfoRecursionForumList.fromJson(Map<String, dynamic> json) => $ThreadPageForumInfoRecursionForumListFromJson(json);

	Map<String, dynamic> toJson() => $ThreadPageForumInfoRecursionForumListToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class ThreadPageForumInfoCircleCategory {
	late String id;
	late String name;

	ThreadPageForumInfoCircleCategory();

	factory ThreadPageForumInfoCircleCategory.fromJson(Map<String, dynamic> json) => $ThreadPageForumInfoCircleCategoryFromJson(json);

	Map<String, dynamic> toJson() => $ThreadPageForumInfoCircleCategoryToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class ThreadPageThreadList {
	late ThreadPageThreadListAuthor author;
	late String url;
	@JSONField(name: 'first_post')
	late ThreadPageThreadListFirstPost firstPost;
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
	@JSONField(name: 'topic_tag')
	late ThreadPageThreadListTopicTag topicTag;
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
	@JSONField(name: 'last_post_time')
	late String lastPostTime;
	@JSONField(name: 'stick_level')
	late String stickLevel;
	late String highlight;
	@JSONField(name: 'digest_level')
	late String digestLevel;
	@JSONField(name: 'created_at')
	late String createdAt;
	@JSONField(name: 'updated_at')
	late String updatedAt;
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
	@JSONField(name: 'business_tag')
	late ThreadPageThreadListBusinessTag businessTag;
	@JSONField(name: 'zan_info')
	late ThreadPageThreadListZanInfo zanInfo;
	@JSONField(name: 'search_subject')
	late String searchSubject;
	@JSONField(name: 'search_content')
	late String searchContent;
	@JSONField(name: 'adv_status')
	late String advStatus;

	ThreadPageThreadList();

	factory ThreadPageThreadList.fromJson(Map<String, dynamic> json) => $ThreadPageThreadListFromJson(json);

	Map<String, dynamic> toJson() => $ThreadPageThreadListToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class ThreadPageThreadListAuthor {
	late String uid;
	@JSONField(name: 'user_name')
	late String userName;
	@JSONField(name: 'search_user_name')
	late String searchUserName;
	@JSONField(name: 'old_user_name')
	late String oldUserName;
	late ThreadPageThreadListAuthorGroup group;
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

	ThreadPageThreadListAuthor();

	factory ThreadPageThreadListAuthor.fromJson(Map<String, dynamic> json) => $ThreadPageThreadListAuthorFromJson(json);

	Map<String, dynamic> toJson() => $ThreadPageThreadListAuthorToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class ThreadPageThreadListAuthorGroup {
	late String gid;
	late String name;
	late String category;
	late String rank;
	late String picture;

	ThreadPageThreadListAuthorGroup();

	factory ThreadPageThreadListAuthorGroup.fromJson(Map<String, dynamic> json) => $ThreadPageThreadListAuthorGroupFromJson(json);

	Map<String, dynamic> toJson() => $ThreadPageThreadListAuthorGroupToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class ThreadPageThreadListFirstPost {
	late ThreadPageThreadListFirstPostAuthor author;
	late String pid;
	@JSONField(name: 'is_first')
	late bool isFirst;
	@JSONField(name: 'is_water')
	late bool isWater;
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

	ThreadPageThreadListFirstPost();

	factory ThreadPageThreadListFirstPost.fromJson(Map<String, dynamic> json) => $ThreadPageThreadListFirstPostFromJson(json);

	Map<String, dynamic> toJson() => $ThreadPageThreadListFirstPostToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class ThreadPageThreadListFirstPostAuthor {
	late String uid;
	@JSONField(name: 'user_name')
	late String userName;
	@JSONField(name: 'search_user_name')
	late String searchUserName;
	@JSONField(name: 'old_user_name')
	late String oldUserName;
	late ThreadPageThreadListFirstPostAuthorGroup group;
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

	ThreadPageThreadListFirstPostAuthor();

	factory ThreadPageThreadListFirstPostAuthor.fromJson(Map<String, dynamic> json) => $ThreadPageThreadListFirstPostAuthorFromJson(json);

	Map<String, dynamic> toJson() => $ThreadPageThreadListFirstPostAuthorToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class ThreadPageThreadListFirstPostAuthorGroup {
	late String gid;
	late String name;
	late String category;
	late String rank;
	late String picture;

	ThreadPageThreadListFirstPostAuthorGroup();

	factory ThreadPageThreadListFirstPostAuthorGroup.fromJson(Map<String, dynamic> json) => $ThreadPageThreadListFirstPostAuthorGroupFromJson(json);

	Map<String, dynamic> toJson() => $ThreadPageThreadListFirstPostAuthorGroupToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class ThreadPageThreadListTopicTag {
	late String id;
	late String name;
	@JSONField(name: 'can_business')
	late String canBusiness;
	@JSONField(name: 'logo_img_url')
	late String logoImgUrl;

	ThreadPageThreadListTopicTag();

	factory ThreadPageThreadListTopicTag.fromJson(Map<String, dynamic> json) => $ThreadPageThreadListTopicTagFromJson(json);

	Map<String, dynamic> toJson() => $ThreadPageThreadListTopicTagToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class ThreadPageThreadListBusinessTag {
	late String id;
	late String name;
	@JSONField(name: 'can_business')
	late String canBusiness;
	@JSONField(name: 'logo_img_url')
	late String logoImgUrl;

	ThreadPageThreadListBusinessTag();

	factory ThreadPageThreadListBusinessTag.fromJson(Map<String, dynamic> json) => $ThreadPageThreadListBusinessTagFromJson(json);

	Map<String, dynamic> toJson() => $ThreadPageThreadListBusinessTagToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class ThreadPageThreadListZanInfo {
	late String uid;
	late String category;
	@JSONField(name: 'object_id')
	late String objectId;
	@JSONField(name: 'relation_object_ids')
	late String relationObjectIds;
	@JSONField(name: 'time_stamp')
	late String timeStamp;
	late String sign;

	ThreadPageThreadListZanInfo();

	factory ThreadPageThreadListZanInfo.fromJson(Map<String, dynamic> json) => $ThreadPageThreadListZanInfoFromJson(json);

	Map<String, dynamic> toJson() => $ThreadPageThreadListZanInfoToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class ThreadPageStickThreadList {
	late ThreadPageStickThreadListAuthor author;
	late String url;
	@JSONField(name: 'first_post')
	late ThreadPageStickThreadListFirstPost firstPost;
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
	@JSONField(name: 'topic_tag')
	late ThreadPageStickThreadListTopicTag topicTag;
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
	@JSONField(name: 'last_post_time')
	late String lastPostTime;
	@JSONField(name: 'stick_level')
	late String stickLevel;
	late String highlight;
	@JSONField(name: 'digest_level')
	late String digestLevel;
	@JSONField(name: 'created_at')
	late String createdAt;
	@JSONField(name: 'updated_at')
	late String updatedAt;
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
	@JSONField(name: 'zan_info')
	late ThreadPageStickThreadListZanInfo zanInfo;
	@JSONField(name: 'search_subject')
	late String searchSubject;
	@JSONField(name: 'search_content')
	late String searchContent;
	@JSONField(name: 'adv_status')
	late String advStatus;

	ThreadPageStickThreadList();

	factory ThreadPageStickThreadList.fromJson(Map<String, dynamic> json) => $ThreadPageStickThreadListFromJson(json);

	Map<String, dynamic> toJson() => $ThreadPageStickThreadListToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class ThreadPageStickThreadListAuthor {
	late String uid;
	@JSONField(name: 'user_name')
	late String userName;
	@JSONField(name: 'search_user_name')
	late String searchUserName;
	@JSONField(name: 'old_user_name')
	late String oldUserName;
	late ThreadPageStickThreadListAuthorGroup group;
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

	ThreadPageStickThreadListAuthor();

	factory ThreadPageStickThreadListAuthor.fromJson(Map<String, dynamic> json) => $ThreadPageStickThreadListAuthorFromJson(json);

	Map<String, dynamic> toJson() => $ThreadPageStickThreadListAuthorToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class ThreadPageStickThreadListAuthorGroup {
	late String gid;
	late String name;
	late String category;
	late String rank;
	late String picture;

	ThreadPageStickThreadListAuthorGroup();

	factory ThreadPageStickThreadListAuthorGroup.fromJson(Map<String, dynamic> json) => $ThreadPageStickThreadListAuthorGroupFromJson(json);

	Map<String, dynamic> toJson() => $ThreadPageStickThreadListAuthorGroupToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class ThreadPageStickThreadListFirstPost {
	late ThreadPageStickThreadListFirstPostAuthor author;
	late String pid;
	@JSONField(name: 'is_first')
	late bool isFirst;
	@JSONField(name: 'is_water')
	late bool isWater;
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
	@JSONField(name: 'hold_refer')
	late bool holdRefer;
	@JSONField(name: 'good_reply')
	late bool goodReply;
	@JSONField(name: 'hold_rate')
	late bool holdRate;
	@JSONField(name: 'rate_pk')
	late bool ratePk;
	@JSONField(name: 'rate_info')
	late List<ThreadPageStickThreadListFirstPostRateInfo> rateInfo;
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

	ThreadPageStickThreadListFirstPost();

	factory ThreadPageStickThreadListFirstPost.fromJson(Map<String, dynamic> json) => $ThreadPageStickThreadListFirstPostFromJson(json);

	Map<String, dynamic> toJson() => $ThreadPageStickThreadListFirstPostToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class ThreadPageStickThreadListFirstPostAuthor {
	late String uid;
	@JSONField(name: 'user_name')
	late String userName;
	@JSONField(name: 'search_user_name')
	late String searchUserName;
	@JSONField(name: 'old_user_name')
	late String oldUserName;
	late ThreadPageStickThreadListFirstPostAuthorGroup group;
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

	ThreadPageStickThreadListFirstPostAuthor();

	factory ThreadPageStickThreadListFirstPostAuthor.fromJson(Map<String, dynamic> json) => $ThreadPageStickThreadListFirstPostAuthorFromJson(json);

	Map<String, dynamic> toJson() => $ThreadPageStickThreadListFirstPostAuthorToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class ThreadPageStickThreadListFirstPostAuthorGroup {
	late String gid;
	late String name;
	late String category;
	late String rank;
	late String picture;

	ThreadPageStickThreadListFirstPostAuthorGroup();

	factory ThreadPageStickThreadListFirstPostAuthorGroup.fromJson(Map<String, dynamic> json) => $ThreadPageStickThreadListFirstPostAuthorGroupFromJson(json);

	Map<String, dynamic> toJson() => $ThreadPageStickThreadListFirstPostAuthorGroupToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class ThreadPageStickThreadListFirstPostRateInfo {
	@JSONField(name: 'incentive_id')
	late String incentiveId;
	@JSONField(name: 'plus_number')
	late String plusNumber;
	@JSONField(name: 'minus_number')
	late String minusNumber;
	late String count;

	ThreadPageStickThreadListFirstPostRateInfo();

	factory ThreadPageStickThreadListFirstPostRateInfo.fromJson(Map<String, dynamic> json) => $ThreadPageStickThreadListFirstPostRateInfoFromJson(json);

	Map<String, dynamic> toJson() => $ThreadPageStickThreadListFirstPostRateInfoToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class ThreadPageStickThreadListTopicTag {
	late String id;
	late String name;
	@JSONField(name: 'can_business')
	late String canBusiness;
	@JSONField(name: 'logo_img_url')
	late String logoImgUrl;

	ThreadPageStickThreadListTopicTag();

	factory ThreadPageStickThreadListTopicTag.fromJson(Map<String, dynamic> json) => $ThreadPageStickThreadListTopicTagFromJson(json);

	Map<String, dynamic> toJson() => $ThreadPageStickThreadListTopicTagToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class ThreadPageStickThreadListZanInfo {
	late String uid;
	late String category;
	@JSONField(name: 'object_id')
	late String objectId;
	@JSONField(name: 'relation_object_ids')
	late String relationObjectIds;
	@JSONField(name: 'time_stamp')
	late String timeStamp;
	late String sign;

	ThreadPageStickThreadListZanInfo();

	factory ThreadPageStickThreadListZanInfo.fromJson(Map<String, dynamic> json) => $ThreadPageStickThreadListZanInfoFromJson(json);

	Map<String, dynamic> toJson() => $ThreadPageStickThreadListZanInfoToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}