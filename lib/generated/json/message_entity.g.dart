import 'package:flutter_study/generated/json/base/json_convert_content.dart';
import 'package:flutter_study/api/response/message_entity.dart';
import 'package:flutter_study/api/response/msg_group_entity.dart';

import 'package:flutter_study/api/response/common/user_entity.dart';


MessageEntity $MessageEntityFromJson(Map<String, dynamic> json) {
  final MessageEntity messageEntity = MessageEntity();
  final List<MessageMsgList>? msgList = (json['msg_list'] as List<dynamic>?)
      ?.map(
          (e) => jsonConvert.convert<MessageMsgList>(e) as MessageMsgList)
      .toList();
  if (msgList != null) {
    messageEntity.msgList = msgList;
  }
  final bool? moreNew = jsonConvert.convert<bool>(json['more_new']);
  if (moreNew != null) {
    messageEntity.moreNew = moreNew;
  }
  return messageEntity;
}

Map<String, dynamic> $MessageEntityToJson(MessageEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['msg_list'] = entity.msgList.map((v) => v.toJson()).toList();
  data['more_new'] = entity.moreNew;
  return data;
}

extension MessageEntityExtension on MessageEntity {
  MessageEntity copyWith({
    List<MessageMsgList>? msgList,
    bool? moreNew,
  }) {
    return MessageEntity()
      ..msgList = msgList ?? this.msgList
      ..moreNew = moreNew ?? this.moreNew;
  }
}

MessageMsgList $MessageMsgListFromJson(Map<String, dynamic> json) {
  final MessageMsgList messageMsgList = MessageMsgList();
  final MessageMsgListDialogInfo? dialogInfo = jsonConvert.convert<
      MessageMsgListDialogInfo>(json['dialog_info']);
  if (dialogInfo != null) {
    messageMsgList.dialogInfo = dialogInfo;
  }
  final MessageMsgListLastContent? lastContent = jsonConvert.convert<
      MessageMsgListLastContent>(json['last_content']);
  if (lastContent != null) {
    messageMsgList.lastContent = lastContent;
  }
  final int? newCount = jsonConvert.convert<int>(json['new_count']);
  if (newCount != null) {
    messageMsgList.newCount = newCount;
  }
  final String? shieldCount = jsonConvert.convert<String>(json['shield_count']);
  if (shieldCount != null) {
    messageMsgList.shieldCount = shieldCount;
  }
  final String? createdAt = jsonConvert.convert<String>(json['created_at']);
  if (createdAt != null) {
    messageMsgList.createdAt = createdAt;
  }
  final String? updatedAt = jsonConvert.convert<String>(json['updated_at']);
  if (updatedAt != null) {
    messageMsgList.updatedAt = updatedAt;
  }
  final String? summery = jsonConvert.convert<String>(json['summery']);
  if (summery != null) {
    messageMsgList.summery = summery;
  }
  final String? bid = jsonConvert.convert<String>(json['bid']);
  if (bid != null) {
    messageMsgList.bid = bid;
  }
  final String? filterConfigSet = jsonConvert.convert<String>(
      json['filter_config_set']);
  if (filterConfigSet != null) {
    messageMsgList.filterConfigSet = filterConfigSet;
  }
  final String? stick = jsonConvert.convert<String>(json['stick']);
  if (stick != null) {
    messageMsgList.stick = stick;
  }
  return messageMsgList;
}

Map<String, dynamic> $MessageMsgListToJson(MessageMsgList entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['dialog_info'] = entity.dialogInfo.toJson();
  data['last_content'] = entity.lastContent.toJson();
  data['new_count'] = entity.newCount;
  data['shield_count'] = entity.shieldCount;
  data['created_at'] = entity.createdAt;
  data['updated_at'] = entity.updatedAt;
  data['summery'] = entity.summery;
  data['bid'] = entity.bid;
  data['filter_config_set'] = entity.filterConfigSet;
  data['stick'] = entity.stick;
  return data;
}

extension MessageMsgListExtension on MessageMsgList {
  MessageMsgList copyWith({
    MessageMsgListDialogInfo? dialogInfo,
    MessageMsgListLastContent? lastContent,
    int? newCount,
    String? shieldCount,
    String? createdAt,
    String? updatedAt,
    String? summery,
    String? bid,
    String? filterConfigSet,
    String? stick,
  }) {
    return MessageMsgList()
      ..dialogInfo = dialogInfo ?? this.dialogInfo
      ..lastContent = lastContent ?? this.lastContent
      ..newCount = newCount ?? this.newCount
      ..shieldCount = shieldCount ?? this.shieldCount
      ..createdAt = createdAt ?? this.createdAt
      ..updatedAt = updatedAt ?? this.updatedAt
      ..summery = summery ?? this.summery
      ..bid = bid ?? this.bid
      ..filterConfigSet = filterConfigSet ?? this.filterConfigSet
      ..stick = stick ?? this.stick;
  }
}

MessageMsgListDialogInfo $MessageMsgListDialogInfoFromJson(
    Map<String, dynamic> json) {
  final MessageMsgListDialogInfo messageMsgListDialogInfo = MessageMsgListDialogInfo();
  final UserEntity? user = jsonConvert.convert<UserEntity>(json['user']);
  if (user != null) {
    messageMsgListDialogInfo.user = user;
  }
  final MsgGroupEntity? group = jsonConvert.convert<MsgGroupEntity>(
      json['group']);
  if (group != null) {
    messageMsgListDialogInfo.group = group;
  }
  final String? shieldStatus = jsonConvert.convert<String>(
      json['shield_status']);
  if (shieldStatus != null) {
    messageMsgListDialogInfo.shieldStatus = shieldStatus;
  }
  final bool? disturb = jsonConvert.convert<bool>(json['disturb']);
  if (disturb != null) {
    messageMsgListDialogInfo.disturb = disturb;
  }
  final String? dialogId = jsonConvert.convert<String>(json['dialog_id']);
  if (dialogId != null) {
    messageMsgListDialogInfo.dialogId = dialogId;
  }
  final int? dialogType = jsonConvert.convert<int>(json['dialog_type']);
  if (dialogType != null) {
    messageMsgListDialogInfo.dialogType = dialogType;
  }
  final String? dangerUser = jsonConvert.convert<String>(json['danger_user']);
  if (dangerUser != null) {
    messageMsgListDialogInfo.dangerUser = dangerUser;
  }
  return messageMsgListDialogInfo;
}

Map<String, dynamic> $MessageMsgListDialogInfoToJson(
    MessageMsgListDialogInfo entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['user'] = entity.user?.toJson();
  data['group'] = entity.group?.toJson();
  data['shield_status'] = entity.shieldStatus;
  data['disturb'] = entity.disturb;
  data['dialog_id'] = entity.dialogId;
  data['dialog_type'] = entity.dialogType;
  data['danger_user'] = entity.dangerUser;
  return data;
}

extension MessageMsgListDialogInfoExtension on MessageMsgListDialogInfo {
  MessageMsgListDialogInfo copyWith({
    UserEntity? user,
    MsgGroupEntity? group,
    String? shieldStatus,
    bool? disturb,
    String? dialogId,
    int? dialogType,
    String? dangerUser,
  }) {
    return MessageMsgListDialogInfo()
      ..user = user ?? this.user
      ..group = group ?? this.group
      ..shieldStatus = shieldStatus ?? this.shieldStatus
      ..disturb = disturb ?? this.disturb
      ..dialogId = dialogId ?? this.dialogId
      ..dialogType = dialogType ?? this.dialogType
      ..dangerUser = dangerUser ?? this.dangerUser;
  }
}

MessageMsgListLastContent $MessageMsgListLastContentFromJson(
    Map<String, dynamic> json) {
  final MessageMsgListLastContent messageMsgListLastContent = MessageMsgListLastContent();
  final String? contentId = jsonConvert.convert<String>(json['content_id']);
  if (contentId != null) {
    messageMsgListLastContent.contentId = contentId;
  }
  final UserEntity? fromUser = jsonConvert.convert<UserEntity>(
      json['from_user']);
  if (fromUser != null) {
    messageMsgListLastContent.fromUser = fromUser;
  }
  final String? content = jsonConvert.convert<String>(json['content']);
  if (content != null) {
    messageMsgListLastContent.content = content;
  }
  final MessageMsgListLastContentContentObj? contentObj = jsonConvert.convert<
      MessageMsgListLastContentContentObj>(json['content_obj']);
  if (contentObj != null) {
    messageMsgListLastContent.contentObj = contentObj;
  }
  final String? status = jsonConvert.convert<String>(json['status']);
  if (status != null) {
    messageMsgListLastContent.status = status;
  }
  final String? createdAt = jsonConvert.convert<String>(json['created_at']);
  if (createdAt != null) {
    messageMsgListLastContent.createdAt = createdAt;
  }
  final List<dynamic>? urls = (json['urls'] as List<dynamic>?)?.map(
          (e) => e).toList();
  if (urls != null) {
    messageMsgListLastContent.urls = urls;
  }
  final String? fromUid = jsonConvert.convert<String>(json['from_uid']);
  if (fromUid != null) {
    messageMsgListLastContent.fromUid = fromUid;
  }
  final String? fromUsername = jsonConvert.convert<String>(
      json['from_username']);
  if (fromUsername != null) {
    messageMsgListLastContent.fromUsername = fromUsername;
  }
  return messageMsgListLastContent;
}

Map<String, dynamic> $MessageMsgListLastContentToJson(
    MessageMsgListLastContent entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['content_id'] = entity.contentId;
  data['from_user'] = entity.fromUser.toJson();
  data['content'] = entity.content;
  data['content_obj'] = entity.contentObj.toJson();
  data['status'] = entity.status;
  data['created_at'] = entity.createdAt;
  data['urls'] = entity.urls;
  data['from_uid'] = entity.fromUid;
  data['from_username'] = entity.fromUsername;
  return data;
}

extension MessageMsgListLastContentExtension on MessageMsgListLastContent {
  MessageMsgListLastContent copyWith({
    String? contentId,
    UserEntity? fromUser,
    String? content,
    MessageMsgListLastContentContentObj? contentObj,
    String? status,
    String? createdAt,
    List<dynamic>? urls,
    String? fromUid,
    String? fromUsername,
  }) {
    return MessageMsgListLastContent()
      ..contentId = contentId ?? this.contentId
      ..fromUser = fromUser ?? this.fromUser
      ..content = content ?? this.content
      ..contentObj = contentObj ?? this.contentObj
      ..status = status ?? this.status
      ..createdAt = createdAt ?? this.createdAt
      ..urls = urls ?? this.urls
      ..fromUid = fromUid ?? this.fromUid
      ..fromUsername = fromUsername ?? this.fromUsername;
  }
}

MessageMsgListLastContentContentObj $MessageMsgListLastContentContentObjFromJson(
    Map<String, dynamic> json) {
  final MessageMsgListLastContentContentObj messageMsgListLastContentContentObj = MessageMsgListLastContentContentObj();
  final MessageMsgListLastContentContentObjExt? ext = jsonConvert.convert<
      MessageMsgListLastContentContentObjExt>(json['ext']);
  if (ext != null) {
    messageMsgListLastContentContentObj.ext = ext;
  }
  final String? content = jsonConvert.convert<String>(json['content']);
  if (content != null) {
    messageMsgListLastContentContentObj.content = content;
  }
  return messageMsgListLastContentContentObj;
}

Map<String, dynamic> $MessageMsgListLastContentContentObjToJson(
    MessageMsgListLastContentContentObj entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['ext'] = entity.ext.toJson();
  data['content'] = entity.content;
  return data;
}

extension MessageMsgListLastContentContentObjExtension on MessageMsgListLastContentContentObj {
  MessageMsgListLastContentContentObj copyWith({
    MessageMsgListLastContentContentObjExt? ext,
    String? content,
  }) {
    return MessageMsgListLastContentContentObj()
      ..ext = ext ?? this.ext
      ..content = content ?? this.content;
  }
}

MessageMsgListLastContentContentObjExt $MessageMsgListLastContentContentObjExtFromJson(
    Map<String, dynamic> json) {
  final MessageMsgListLastContentContentObjExt messageMsgListLastContentContentObjExt = MessageMsgListLastContentContentObjExt();
  final String? fid = jsonConvert.convert<String>(json['fid']);
  if (fid != null) {
    messageMsgListLastContentContentObjExt.fid = fid;
  }
  final String? replyUid = jsonConvert.convert<String>(json['replyUid']);
  if (replyUid != null) {
    messageMsgListLastContentContentObjExt.replyUid = replyUid;
  }
  final String? subject = jsonConvert.convert<String>(json['subject']);
  if (subject != null) {
    messageMsgListLastContentContentObjExt.subject = subject;
  }
  final String? replyUserName = jsonConvert.convert<String>(
      json['replyUserName']);
  if (replyUserName != null) {
    messageMsgListLastContentContentObjExt.replyUserName = replyUserName;
  }
  final String? parentPid = jsonConvert.convert<String>(json['parentPid']);
  if (parentPid != null) {
    messageMsgListLastContentContentObjExt.parentPid = parentPid;
  }
  final String? quotePostMessage = jsonConvert.convert<String>(
      json['quotePostMessage']);
  if (quotePostMessage != null) {
    messageMsgListLastContentContentObjExt.quotePostMessage = quotePostMessage;
  }
  final String? pid = jsonConvert.convert<String>(json['pid']);
  if (pid != null) {
    messageMsgListLastContentContentObjExt.pid = pid;
  }
  final String? tid = jsonConvert.convert<String>(json['tid']);
  if (tid != null) {
    messageMsgListLastContentContentObjExt.tid = tid;
  }
  final String? url = jsonConvert.convert<String>(json['url']);
  if (url != null) {
    messageMsgListLastContentContentObjExt.url = url;
  }
  final String? content = jsonConvert.convert<String>(json['content']);
  if (content != null) {
    messageMsgListLastContentContentObjExt.content = content;
  }
  final String? cityName = jsonConvert.convert<String>(json['cityName']);
  if (cityName != null) {
    messageMsgListLastContentContentObjExt.cityName = cityName;
  }
  final String? authorUid = jsonConvert.convert<String>(json['authorUid']);
  if (authorUid != null) {
    messageMsgListLastContentContentObjExt.authorUid = authorUid;
  }
  final String? isBoard = jsonConvert.convert<String>(json['isBoard']);
  if (isBoard != null) {
    messageMsgListLastContentContentObjExt.isBoard = isBoard;
  }
  return messageMsgListLastContentContentObjExt;
}

Map<String, dynamic> $MessageMsgListLastContentContentObjExtToJson(
    MessageMsgListLastContentContentObjExt entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['fid'] = entity.fid;
  data['replyUid'] = entity.replyUid;
  data['subject'] = entity.subject;
  data['replyUserName'] = entity.replyUserName;
  data['parentPid'] = entity.parentPid;
  data['quotePostMessage'] = entity.quotePostMessage;
  data['pid'] = entity.pid;
  data['tid'] = entity.tid;
  data['url'] = entity.url;
  data['content'] = entity.content;
  data['cityName'] = entity.cityName;
  data['authorUid'] = entity.authorUid;
  data['isBoard'] = entity.isBoard;
  return data;
}

extension MessageMsgListLastContentContentObjExtExtension on MessageMsgListLastContentContentObjExt {
  MessageMsgListLastContentContentObjExt copyWith({
    String? fid,
    String? replyUid,
    String? subject,
    String? replyUserName,
    String? parentPid,
    String? quotePostMessage,
    String? pid,
    String? tid,
    String? url,
    String? content,
    String? cityName,
    String? authorUid,
    String? isBoard,
  }) {
    return MessageMsgListLastContentContentObjExt()
      ..fid = fid ?? this.fid
      ..replyUid = replyUid ?? this.replyUid
      ..subject = subject ?? this.subject
      ..replyUserName = replyUserName ?? this.replyUserName
      ..parentPid = parentPid ?? this.parentPid
      ..quotePostMessage = quotePostMessage ?? this.quotePostMessage
      ..pid = pid ?? this.pid
      ..tid = tid ?? this.tid
      ..url = url ?? this.url
      ..content = content ?? this.content
      ..cityName = cityName ?? this.cityName
      ..authorUid = authorUid ?? this.authorUid
      ..isBoard = isBoard ?? this.isBoard;
  }
}