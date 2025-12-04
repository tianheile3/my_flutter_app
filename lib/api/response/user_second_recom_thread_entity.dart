import 'package:flutter_study/generated/json/base/json_field.dart';
import 'package:flutter_study/generated/json/user_second_recom_thread_entity.g.dart';
import 'dart:convert';

import 'package:flutter_study/models/home_item.dart';
export 'package:flutter_study/generated/json/user_second_recom_thread_entity.g.dart';

@JsonSerializable()
class UserSecondRecomThreadEntity {
  @JSONField(name: 'recom_thread_list')
  late List<UserSecondRecomThreadRecomThreadList> recomThreadList;
  @JSONField(name: 'stick_recom_thread_list')
  late List<dynamic>? stickRecomThreadList;
  @JSONField(name: 'adv_list')
  late List<dynamic>? advList;
  @JSONField(name: 'total_count')
  late String totalCount;
  late String page;
  @JSONField(name: 'per_page')
  late String perPage;
  @JSONField(name: 'max_page')
  late String maxPage;

  UserSecondRecomThreadEntity();

  factory UserSecondRecomThreadEntity.fromJson(Map<String, dynamic> json) =>
      $UserSecondRecomThreadEntityFromJson(json);

  Map<String, dynamic> toJson() => $UserSecondRecomThreadEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class UserSecondRecomThreadRecomThreadList implements HomeListItem {
  late String cityid;
  late String cityname;
  late String tid;
  late String fid;
  late String pid;
  late String fname;
  @JSONField(name: 'board_type')
  late String boardType;
  @JSONField(name: 'is_pic_show')
  late bool isPicShow;
  late String subject;
  late UserSecondRecomThreadRecomThreadListAuthor author;
  late String category;
  @JSONField(name: 'thread_type')
  late String threadType;
  late String views;
  late String replies;
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
  @JSONField(name: 'created_at')
  late String createdAt;
  @JSONField(name: 'updated_at')
  late String updatedAt;
  @JSONField(name: 'recommend_list_tag')
  late List<UserSecondRecomThreadRecomThreadListRecommendListTag>
  recommendListTag;
  @JSONField(name: 'recommend_subject')
  late String recommendSubject;
  @JSONField(name: 'recommend_content')
  late String recommendContent;
  @JSONField(name: 'recommend_images')
  late String recommendImages;
  @JSONField(name: 'recommend_image_show_type')
  late String recommendImageShowType;
  @JSONField(name: 'recommend_video_show_type')
  late String recommendVideoShowType;
  @JSONField(name: 'recommend_show_type')
  late String recommendShowType;
  @JSONField(name: 'recommend_source_type')
  late String recommendSourceType;
  @JSONField(name: 'recommend_url')
  late String recommendUrl;
  @JSONField(name: 'str_fid')
  late String strFid;
  @JSONField(name: 'str_tid')
  late String strTid;
  @JSONField(name: 'video_addr')
  late String videoAddr;
  @JSONField(name: 'video_addr_pic')
  late String videoAddrPic;
  @JSONField(name: 'thread_tags')
  late List<dynamic> threadTags;
  @JSONField(name: 'cate_url')
  late String cateUrl;
  @JSONField(name: 'zan_info')
  late UserSecondRecomThreadRecomThreadListZanInfo zanInfo;
  @JSONField(name: 'rec_bid')
  late String recBid;
  @JSONField(name: 'stick_position')
  late String stickPosition;

  List<String> images = [];

  UserSecondRecomThreadRecomThreadList();

  factory UserSecondRecomThreadRecomThreadList.fromJson(
    Map<String, dynamic> json,
  ) => $UserSecondRecomThreadRecomThreadListFromJson(json);

  Map<String, dynamic> toJson() =>
      $UserSecondRecomThreadRecomThreadListToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }

  HomeItemType _type = HomeItemType.normal;

  @override
  HomeItemType get type => _type;

  void setType(HomeItemType newType) {
    _type = newType;
  }
}

@JsonSerializable()
class UserSecondRecomThreadRecomThreadListAuthor {
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

  UserSecondRecomThreadRecomThreadListAuthor();

  factory UserSecondRecomThreadRecomThreadListAuthor.fromJson(
    Map<String, dynamic> json,
  ) => $UserSecondRecomThreadRecomThreadListAuthorFromJson(json);

  Map<String, dynamic> toJson() =>
      $UserSecondRecomThreadRecomThreadListAuthorToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class UserSecondRecomThreadRecomThreadListRecommendListTag {
  late String id;
  late String name;
  @JSONField(name: 'city_name')
  late String cityName;

  UserSecondRecomThreadRecomThreadListRecommendListTag();

  factory UserSecondRecomThreadRecomThreadListRecommendListTag.fromJson(
    Map<String, dynamic> json,
  ) => $UserSecondRecomThreadRecomThreadListRecommendListTagFromJson(json);

  Map<String, dynamic> toJson() =>
      $UserSecondRecomThreadRecomThreadListRecommendListTagToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class UserSecondRecomThreadRecomThreadListZanInfo {
  @JSONField(name: 'time_stamp')
  late String timeStamp;
  late String uid;
  late String category;
  @JSONField(name: 'object_id')
  late String objectId;
  @JSONField(name: 'relation_object_ids')
  late String relationObjectIds;
  late String sign;

  UserSecondRecomThreadRecomThreadListZanInfo();

  factory UserSecondRecomThreadRecomThreadListZanInfo.fromJson(
    Map<String, dynamic> json,
  ) => $UserSecondRecomThreadRecomThreadListZanInfoFromJson(json);

  Map<String, dynamic> toJson() =>
      $UserSecondRecomThreadRecomThreadListZanInfoToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}
