import 'package:flutter_study/generated/json/base/json_field.dart';
import 'package:flutter_study/generated/json/user_comment_list_entity.g.dart';
import 'dart:convert';
export 'package:flutter_study/generated/json/user_comment_list_entity.g.dart';

@JsonSerializable()
class UserCommentListEntity {
	late String code;
	late String message;
	late List<UserCommentListComments> comments;
	late String count;
	late String page;
	@JSONField(name: 'total_page')
	late String totalPage;
	@JSONField(name: 'per_page')
	late String perPage;

	UserCommentListEntity();

	factory UserCommentListEntity.fromJson(Map<String, dynamic> json) => $UserCommentListEntityFromJson(json);

	Map<String, dynamic> toJson() => $UserCommentListEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class UserCommentListComments {
	@JSONField(name: 'board_info')
	late UserCommentListCommentsBoardInfo boardInfo;
	late String bid;
	late String tid;
	late String cost;
	@JSONField(name: 'is_cost')
	late String isCost;
	@JSONField(name: 'cost_images')
	late String costImages;
	@JSONField(name: 'author_uid')
	late String authorUid;
	late String author;
	late String access;
	late String subject;
	late String content;
	@JSONField(name: 'post_num')
	late String postNum;
	@JSONField(name: 'rate_num')
	late String rateNum;
	late List<dynamic> images;
	late List<dynamic> videos;
	@JSONField(name: 'avg_access')
	late String avgAccess;
	@JSONField(name: 'avg_price')
	late String avgPrice;
	@JSONField(name: 'comment_level')
	late String commentLevel;
	@JSONField(name: 'created_at_str')
	late String createdAtStr;
	@JSONField(name: 'avatar_url')
	late String avatarUrl;
	@JSONField(name: 'is_rated')
	late String isRated;
	@JSONField(name: 'image_num')
	late String imageNum;
	late String pid;
	@JSONField(name: 'city_name')
	late String cityName;
	late String status;

	UserCommentListComments();

	factory UserCommentListComments.fromJson(Map<String, dynamic> json) => $UserCommentListCommentsFromJson(json);

	Map<String, dynamic> toJson() => $UserCommentListCommentsToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class UserCommentListCommentsBoardInfo {
	late String bid;
	late String name;
	late String description;
	@JSONField(name: 'board_type')
	late String boardType;
	@JSONField(name: 'category_id')
	late String categoryId;
	@JSONField(name: 'category_name')
	late String categoryName;
	@JSONField(name: 'category_name_list')
	late List<dynamic> categoryNameList;
	@JSONField(name: 'category_list')
	late List<dynamic> categoryList;
	@JSONField(name: 'thread_count')
	late String threadCount;
	@JSONField(name: 'today_thread_count')
	late String todayThreadCount;
	@JSONField(name: 'subscribe_num')
	late String subscribeNum;
	@JSONField(name: 'visit_num')
	late String visitNum;
	late String cover;
	@JSONField(name: 'cover_url')
	late String coverUrl;
	late String status;
	late String uid;
	late String username;
	@JSONField(name: 'str_bid')
	late String strBid;
	@JSONField(name: 'display_order')
	late String displayOrder;
	@JSONField(name: 'pic_urls')
	late String picUrls;
	@JSONField(name: 'pic_urls_list')
	late List<UserCommentListCommentsBoardInfoPicUrlsList> picUrlsList;
	@JSONField(name: 'pic_flag')
	late String picFlag;
	@JSONField(name: 'index_flag')
	late String indexFlag;
	@JSONField(name: 'index_type')
	late String indexType;
	@JSONField(name: 'key_words')
	late String keyWords;
	late String background;
	@JSONField(name: 'show_type')
	late String showType;
	@JSONField(name: 'like_num')
	late String likeNum;
	@JSONField(name: 'use_cover')
	late String useCover;
	late String liveness;
	@JSONField(name: 'use_target')
	late String useTarget;
	@JSONField(name: 'city_id')
	late String cityId;
	late String longitude;
	late String latitude;
	late String address;
	late String affiche;
	@JSONField(name: 'affiche_status')
	late String afficheStatus;
	@JSONField(name: 'notice_content')
	late String noticeContent;
	late String verify;
	@JSONField(name: 'bn_keyword_display')
	late String bnKeywordDisplay;
	@JSONField(name: 'is_chosen')
	late bool isChosen;
	@JSONField(name: 'can_read')
	late bool canRead;
	late String domain;
	@JSONField(name: 'table_name')
	late String tableName;
	@JSONField(name: 'last_thread_gather_at')
	late String lastThreadGatherAt;
	@JSONField(name: 'submit_type')
	late String submitType;
	@JSONField(name: 'hot_degree')
	late String hotDegree;
	@JSONField(name: 'tid_update_frequency')
	late String tidUpdateFrequency;
	@JSONField(name: 'intro_tid')
	late String introTid;
	@JSONField(name: 'best_ten_shop')
	late String bestTenShop;
	@JSONField(name: 'best_ten_shop_title')
	late String bestTenShopTitle;
	@JSONField(name: 'business_circle_name')
	late String businessCircleName;
	@JSONField(name: 'coupon_num')
	late String couponNum;
	@JSONField(name: 'created_at')
	late String createdAt;
	@JSONField(name: 'updated_at')
	late String updatedAt;

	UserCommentListCommentsBoardInfo();

	factory UserCommentListCommentsBoardInfo.fromJson(Map<String, dynamic> json) => $UserCommentListCommentsBoardInfoFromJson(json);

	Map<String, dynamic> toJson() => $UserCommentListCommentsBoardInfoToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class UserCommentListCommentsBoardInfoPicUrlsList {
	late String btid;
	late String bid;
	late String tid;
	late String url;

	UserCommentListCommentsBoardInfoPicUrlsList();

	factory UserCommentListCommentsBoardInfoPicUrlsList.fromJson(Map<String, dynamic> json) => $UserCommentListCommentsBoardInfoPicUrlsListFromJson(json);

	Map<String, dynamic> toJson() => $UserCommentListCommentsBoardInfoPicUrlsListToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}