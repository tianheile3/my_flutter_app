import 'package:flutter_study/generated/json/base/json_field.dart';
import 'package:flutter_study/generated/json/fav_board_and_forum_entity.g.dart';
import 'dart:convert';
export 'package:flutter_study/generated/json/fav_board_and_forum_entity.g.dart';

@JsonSerializable()
class FavBoardAndForumEntity {
	late int page;
	@JSONField(name: 'per_page')
	late int perPage;
	@JSONField(name: 'total_count')
	late int totalCount;
	late int code;
	late String message;
	@JSONField(name: 'return_list')
	late List<FavBoardAndForumReturnList> returnList;
	late String version;

	FavBoardAndForumEntity();

	factory FavBoardAndForumEntity.fromJson(Map<String, dynamic> json) => $FavBoardAndForumEntityFromJson(json);

	Map<String, dynamic> toJson() => $FavBoardAndForumEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class FavBoardAndForumReturnList {
	late String bid;
	@JSONField(name: 'bid_str')
	late String bidStr;
	late String fid;
	late String name;
	@JSONField(name: 'city_name')
	late String cityName;
	@JSONField(name: 'display_name')
	late String displayName;
	late String domain;
	@JSONField(name: 'recom_type')
	late String recomType;
	late String cover;
	@JSONField(name: 'user_name')
	late String userName;
	late String uid;
	late String description;
	late bool subscribe;
	@JSONField(name: 'subscribe_num')
	late String subscribeNum;
	@JSONField(name: 'visit_num')
	late String visitNum;
	@JSONField(name: 'today_tid_num')
	late String todayTidNum;
	late String announcement;
	@JSONField(name: 'announce_status')
	late String announceStatus;
	late String status;
	@JSONField(name: 'city_id')
	late String cityId;
	@JSONField(name: 'can_publish_thread')
	late bool canPublishThread;
	@JSONField(name: 'total_tid_num')
	late String totalTidNum;
	late String lon;
	late String lat;
	late String address;
	@JSONField(name: 'board_type')
	late String boardType;
	late String frontdomain;
	late String stick;
	late String verify;
	@JSONField(name: 'last_subject')
	late String lastSubject;
	@JSONField(name: 'last_thread_created_at')
	late String lastThreadCreatedAt;
	@JSONField(name: 'search_name')
	late String searchName;

	FavBoardAndForumReturnList();

	factory FavBoardAndForumReturnList.fromJson(Map<String, dynamic> json) => $FavBoardAndForumReturnListFromJson(json);

	Map<String, dynamic> toJson() => $FavBoardAndForumReturnListToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}