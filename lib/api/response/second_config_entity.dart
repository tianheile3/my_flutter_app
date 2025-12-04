import 'package:flutter_study/generated/json/base/json_field.dart';
import 'package:flutter_study/generated/json/second_config_entity.g.dart';
import 'dart:convert';
export 'package:flutter_study/generated/json/second_config_entity.g.dart';

@JsonSerializable()
class SecondConfigEntity {
	@JSONField(name: 'sec_id')
	late String secId;
	@JSONField(name: 'sec_name')
	late String secName;
	@JSONField(name: 'user_name')
	late String userName;
	@JSONField(name: 'city_name')
	late String cityName;
	late String content;
	@JSONField(name: 'config_info')
	late SecondConfigConfigInfo configInfo;
	@JSONField(name: 'created_at')
	late String createdAt;
	@JSONField(name: 'updated_at')
	late String updatedAt;

	SecondConfigEntity();

	factory SecondConfigEntity.fromJson(Map<String, dynamic> json) => $SecondConfigEntityFromJson(json);

	Map<String, dynamic> toJson() => $SecondConfigEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class SecondConfigConfigInfo {
	@JSONField(name: 'lunbo_check')
	late String lunboCheck;
	@JSONField(name: 'lunbo_bid')
	late String lunboBid;
	@JSONField(name: 'app_portal_check')
	late String appPortalCheck;
	@JSONField(name: 'mini_app_portal_check')
	late String miniAppPortalCheck;
	@JSONField(name: 'app_portal_info')
	late List<SecondConfigConfigInfoAppPortalInfo> appPortalInfo;
	@JSONField(name: 'mini_app_portal_info')
	late List<SecondConfigConfigInfoMiniAppPortalInfo> miniAppPortalInfo;
	@JSONField(name: 'post_flow_check')
	late String postFlowCheck;
	@JSONField(name: 'nav_name')
	late String navName;
	@JSONField(name: 'filter_content')
	late String filterContent;
	@JSONField(name: 'filterpf_info')
	late List<SecondConfigConfigInfoFilterpfInfo> filterpfInfo;
	@JSONField(name: 'activity_check')
	late String activityCheck;
	@JSONField(name: 'activity_bid')
	late String activityBid;
	@JSONField(name: 'adv_one_id')
	late String advOneId;
	@JSONField(name: 'adv_two_id')
	late String advTwoId;
	@JSONField(name: 'adv_three_id')
	late String advThreeId;
	@JSONField(name: 'adv_four_id')
	late String advFourId;
	@JSONField(name: 'adv_five_id')
	late String advFiveId;
	@JSONField(name: 'bottom_layer_check')
	late String bottomLayerCheck;
	@JSONField(name: 'bottom_layer_url')
	late String bottomLayerUrl;
	@JSONField(name: 'topic_check')
	late String topicCheck;
	@JSONField(name: 'topic_info')
	late List<dynamic> topicInfo;
	@JSONField(name: 'pic_position_info')
	late List<SecondConfigConfigInfoPicPositionInfo> picPositionInfo;
	@JSONField(name: 'pic_position_check')
	late String picPositionCheck;
	@JSONField(name: 'pic_nav_content')
	late String picNavContent;
	@JSONField(name: 'pic_right_default_content')
	late String picRightDefaultContent;
	@JSONField(name: 'pic_right_link')
	late String picRightLink;
	@JSONField(name: 'pic_template')
	late String picTemplate;
	@JSONField(name: 're_merchant_info')
	late List<SecondConfigConfigInfoReMerchantInfo> reMerchantInfo;
	@JSONField(name: 're_merchant_check')
	late String reMerchantCheck;
	@JSONField(name: 're_merchant_nav_content')
	late String reMerchantNavContent;
	@JSONField(name: 're_merchant_right_default_content')
	late String reMerchantRightDefaultContent;
	@JSONField(name: 're_merchant_right_link')
	late String reMerchantRightLink;
	@JSONField(name: 'right_layer_check')
	late String rightLayerCheck;
	@JSONField(name: 'right_layer_logo_url')
	late String rightLayerLogoUrl;
	@JSONField(name: 'right_layer_content_url')
	late String rightLayerContentUrl;
	@JSONField(name: 'defaule_publish_id')
	late String defaulePublishId;
	@JSONField(name: 'defaule_publish_name')
	late String defaulePublishName;
	@JSONField(name: 'defaule_publish_city_name')
	late String defaulePublishCityName;
	@JSONField(name: 'defaule_publish_type')
	late String defaulePublishType;
	@JSONField(name: 'defaule_publish_link')
	late String defaulePublishLink;
	@JSONField(name: 'post_flow_type')
	late String postFlowType;
	@JSONField(name: 'post_waterfalls_flow_show_check')
	late String postWaterfallsFlowShowCheck;
	@JSONField(name: 'new_recommend_check')
	late String newRecommendCheck;
	late String zujiancheck;
	@JSONField(name: 'industry_category_name')
	late String industryCategoryName;
	@JSONField(name: 'industry_category_id')
	late String industryCategoryId;
	@JSONField(name: 'secondary_related_ids')
	late String secondaryRelatedIds;
	@JSONField(name: 'post_flow_stick_check')
	late String postFlowStickCheck;
	@JSONField(name: 'pic_turn_list')
	late List<SecondConfigConfigInfoPicTurnList> picTurnList;
	@JSONField(name: 'activity_list')
	late List<dynamic> activityList;
	@JSONField(name: 'tag_config_place')
	late String tagConfigPlace;
	@JSONField(name: 'tag_config_list')
	late List<dynamic> tagConfigList;

	SecondConfigConfigInfo();

	factory SecondConfigConfigInfo.fromJson(Map<String, dynamic> json) => $SecondConfigConfigInfoFromJson(json);

	Map<String, dynamic> toJson() => $SecondConfigConfigInfoToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class SecondConfigConfigInfoAppPortalInfo {
	@JSONField(name: 'order_by')
	late String orderBy;
	late String name;
	late String logo;
	@JSONField(name: 'logo_url')
	late String logoUrl;
	@JSONField(name: 'content_url')
	late String contentUrl;
	@JSONField(name: 'activity_text')
	late String activityText;
	@JSONField(name: 'app_portal_display')
	late String appPortalDisplay;

	SecondConfigConfigInfoAppPortalInfo();

	factory SecondConfigConfigInfoAppPortalInfo.fromJson(Map<String, dynamic> json) => $SecondConfigConfigInfoAppPortalInfoFromJson(json);

	Map<String, dynamic> toJson() => $SecondConfigConfigInfoAppPortalInfoToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class SecondConfigConfigInfoMiniAppPortalInfo {
	@JSONField(name: 'order_by')
	late String orderBy;
	late String name;
	late String logo;
	@JSONField(name: 'logo_url')
	late String logoUrl;
	@JSONField(name: 'content_url')
	late String contentUrl;
	@JSONField(name: 'activity_text')
	late String activityText;
	@JSONField(name: 'app_portal_display')
	late String appPortalDisplay;

	SecondConfigConfigInfoMiniAppPortalInfo();

	factory SecondConfigConfigInfoMiniAppPortalInfo.fromJson(Map<String, dynamic> json) => $SecondConfigConfigInfoMiniAppPortalInfoFromJson(json);

	Map<String, dynamic> toJson() => $SecondConfigConfigInfoMiniAppPortalInfoToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class SecondConfigConfigInfoFilterpfInfo {
	@JSONField(name: 'order_by')
	late String orderBy;
	late String classify;
	late String bid;
	late String id;

	SecondConfigConfigInfoFilterpfInfo();

	factory SecondConfigConfigInfoFilterpfInfo.fromJson(Map<String, dynamic> json) => $SecondConfigConfigInfoFilterpfInfoFromJson(json);

	Map<String, dynamic> toJson() => $SecondConfigConfigInfoFilterpfInfoToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class SecondConfigConfigInfoPicPositionInfo {
	@JSONField(name: 'order_by')
	late String orderBy;
	@JSONField(name: 'logo_url')
	late String logoUrl;
	@JSONField(name: 'content_url')
	late String contentUrl;

	SecondConfigConfigInfoPicPositionInfo();

	factory SecondConfigConfigInfoPicPositionInfo.fromJson(Map<String, dynamic> json) => $SecondConfigConfigInfoPicPositionInfoFromJson(json);

	Map<String, dynamic> toJson() => $SecondConfigConfigInfoPicPositionInfoToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class SecondConfigConfigInfoReMerchantInfo {
	@JSONField(name: 'order_by')
	late String orderBy;
	late String bid;
	@JSONField(name: 'logo_url')
	late String logoUrl;
	@JSONField(name: 'content_url')
	late String contentUrl;
	@JSONField(name: 'activity_text')
	late String activityText;

	SecondConfigConfigInfoReMerchantInfo();

	factory SecondConfigConfigInfoReMerchantInfo.fromJson(Map<String, dynamic> json) => $SecondConfigConfigInfoReMerchantInfoFromJson(json);

	Map<String, dynamic> toJson() => $SecondConfigConfigInfoReMerchantInfoToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class SecondConfigConfigInfoPicTurnList {
	late String fid;
	@JSONField(name: 'ref_pid')
	late String refPid;
	@JSONField(name: 'ref_tid')
	late String refTid;
	late String tid;
	late SecondConfigConfigInfoPicTurnListAuthor author;
	late String subject;
	late String content;
	late String images;
	@JSONField(name: 'first_pic_url')
	late String firstPicUrl;
	late SecondConfigConfigInfoPicTurnListThread thread;
	@JSONField(name: 'created_at')
	late String createdAt;
	late String order;
	@JSONField(name: 'online_time')
	late String onlineTime;
	late String source;
	late String stick;
	@JSONField(name: 'outsite_url')
	late String outsiteUrl;
	@JSONField(name: 'go_to_url')
	late String goToUrl;
	@JSONField(name: 'city_name')
	late String cityName;
	@JSONField(name: 'city_id')
	late String cityId;
	@JSONField(name: 'show_url')
	late String showUrl;
	late String lon;
	late String lat;
	late String address;
	@JSONField(name: 'thread_tags')
	late List<dynamic> threadTags;
	@JSONField(name: 'thread_type')
	late String threadType;
	@JSONField(name: 'thread_exp')
	late bool threadExp;
	@JSONField(name: 'user_has_exp')
	late bool userHasExp;
	@JSONField(name: 'video_addr')
	late String videoAddr;
	@JSONField(name: 'video_addr_pic')
	late String videoAddrPic;
	@JSONField(name: 'search_subject')
	late String searchSubject;
	@JSONField(name: 'search_content')
	late String searchContent;
	@JSONField(name: 'show_style')
	late String showStyle;

	SecondConfigConfigInfoPicTurnList();

	factory SecondConfigConfigInfoPicTurnList.fromJson(Map<String, dynamic> json) => $SecondConfigConfigInfoPicTurnListFromJson(json);

	Map<String, dynamic> toJson() => $SecondConfigConfigInfoPicTurnListToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class SecondConfigConfigInfoPicTurnListAuthor {
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
	late List<dynamic> medals;
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

	SecondConfigConfigInfoPicTurnListAuthor();

	factory SecondConfigConfigInfoPicTurnListAuthor.fromJson(Map<String, dynamic> json) => $SecondConfigConfigInfoPicTurnListAuthorFromJson(json);

	Map<String, dynamic> toJson() => $SecondConfigConfigInfoPicTurnListAuthorToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class SecondConfigConfigInfoPicTurnListThread {
	@JSONField(name: 'is_private')
	late String isPrivate;
	late String cityid;
	late String cityname;
	late String tid;
	late String fid;
	late String pid;
	late String fname;
	late String subject;
	late SecondConfigConfigInfoPicTurnListThreadAuthor author;
	@JSONField(name: 'author_uid')
	late String authorUid;
	late String category;
	@JSONField(name: 'thread_type')
	late String threadType;
	late String views;
	late String replies;
	late String favorites;
	late String status;
	late String extra;
	late String closed;
	@JSONField(name: 'last_post_time')
	late String lastPostTime;
	@JSONField(name: 'last_post_author')
	late String lastPostAuthor;
	@JSONField(name: 'last_post_author_uid')
	late String lastPostAuthorUid;
	@JSONField(name: 'last_pid')
	late String lastPid;
	@JSONField(name: 'first_pid')
	late String firstPid;
	late String url;
	@JSONField(name: 'ref_fid')
	late String refFid;
	@JSONField(name: 'ref_tid')
	late String refTid;
	@JSONField(name: 'created_at')
	late String createdAt;
	@JSONField(name: 'thread_tags')
	late List<dynamic> threadTags;
	@JSONField(name: 'hold_video')
	late bool holdVideo;
	@JSONField(name: 'search_subject')
	late String searchSubject;
	@JSONField(name: 'search_content')
	late String searchContent;
	@JSONField(name: 'rate_plus_number')
	late String ratePlusNumber;
	@JSONField(name: 'topic_list_stick')
	late String topicListStick;
	late String address;
	@JSONField(name: 'tag_str')
	late String tagStr;
	late List<dynamic> attachments;
	@JSONField(name: 'forum_category_name')
	late String forumCategoryName;

	SecondConfigConfigInfoPicTurnListThread();

	factory SecondConfigConfigInfoPicTurnListThread.fromJson(Map<String, dynamic> json) => $SecondConfigConfigInfoPicTurnListThreadFromJson(json);

	Map<String, dynamic> toJson() => $SecondConfigConfigInfoPicTurnListThreadToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class SecondConfigConfigInfoPicTurnListThreadAuthor {
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
	late List<dynamic> medals;
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

	SecondConfigConfigInfoPicTurnListThreadAuthor();

	factory SecondConfigConfigInfoPicTurnListThreadAuthor.fromJson(Map<String, dynamic> json) => $SecondConfigConfigInfoPicTurnListThreadAuthorFromJson(json);

	Map<String, dynamic> toJson() => $SecondConfigConfigInfoPicTurnListThreadAuthorToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}