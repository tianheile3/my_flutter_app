import 'dart:convert';

import 'package:flutter_study/api/response/common/user_entity.dart';
import 'package:flutter_study/api/response/message_entity.dart';
import 'package:flutter_study/generated/json/base/json_field.dart';
import 'package:flutter_study/generated/json/dialog_entity.g.dart';

export 'package:flutter_study/generated/json/dialog_entity.g.dart';

@JsonSerializable()
class DialogEntity {
  @JSONField(name: 'dialog_info')
  late DialogInfo dialogInfo;
  @JSONField(name: 'content_list')
  late List<DialogContentList> contentList;
  @JSONField(name: 'next_date')
  String? nextDate;

  DialogEntity();

  factory DialogEntity.fromJson(Map<String, dynamic> json) =>
      $DialogEntityFromJson(json);

  Map<String, dynamic> toJson() => $DialogEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class DialogContentList {
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
  late String link;
  late List<DialogContentListUrls> urls;
  @JSONField(name: 'from_uid')
  late String fromUid;
  @JSONField(name: 'from_username')
  late String fromUsername;

  bool isSent = true;
  MessageType type = MessageType.text;

  DialogContentList();

  factory DialogContentList.fromJson(Map<String, dynamic> json) =>
      $DialogContentListFromJson(json);

  Map<String, dynamic> toJson() => $DialogContentListToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class DialogContentListUrls {
  late String text;
  late String link;

  DialogContentListUrls();

  factory DialogContentListUrls.fromJson(Map<String, dynamic> json) =>
      $DialogContentListUrlsFromJson(json);

  Map<String, dynamic> toJson() => $DialogContentListUrlsToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

enum MessageType { text, image }
