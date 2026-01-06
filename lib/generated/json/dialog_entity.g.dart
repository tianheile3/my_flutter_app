import 'package:flutter_study/api/response/common/user_entity.dart';
import 'package:flutter_study/api/response/dialog_entity.dart';
import 'package:flutter_study/api/response/message_entity.dart';
import 'package:flutter_study/generated/json/base/json_convert_content.dart';

DialogEntity $DialogEntityFromJson(Map<String, dynamic> json) {
  final DialogEntity dialogEntity = DialogEntity();
  final DialogInfo? dialogInfo = jsonConvert.convert<DialogInfo>(
    json['dialog_info'],
  );
  if (dialogInfo != null) {
    dialogEntity.dialogInfo = dialogInfo;
  }
  final List<DialogContentList>? contentList =
      (json['content_list'] as List<dynamic>?)
          ?.map(
            (e) =>
                jsonConvert.convert<DialogContentList>(e) as DialogContentList,
          )
          .toList();
  if (contentList != null) {
    dialogEntity.contentList = contentList;
  }
  final String? nextDate = jsonConvert.convert<String>(json['next_date']);
  if (nextDate != null) {
    dialogEntity.nextDate = nextDate;
  }
  return dialogEntity;
}

Map<String, dynamic> $DialogEntityToJson(DialogEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['dialog_info'] = entity.dialogInfo.toJson();
  data['content_list'] = entity.contentList.map((v) => v.toJson()).toList();
  data['next_date'] = entity.nextDate;
  return data;
}

extension DialogEntityExtension on DialogEntity {
  DialogEntity copyWith({
    DialogInfo? dialogInfo,
    List<DialogContentList>? contentList,
    String? nextDate,
  }) {
    return DialogEntity()
      ..dialogInfo = dialogInfo ?? this.dialogInfo
      ..contentList = contentList ?? this.contentList
      ..nextDate = nextDate ?? this.nextDate;
  }
}

DialogContentList $DialogContentListFromJson(Map<String, dynamic> json) {
  final DialogContentList dialogContentList = DialogContentList();
  final String? contentId = jsonConvert.convert<String>(json['content_id']);
  if (contentId != null) {
    dialogContentList.contentId = contentId;
  }
  final UserEntity? fromUser = jsonConvert.convert<UserEntity>(
    json['from_user'],
  );
  if (fromUser != null) {
    dialogContentList.fromUser = fromUser;
  }
  final String? content = jsonConvert.convert<String>(json['content']);
  if (content != null) {
    dialogContentList.content = content;
  }
  final ContentObj? contentObj = jsonConvert.convert<ContentObj>(
    json['content_obj'],
  );
  if (contentObj != null) {
    dialogContentList.contentObj = contentObj;
  }
  final String? status = jsonConvert.convert<String>(json['status']);
  if (status != null) {
    dialogContentList.status = status;
  }
  final String? createdAt = jsonConvert.convert<String>(json['created_at']);
  if (createdAt != null) {
    dialogContentList.createdAt = createdAt;
  }
  final String? link = jsonConvert.convert<String>(json['link']);
  if (link != null) {
    dialogContentList.link = link;
  }
  final List<DialogContentListUrls>? urls = (json['urls'] as List<dynamic>?)
      ?.map(
        (e) =>
            jsonConvert.convert<DialogContentListUrls>(e)
                as DialogContentListUrls,
      )
      .toList();
  if (urls != null) {
    dialogContentList.urls = urls;
  }
  final String? fromUid = jsonConvert.convert<String>(json['from_uid']);
  if (fromUid != null) {
    dialogContentList.fromUid = fromUid;
  }
  final String? fromUsername = jsonConvert.convert<String>(
    json['from_username'],
  );
  if (fromUsername != null) {
    dialogContentList.fromUsername = fromUsername;
  }
  return dialogContentList;
}

Map<String, dynamic> $DialogContentListToJson(DialogContentList entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['content_id'] = entity.contentId;
  data['from_user'] = entity.fromUser.toJson();
  data['content'] = entity.content;
  data['content_obj'] = entity.contentObj.toJson();
  data['status'] = entity.status;
  data['created_at'] = entity.createdAt;
  data['link'] = entity.link;
  data['urls'] = entity.urls.map((v) => v.toJson()).toList();
  data['from_uid'] = entity.fromUid;
  data['from_username'] = entity.fromUsername;
  return data;
}

extension DialogContentListExtension on DialogContentList {
  DialogContentList copyWith({
    String? contentId,
    UserEntity? fromUser,
    String? content,
    ContentObj? contentObj,
    String? status,
    String? createdAt,
    String? link,
    List<DialogContentListUrls>? urls,
    String? fromUid,
    String? fromUsername,
  }) {
    return DialogContentList()
      ..contentId = contentId ?? this.contentId
      ..fromUser = fromUser ?? this.fromUser
      ..content = content ?? this.content
      ..contentObj = contentObj ?? this.contentObj
      ..status = status ?? this.status
      ..createdAt = createdAt ?? this.createdAt
      ..link = link ?? this.link
      ..urls = urls ?? this.urls
      ..fromUid = fromUid ?? this.fromUid
      ..fromUsername = fromUsername ?? this.fromUsername;
  }
}

DialogContentListUrls $DialogContentListUrlsFromJson(
  Map<String, dynamic> json,
) {
  final DialogContentListUrls dialogContentListUrls = DialogContentListUrls();
  final String? text = jsonConvert.convert<String>(json['text']);
  if (text != null) {
    dialogContentListUrls.text = text;
  }
  final String? link = jsonConvert.convert<String>(json['link']);
  if (link != null) {
    dialogContentListUrls.link = link;
  }
  return dialogContentListUrls;
}

Map<String, dynamic> $DialogContentListUrlsToJson(
  DialogContentListUrls entity,
) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['text'] = entity.text;
  data['link'] = entity.link;
  return data;
}

extension DialogContentListUrlsExtension on DialogContentListUrls {
  DialogContentListUrls copyWith({String? text, String? link}) {
    return DialogContentListUrls()
      ..text = text ?? this.text
      ..link = link ?? this.link;
  }
}
