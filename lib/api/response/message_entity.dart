import 'dart:convert';

import 'package:flutter_study/api/response/common/medal_entity.dart';
import 'package:flutter_study/generated/json/base/json_field.dart';
import 'package:flutter_study/generated/json/message_entity.g.dart';

export 'package:flutter_study/generated/json/message_entity.g.dart';

@JsonSerializable()
class MessageEntity {
  @JSONField(name: 'msg_list')
  late List<MessageMsgList> msgList;
  @JSONField(name: 'more_new')
  late bool moreNew;

  MessageEntity();

  factory MessageEntity.fromJson(Map<String, dynamic> json) =>
      $MessageEntityFromJson(json);

  Map<String, dynamic> toJson() => $MessageEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class MessageMsgList {
  @JSONField(name: 'dialog_info')
  late MessageMsgListDialogInfo dialogInfo;
  @JSONField(name: 'last_content')
  late MessageMsgListLastContent lastContent;
  @JSONField(name: 'new_count')
  late int newCount;
  @JSONField(name: 'shield_count')
  late String shieldCount;
  @JSONField(name: 'created_at')
  late String createdAt;
  @JSONField(name: 'updated_at')
  late String updatedAt;
  late String summery;
  late String bid;
  @JSONField(name: 'filter_config_set')
  late String filterConfigSet;
  late String stick;

  MessageMsgList();

  factory MessageMsgList.fromJson(Map<String, dynamic> json) =>
      $MessageMsgListFromJson(json);

  Map<String, dynamic> toJson() => $MessageMsgListToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class MessageMsgListDialogInfo {
  late MessageMsgListLastContentFromUser user;
  @JSONField(name: 'shield_status')
  late String shieldStatus;
  late bool disturb;
  @JSONField(name: 'dialog_id')
  late String dialogId;
  @JSONField(name: 'dialog_type')
  late int dialogType;
  @JSONField(name: 'danger_user')
  late String dangerUser;

  MessageMsgListDialogInfo();

  factory MessageMsgListDialogInfo.fromJson(Map<String, dynamic> json) =>
      $MessageMsgListDialogInfoFromJson(json);

  Map<String, dynamic> toJson() => $MessageMsgListDialogInfoToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class MessageMsgListLastContent {
  @JSONField(name: 'content_id')
  late String contentId;
  @JSONField(name: 'from_user')
  late MessageMsgListLastContentFromUser fromUser;
  late String content;
  @JSONField(name: 'content_obj')
  late MessageMsgListLastContentContentObj contentObj;
  late String status;
  @JSONField(name: 'created_at')
  late String createdAt;
  late List<dynamic> urls;
  @JSONField(name: 'from_uid')
  late String fromUid;
  @JSONField(name: 'from_username')
  late String fromUsername;

  MessageMsgListLastContent();

  factory MessageMsgListLastContent.fromJson(Map<String, dynamic> json) =>
      $MessageMsgListLastContentFromJson(json);

  Map<String, dynamic> toJson() => $MessageMsgListLastContentToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class MessageMsgListLastContentFromUser {
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
  late List<MedalEntity> medals;
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

  MessageMsgListLastContentFromUser();

  factory MessageMsgListLastContentFromUser.fromJson(
    Map<String, dynamic> json,
  ) => $MessageMsgListLastContentFromUserFromJson(json);

  Map<String, dynamic> toJson() =>
      $MessageMsgListLastContentFromUserToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class MessageMsgListLastContentContentObj {
  late MessageMsgListLastContentContentObjExt ext;
  late String content;

  MessageMsgListLastContentContentObj();

  factory MessageMsgListLastContentContentObj.fromJson(
    Map<String, dynamic> json,
  ) => $MessageMsgListLastContentContentObjFromJson(json);

  Map<String, dynamic> toJson() =>
      $MessageMsgListLastContentContentObjToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class MessageMsgListLastContentContentObjExt {
  late String fid;
  late String replyUid;
  late String subject;
  late String replyUserName;
  late String parentPid;
  late String quotePostMessage;
  late String pid;
  late String tid;
  late String url;
  late String content;
  late String cityName;
  late String authorUid;
  late String isBoard;

  MessageMsgListLastContentContentObjExt();

  factory MessageMsgListLastContentContentObjExt.fromJson(
    Map<String, dynamic> json,
  ) => $MessageMsgListLastContentContentObjExtFromJson(json);

  Map<String, dynamic> toJson() =>
      $MessageMsgListLastContentContentObjExtToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}
