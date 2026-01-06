import 'dart:convert';

import 'package:flutter_study/api/response/common/user_entity.dart';
import 'package:flutter_study/api/response/msg_group_entity.dart';
import 'package:flutter_study/generated/json/base/json_field.dart';
import 'package:flutter_study/generated/json/message_entity.g.dart';

export 'package:flutter_study/generated/json/message_entity.g.dart';

@JsonSerializable()
class MessageEntity {
  @JSONField(name: 'msg_list')
  late List<MsgList> msgList;
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
class MsgList {
  @JSONField(name: 'dialog_info')
  late DialogInfo dialogInfo;
  @JSONField(name: 'last_content')
  late LastContent lastContent;
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
  late int stick;

  MsgList();

  factory MsgList.fromJson(Map<String, dynamic> json) =>
      $MessageMsgListFromJson(json);

  Map<String, dynamic> toJson() => $MessageMsgListToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class DialogInfo {
  UserEntity? user;
  MsgGroupEntity? group;
  @JSONField(name: 'shield_status')
  late String shieldStatus;
  late bool disturb;
  @JSONField(name: 'dialog_id')
  late String dialogId;
  @JSONField(name: 'dialog_type')
  late int dialogType;
  @JSONField(name: 'danger_user')
  late String dangerUser;

  DialogInfo();

  factory DialogInfo.fromJson(Map<String, dynamic> json) =>
      $MessageMsgListDialogInfoFromJson(json);

  Map<String, dynamic> toJson() => $MessageMsgListDialogInfoToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class LastContent {
  @JSONField(name: 'content_id')
  late String contentId;
  @JSONField(name: 'from_user')
  late UserEntity fromUser;
  late String content;
  @JSONField(name: 'content_obj')
  late ContentObj contentObj;
  late String status;
  @JSONField(name: 'created_at')
  late String createdAt;
  late List<dynamic> urls;
  @JSONField(name: 'from_uid')
  late String fromUid;
  @JSONField(name: 'from_username')
  late String fromUsername;

  LastContent();

  factory LastContent.fromJson(Map<String, dynamic> json) =>
      $MessageMsgListLastContentFromJson(json);

  Map<String, dynamic> toJson() => $MessageMsgListLastContentToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class ContentObj {
  late ContentObjExt? ext;
  late String content;

  ContentObj();

  factory ContentObj.fromJson(Map<String, dynamic> json) =>
      $MessageMsgListLastContentContentObjFromJson(json);

  Map<String, dynamic> toJson() =>
      $MessageMsgListLastContentContentObjToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class ContentObjExt {
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
  late String remark;

  ContentObjExt();

  factory ContentObjExt.fromJson(Map<String, dynamic> json) =>
      $MessageMsgListLastContentContentObjExtFromJson(json);

  Map<String, dynamic> toJson() =>
      $MessageMsgListLastContentContentObjExtToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}
