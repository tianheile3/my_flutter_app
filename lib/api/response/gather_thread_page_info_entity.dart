import 'package:flutter_study/generated/json/base/json_field.dart';
import 'package:flutter_study/generated/json/gather_thread_page_info_entity.g.dart';
import 'dart:convert';
export 'package:flutter_study/generated/json/gather_thread_page_info_entity.g.dart';

@JsonSerializable()
class GatherThreadPageInfoEntity {
  late int code;
  late String message;
  @JSONField(name: 'thread_list')
  List<GatherThreadPageInfoThreadList>? threadList;
  @JSONField(name: 'gather_info')
  late GatherThreadPageInfoGatherInfo gatherInfo;
  @JSONField(name: 'gather_user')
  late GatherThreadPageInfoGatherUser gatherUser;
  @JSONField(name: 'total_count')
  late String totalCount;
  late String page;
  @JSONField(name: 'per_page')
  late String perPage;
  @JSONField(name: 'current_count')
  late String currentCount;

  GatherThreadPageInfoEntity();

  factory GatherThreadPageInfoEntity.fromJson(Map<String, dynamic> json) =>
      $GatherThreadPageInfoEntityFromJson(json);

  Map<String, dynamic> toJson() => $GatherThreadPageInfoEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class GatherThreadPageInfoThreadList {
  @JSONField(name: 'is_private')
  late String isPrivate;
  late String cityid;
  late String cityname;
  late String domain;
  late String tid;
  late String fid;
  late String pid;
  late String fname;
  late String subject;
  late GatherThreadPageInfoThreadListAuthor author;
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
  @JSONField(name: 'stick_time')
  late String stickTime;
  late String rateid;

  GatherThreadPageInfoThreadList();

  factory GatherThreadPageInfoThreadList.fromJson(Map<String, dynamic> json) =>
      $GatherThreadPageInfoThreadListFromJson(json);

  Map<String, dynamic> toJson() => $GatherThreadPageInfoThreadListToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class GatherThreadPageInfoThreadListAuthor {
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

  GatherThreadPageInfoThreadListAuthor();

  factory GatherThreadPageInfoThreadListAuthor.fromJson(
    Map<String, dynamic> json,
  ) => $GatherThreadPageInfoThreadListAuthorFromJson(json);

  Map<String, dynamic> toJson() =>
      $GatherThreadPageInfoThreadListAuthorToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class GatherThreadPageInfoGatherInfo {
  late String id;
  late String uid;
  late String name;
  late String desc;
  late String cover;
  late String status;
  @JSONField(name: 'visit_num')
  late int visitNum;
  late int threads;
  @JSONField(name: 'last_gather_at')
  late String lastGatherAt;
  @JSONField(name: 'created_at')
  late String createdAt;
  @JSONField(name: 'updated_at')
  late String updatedAt;

  GatherThreadPageInfoGatherInfo();

  factory GatherThreadPageInfoGatherInfo.fromJson(Map<String, dynamic> json) =>
      $GatherThreadPageInfoGatherInfoFromJson(json);

  Map<String, dynamic> toJson() => $GatherThreadPageInfoGatherInfoToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class GatherThreadPageInfoGatherUser {
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

  GatherThreadPageInfoGatherUser();

  factory GatherThreadPageInfoGatherUser.fromJson(Map<String, dynamic> json) =>
      $GatherThreadPageInfoGatherUserFromJson(json);

  Map<String, dynamic> toJson() => $GatherThreadPageInfoGatherUserToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}
