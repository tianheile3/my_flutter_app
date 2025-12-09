import 'package:flutter_study/generated/json/base/json_convert_content.dart';
import 'package:flutter_study/api/response/user_thread_entity.dart';

UserThreadEntity $UserThreadEntityFromJson(Map<String, dynamic> json) {
  final UserThreadEntity userThreadEntity = UserThreadEntity();
  final String? code = jsonConvert.convert<String>(json['code']);
  if (code != null) {
    userThreadEntity.code = code;
  }
  final String? message = jsonConvert.convert<String>(json['message']);
  if (message != null) {
    userThreadEntity.message = message;
  }
  final List<UserThreadMyThreadList>? myThreadList =
      (json['my_thread_list'] as List<dynamic>?)
          ?.map(
            (e) =>
                jsonConvert.convert<UserThreadMyThreadList>(e)
                    as UserThreadMyThreadList,
          )
          .toList();
  if (myThreadList != null) {
    userThreadEntity.myThreadList = myThreadList;
  }
  final int? totalCount = jsonConvert.convert<int>(json['total_count']);
  if (totalCount != null) {
    userThreadEntity.totalCount = totalCount;
  }
  final int? page = jsonConvert.convert<int>(json['page']);
  if (page != null) {
    userThreadEntity.page = page;
  }
  final int? perPage = jsonConvert.convert<int>(json['per_page']);
  if (perPage != null) {
    userThreadEntity.perPage = perPage;
  }
  return userThreadEntity;
}

Map<String, dynamic> $UserThreadEntityToJson(UserThreadEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['code'] = entity.code;
  data['message'] = entity.message;
  data['my_thread_list'] = entity.myThreadList.map((v) => v.toJson()).toList();
  data['total_count'] = entity.totalCount;
  data['page'] = entity.page;
  data['per_page'] = entity.perPage;
  return data;
}

extension UserThreadEntityExtension on UserThreadEntity {
  UserThreadEntity copyWith({
    String? code,
    String? message,
    List<UserThreadMyThreadList>? myThreadList,
    int? totalCount,
    int? page,
    int? perPage,
  }) {
    return UserThreadEntity()
      ..code = code ?? this.code
      ..message = message ?? this.message
      ..myThreadList = myThreadList ?? this.myThreadList
      ..totalCount = totalCount ?? this.totalCount
      ..page = page ?? this.page
      ..perPage = perPage ?? this.perPage;
  }
}

UserThreadMyThreadList $UserThreadMyThreadListFromJson(
  Map<String, dynamic> json,
) {
  final UserThreadMyThreadList userThreadMyThreadList =
      UserThreadMyThreadList();
  final String? isPrivate = jsonConvert.convert<String>(json['is_private']);
  if (isPrivate != null) {
    userThreadMyThreadList.isPrivate = isPrivate;
  }
  final String? cityid = jsonConvert.convert<String>(json['cityid']);
  if (cityid != null) {
    userThreadMyThreadList.cityid = cityid;
  }
  final String? cityname = jsonConvert.convert<String>(json['cityname']);
  if (cityname != null) {
    userThreadMyThreadList.cityname = cityname;
  }
  final String? domain = jsonConvert.convert<String>(json['domain']);
  if (domain != null) {
    userThreadMyThreadList.domain = domain;
  }
  final String? tid = jsonConvert.convert<String>(json['tid']);
  if (tid != null) {
    userThreadMyThreadList.tid = tid;
  }
  final String? fid = jsonConvert.convert<String>(json['fid']);
  if (fid != null) {
    userThreadMyThreadList.fid = fid;
  }
  final String? pid = jsonConvert.convert<String>(json['pid']);
  if (pid != null) {
    userThreadMyThreadList.pid = pid;
  }
  final String? fname = jsonConvert.convert<String>(json['fname']);
  if (fname != null) {
    userThreadMyThreadList.fname = fname;
  }
  final String? subject = jsonConvert.convert<String>(json['subject']);
  if (subject != null) {
    userThreadMyThreadList.subject = subject;
  }
  final UserThreadMyThreadListAuthor? author = jsonConvert
      .convert<UserThreadMyThreadListAuthor>(json['author']);
  if (author != null) {
    userThreadMyThreadList.author = author;
  }
  final String? authorUid = jsonConvert.convert<String>(json['author_uid']);
  if (authorUid != null) {
    userThreadMyThreadList.authorUid = authorUid;
  }
  final String? category = jsonConvert.convert<String>(json['category']);
  if (category != null) {
    userThreadMyThreadList.category = category;
  }
  final String? threadType = jsonConvert.convert<String>(json['thread_type']);
  if (threadType != null) {
    userThreadMyThreadList.threadType = threadType;
  }
  final String? views = jsonConvert.convert<String>(json['views']);
  if (views != null) {
    userThreadMyThreadList.views = views;
  }
  final String? replies = jsonConvert.convert<String>(json['replies']);
  if (replies != null) {
    userThreadMyThreadList.replies = replies;
  }
  final String? favorites = jsonConvert.convert<String>(json['favorites']);
  if (favorites != null) {
    userThreadMyThreadList.favorites = favorites;
  }
  final String? status = jsonConvert.convert<String>(json['status']);
  if (status != null) {
    userThreadMyThreadList.status = status;
  }
  final String? extra = jsonConvert.convert<String>(json['extra']);
  if (extra != null) {
    userThreadMyThreadList.extra = extra;
  }
  final String? closed = jsonConvert.convert<String>(json['closed']);
  if (closed != null) {
    userThreadMyThreadList.closed = closed;
  }
  final String? lastPostTime = jsonConvert.convert<String>(
    json['last_post_time'],
  );
  if (lastPostTime != null) {
    userThreadMyThreadList.lastPostTime = lastPostTime;
  }
  final String? lastPostAuthor = jsonConvert.convert<String>(
    json['last_post_author'],
  );
  if (lastPostAuthor != null) {
    userThreadMyThreadList.lastPostAuthor = lastPostAuthor;
  }
  final String? lastPostAuthorUid = jsonConvert.convert<String>(
    json['last_post_author_uid'],
  );
  if (lastPostAuthorUid != null) {
    userThreadMyThreadList.lastPostAuthorUid = lastPostAuthorUid;
  }
  final String? lastPid = jsonConvert.convert<String>(json['last_pid']);
  if (lastPid != null) {
    userThreadMyThreadList.lastPid = lastPid;
  }
  final String? firstPid = jsonConvert.convert<String>(json['first_pid']);
  if (firstPid != null) {
    userThreadMyThreadList.firstPid = firstPid;
  }
  final String? url = jsonConvert.convert<String>(json['url']);
  if (url != null) {
    userThreadMyThreadList.url = url;
  }
  final String? refFid = jsonConvert.convert<String>(json['ref_fid']);
  if (refFid != null) {
    userThreadMyThreadList.refFid = refFid;
  }
  final String? refTid = jsonConvert.convert<String>(json['ref_tid']);
  if (refTid != null) {
    userThreadMyThreadList.refTid = refTid;
  }
  final String? createdAt = jsonConvert.convert<String>(json['created_at']);
  if (createdAt != null) {
    userThreadMyThreadList.createdAt = createdAt;
  }
  final List<dynamic>? threadTags = (json['thread_tags'] as List<dynamic>?)
      ?.map((e) => e)
      .toList();
  if (threadTags != null) {
    userThreadMyThreadList.threadTags = threadTags;
  }
  final bool? holdVideo = jsonConvert.convert<bool>(json['hold_video']);
  if (holdVideo != null) {
    userThreadMyThreadList.holdVideo = holdVideo;
  }
  final UserThreadMyThreadListZanInfo? zanInfo = jsonConvert
      .convert<UserThreadMyThreadListZanInfo>(json['zan_info']);
  if (zanInfo != null) {
    userThreadMyThreadList.zanInfo = zanInfo;
  }
  final String? searchSubject = jsonConvert.convert<String>(
    json['search_subject'],
  );
  if (searchSubject != null) {
    userThreadMyThreadList.searchSubject = searchSubject;
  }
  final String? searchContent = jsonConvert.convert<String>(
    json['search_content'],
  );
  if (searchContent != null) {
    userThreadMyThreadList.searchContent = searchContent;
  }
  final String? ratePlusNumber = jsonConvert.convert<String>(
    json['rate_plus_number'],
  );
  if (ratePlusNumber != null) {
    userThreadMyThreadList.ratePlusNumber = ratePlusNumber;
  }
  final String? topicListStick = jsonConvert.convert<String>(
    json['topic_list_stick'],
  );
  if (topicListStick != null) {
    userThreadMyThreadList.topicListStick = topicListStick;
  }
  final String? address = jsonConvert.convert<String>(json['address']);
  if (address != null) {
    userThreadMyThreadList.address = address;
  }
  final String? tagStr = jsonConvert.convert<String>(json['tag_str']);
  if (tagStr != null) {
    userThreadMyThreadList.tagStr = tagStr;
  }
  final List<dynamic>? attachments = (json['attachments'] as List<dynamic>?)
      ?.map((e) => e)
      .toList();
  if (attachments != null) {
    userThreadMyThreadList.attachments = attachments;
  }
  final String? forumCategoryName = jsonConvert.convert<String>(
    json['forum_category_name'],
  );
  if (forumCategoryName != null) {
    userThreadMyThreadList.forumCategoryName = forumCategoryName;
  }
  final String? stickTime = jsonConvert.convert<String>(json['stick_time']);
  if (stickTime != null) {
    userThreadMyThreadList.stickTime = stickTime;
  }
  final String? rateid = jsonConvert.convert<String>(json['rateid']);
  if (rateid != null) {
    userThreadMyThreadList.rateid = rateid;
  }
  return userThreadMyThreadList;
}

Map<String, dynamic> $UserThreadMyThreadListToJson(
  UserThreadMyThreadList entity,
) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['is_private'] = entity.isPrivate;
  data['cityid'] = entity.cityid;
  data['cityname'] = entity.cityname;
  data['domain'] = entity.domain;
  data['tid'] = entity.tid;
  data['fid'] = entity.fid;
  data['pid'] = entity.pid;
  data['fname'] = entity.fname;
  data['subject'] = entity.subject;
  data['author'] = entity.author.toJson();
  data['author_uid'] = entity.authorUid;
  data['category'] = entity.category;
  data['thread_type'] = entity.threadType;
  data['views'] = entity.views;
  data['replies'] = entity.replies;
  data['favorites'] = entity.favorites;
  data['status'] = entity.status;
  data['extra'] = entity.extra;
  data['closed'] = entity.closed;
  data['last_post_time'] = entity.lastPostTime;
  data['last_post_author'] = entity.lastPostAuthor;
  data['last_post_author_uid'] = entity.lastPostAuthorUid;
  data['last_pid'] = entity.lastPid;
  data['first_pid'] = entity.firstPid;
  data['url'] = entity.url;
  data['ref_fid'] = entity.refFid;
  data['ref_tid'] = entity.refTid;
  data['created_at'] = entity.createdAt;
  data['thread_tags'] = entity.threadTags;
  data['hold_video'] = entity.holdVideo;
  data['zan_info'] = entity.zanInfo.toJson();
  data['search_subject'] = entity.searchSubject;
  data['search_content'] = entity.searchContent;
  data['rate_plus_number'] = entity.ratePlusNumber;
  data['topic_list_stick'] = entity.topicListStick;
  data['address'] = entity.address;
  data['tag_str'] = entity.tagStr;
  data['attachments'] = entity.attachments;
  data['forum_category_name'] = entity.forumCategoryName;
  data['stick_time'] = entity.stickTime;
  data['rateid'] = entity.rateid;
  return data;
}

extension UserThreadMyThreadListExtension on UserThreadMyThreadList {
  UserThreadMyThreadList copyWith({
    String? isPrivate,
    String? cityid,
    String? cityname,
    String? domain,
    String? tid,
    String? fid,
    String? pid,
    String? fname,
    String? subject,
    UserThreadMyThreadListAuthor? author,
    String? authorUid,
    String? category,
    String? threadType,
    String? views,
    String? replies,
    String? favorites,
    String? status,
    String? extra,
    String? closed,
    String? lastPostTime,
    String? lastPostAuthor,
    String? lastPostAuthorUid,
    String? lastPid,
    String? firstPid,
    String? url,
    String? refFid,
    String? refTid,
    String? createdAt,
    List<dynamic>? threadTags,
    bool? holdVideo,
    UserThreadMyThreadListZanInfo? zanInfo,
    String? searchSubject,
    String? searchContent,
    String? ratePlusNumber,
    String? topicListStick,
    String? address,
    String? tagStr,
    List<dynamic>? attachments,
    String? forumCategoryName,
    String? stickTime,
    String? rateid,
  }) {
    return UserThreadMyThreadList()
      ..isPrivate = isPrivate ?? this.isPrivate
      ..cityid = cityid ?? this.cityid
      ..cityname = cityname ?? this.cityname
      ..domain = domain ?? this.domain
      ..tid = tid ?? this.tid
      ..fid = fid ?? this.fid
      ..pid = pid ?? this.pid
      ..fname = fname ?? this.fname
      ..subject = subject ?? this.subject
      ..author = author ?? this.author
      ..authorUid = authorUid ?? this.authorUid
      ..category = category ?? this.category
      ..threadType = threadType ?? this.threadType
      ..views = views ?? this.views
      ..replies = replies ?? this.replies
      ..favorites = favorites ?? this.favorites
      ..status = status ?? this.status
      ..extra = extra ?? this.extra
      ..closed = closed ?? this.closed
      ..lastPostTime = lastPostTime ?? this.lastPostTime
      ..lastPostAuthor = lastPostAuthor ?? this.lastPostAuthor
      ..lastPostAuthorUid = lastPostAuthorUid ?? this.lastPostAuthorUid
      ..lastPid = lastPid ?? this.lastPid
      ..firstPid = firstPid ?? this.firstPid
      ..url = url ?? this.url
      ..refFid = refFid ?? this.refFid
      ..refTid = refTid ?? this.refTid
      ..createdAt = createdAt ?? this.createdAt
      ..threadTags = threadTags ?? this.threadTags
      ..holdVideo = holdVideo ?? this.holdVideo
      ..zanInfo = zanInfo ?? this.zanInfo
      ..searchSubject = searchSubject ?? this.searchSubject
      ..searchContent = searchContent ?? this.searchContent
      ..ratePlusNumber = ratePlusNumber ?? this.ratePlusNumber
      ..topicListStick = topicListStick ?? this.topicListStick
      ..address = address ?? this.address
      ..tagStr = tagStr ?? this.tagStr
      ..attachments = attachments ?? this.attachments
      ..forumCategoryName = forumCategoryName ?? this.forumCategoryName
      ..stickTime = stickTime ?? this.stickTime
      ..rateid = rateid ?? this.rateid;
  }
}

UserThreadMyThreadListAuthor $UserThreadMyThreadListAuthorFromJson(
  Map<String, dynamic> json,
) {
  final UserThreadMyThreadListAuthor userThreadMyThreadListAuthor =
      UserThreadMyThreadListAuthor();
  final String? uid = jsonConvert.convert<String>(json['uid']);
  if (uid != null) {
    userThreadMyThreadListAuthor.uid = uid;
  }
  final String? userName = jsonConvert.convert<String>(json['user_name']);
  if (userName != null) {
    userThreadMyThreadListAuthor.userName = userName;
  }
  final String? status = jsonConvert.convert<String>(json['status']);
  if (status != null) {
    userThreadMyThreadListAuthor.status = status;
  }
  final String? sign = jsonConvert.convert<String>(json['sign']);
  if (sign != null) {
    userThreadMyThreadListAuthor.sign = sign;
  }
  final String? warning = jsonConvert.convert<String>(json['warning']);
  if (warning != null) {
    userThreadMyThreadListAuthor.warning = warning;
  }
  final String? avatar = jsonConvert.convert<String>(json['avatar']);
  if (avatar != null) {
    userThreadMyThreadListAuthor.avatar = avatar;
  }
  final String? verify = jsonConvert.convert<String>(json['verify']);
  if (verify != null) {
    userThreadMyThreadListAuthor.verify = verify;
  }
  final String? highVerify = jsonConvert.convert<String>(json['high_verify']);
  if (highVerify != null) {
    userThreadMyThreadListAuthor.highVerify = highVerify;
  }
  final String? honourVerify = jsonConvert.convert<String>(
    json['honour_verify'],
  );
  if (honourVerify != null) {
    userThreadMyThreadListAuthor.honourVerify = honourVerify;
  }
  final String? verifyNew = jsonConvert.convert<String>(json['verify_new']);
  if (verifyNew != null) {
    userThreadMyThreadListAuthor.verifyNew = verifyNew;
  }
  final String? verifyDesc = jsonConvert.convert<String>(json['verify_desc']);
  if (verifyDesc != null) {
    userThreadMyThreadListAuthor.verifyDesc = verifyDesc;
  }
  final String? gender = jsonConvert.convert<String>(json['gender']);
  if (gender != null) {
    userThreadMyThreadListAuthor.gender = gender;
  }
  final String? honourDesc = jsonConvert.convert<String>(json['honour_desc']);
  if (honourDesc != null) {
    userThreadMyThreadListAuthor.honourDesc = honourDesc;
  }
  final String? highDesc = jsonConvert.convert<String>(json['high_desc']);
  if (highDesc != null) {
    userThreadMyThreadListAuthor.highDesc = highDesc;
  }
  final String? boardPerm = jsonConvert.convert<String>(json['board_perm']);
  if (boardPerm != null) {
    userThreadMyThreadListAuthor.boardPerm = boardPerm;
  }
  final String? gid = jsonConvert.convert<String>(json['gid']);
  if (gid != null) {
    userThreadMyThreadListAuthor.gid = gid;
  }
  final String? groupRank = jsonConvert.convert<String>(json['group_rank']);
  if (groupRank != null) {
    userThreadMyThreadListAuthor.groupRank = groupRank;
  }
  final String? groupName = jsonConvert.convert<String>(json['group_name']);
  if (groupName != null) {
    userThreadMyThreadListAuthor.groupName = groupName;
  }
  final bool? isTenYear = jsonConvert.convert<bool>(json['is_ten_year']);
  if (isTenYear != null) {
    userThreadMyThreadListAuthor.isTenYear = isTenYear;
  }
  final bool? shiJiaShangJia = jsonConvert.convert<bool>(
    json['shi_jia_shang_jia'],
  );
  if (shiJiaShangJia != null) {
    userThreadMyThreadListAuthor.shiJiaShangJia = shiJiaShangJia;
  }
  final String? shiJiaShangJiaDesc = jsonConvert.convert<String>(
    json['shi_jia_shang_jia_desc'],
  );
  if (shiJiaShangJiaDesc != null) {
    userThreadMyThreadListAuthor.shiJiaShangJiaDesc = shiJiaShangJiaDesc;
  }
  final List<dynamic>? medals = (json['medals'] as List<dynamic>?)
      ?.map((e) => e)
      .toList();
  if (medals != null) {
    userThreadMyThreadListAuthor.medals = medals;
  }
  final String? pendantId = jsonConvert.convert<String>(json['pendant_id']);
  if (pendantId != null) {
    userThreadMyThreadListAuthor.pendantId = pendantId;
  }
  final String? cityname = jsonConvert.convert<String>(json['cityname']);
  if (cityname != null) {
    userThreadMyThreadListAuthor.cityname = cityname;
  }
  final String? originalAvatar = jsonConvert.convert<String>(
    json['original_avatar'],
  );
  if (originalAvatar != null) {
    userThreadMyThreadListAuthor.originalAvatar = originalAvatar;
  }
  final String? smallAvatar = jsonConvert.convert<String>(json['small_avatar']);
  if (smallAvatar != null) {
    userThreadMyThreadListAuthor.smallAvatar = smallAvatar;
  }
  final String? latitude = jsonConvert.convert<String>(json['latitude']);
  if (latitude != null) {
    userThreadMyThreadListAuthor.latitude = latitude;
  }
  final String? longitude = jsonConvert.convert<String>(json['longitude']);
  if (longitude != null) {
    userThreadMyThreadListAuthor.longitude = longitude;
  }
  final String? totalZanCount = jsonConvert.convert<String>(
    json['total_zan_count'],
  );
  if (totalZanCount != null) {
    userThreadMyThreadListAuthor.totalZanCount = totalZanCount;
  }
  final String? totalFansCount = jsonConvert.convert<String>(
    json['total_fans_count'],
  );
  if (totalFansCount != null) {
    userThreadMyThreadListAuthor.totalFansCount = totalFansCount;
  }
  final String? totalFavCount = jsonConvert.convert<String>(
    json['total_fav_count'],
  );
  if (totalFavCount != null) {
    userThreadMyThreadListAuthor.totalFavCount = totalFavCount;
  }
  return userThreadMyThreadListAuthor;
}

Map<String, dynamic> $UserThreadMyThreadListAuthorToJson(
  UserThreadMyThreadListAuthor entity,
) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['uid'] = entity.uid;
  data['user_name'] = entity.userName;
  data['status'] = entity.status;
  data['sign'] = entity.sign;
  data['warning'] = entity.warning;
  data['avatar'] = entity.avatar;
  data['verify'] = entity.verify;
  data['high_verify'] = entity.highVerify;
  data['honour_verify'] = entity.honourVerify;
  data['verify_new'] = entity.verifyNew;
  data['verify_desc'] = entity.verifyDesc;
  data['gender'] = entity.gender;
  data['honour_desc'] = entity.honourDesc;
  data['high_desc'] = entity.highDesc;
  data['board_perm'] = entity.boardPerm;
  data['gid'] = entity.gid;
  data['group_rank'] = entity.groupRank;
  data['group_name'] = entity.groupName;
  data['is_ten_year'] = entity.isTenYear;
  data['shi_jia_shang_jia'] = entity.shiJiaShangJia;
  data['shi_jia_shang_jia_desc'] = entity.shiJiaShangJiaDesc;
  data['medals'] = entity.medals;
  data['pendant_id'] = entity.pendantId;
  data['cityname'] = entity.cityname;
  data['original_avatar'] = entity.originalAvatar;
  data['small_avatar'] = entity.smallAvatar;
  data['latitude'] = entity.latitude;
  data['longitude'] = entity.longitude;
  data['total_zan_count'] = entity.totalZanCount;
  data['total_fans_count'] = entity.totalFansCount;
  data['total_fav_count'] = entity.totalFavCount;
  return data;
}

extension UserThreadMyThreadListAuthorExtension
    on UserThreadMyThreadListAuthor {
  UserThreadMyThreadListAuthor copyWith({
    String? uid,
    String? userName,
    String? status,
    String? sign,
    String? warning,
    String? avatar,
    String? verify,
    String? highVerify,
    String? honourVerify,
    String? verifyNew,
    String? verifyDesc,
    String? gender,
    String? honourDesc,
    String? highDesc,
    String? boardPerm,
    String? gid,
    String? groupRank,
    String? groupName,
    bool? isTenYear,
    bool? shiJiaShangJia,
    String? shiJiaShangJiaDesc,
    List<dynamic>? medals,
    String? pendantId,
    String? cityname,
    String? originalAvatar,
    String? smallAvatar,
    String? latitude,
    String? longitude,
    String? totalZanCount,
    String? totalFansCount,
    String? totalFavCount,
  }) {
    return UserThreadMyThreadListAuthor()
      ..uid = uid ?? this.uid
      ..userName = userName ?? this.userName
      ..status = status ?? this.status
      ..sign = sign ?? this.sign
      ..warning = warning ?? this.warning
      ..avatar = avatar ?? this.avatar
      ..verify = verify ?? this.verify
      ..highVerify = highVerify ?? this.highVerify
      ..honourVerify = honourVerify ?? this.honourVerify
      ..verifyNew = verifyNew ?? this.verifyNew
      ..verifyDesc = verifyDesc ?? this.verifyDesc
      ..gender = gender ?? this.gender
      ..honourDesc = honourDesc ?? this.honourDesc
      ..highDesc = highDesc ?? this.highDesc
      ..boardPerm = boardPerm ?? this.boardPerm
      ..gid = gid ?? this.gid
      ..groupRank = groupRank ?? this.groupRank
      ..groupName = groupName ?? this.groupName
      ..isTenYear = isTenYear ?? this.isTenYear
      ..shiJiaShangJia = shiJiaShangJia ?? this.shiJiaShangJia
      ..shiJiaShangJiaDesc = shiJiaShangJiaDesc ?? this.shiJiaShangJiaDesc
      ..medals = medals ?? this.medals
      ..pendantId = pendantId ?? this.pendantId
      ..cityname = cityname ?? this.cityname
      ..originalAvatar = originalAvatar ?? this.originalAvatar
      ..smallAvatar = smallAvatar ?? this.smallAvatar
      ..latitude = latitude ?? this.latitude
      ..longitude = longitude ?? this.longitude
      ..totalZanCount = totalZanCount ?? this.totalZanCount
      ..totalFansCount = totalFansCount ?? this.totalFansCount
      ..totalFavCount = totalFavCount ?? this.totalFavCount;
  }
}

UserThreadMyThreadListZanInfo $UserThreadMyThreadListZanInfoFromJson(
  Map<String, dynamic> json,
) {
  final UserThreadMyThreadListZanInfo userThreadMyThreadListZanInfo =
      UserThreadMyThreadListZanInfo();
  final String? timeStamp = jsonConvert.convert<String>(json['time_stamp']);
  if (timeStamp != null) {
    userThreadMyThreadListZanInfo.timeStamp = timeStamp;
  }
  final String? uid = jsonConvert.convert<String>(json['uid']);
  if (uid != null) {
    userThreadMyThreadListZanInfo.uid = uid;
  }
  final String? category = jsonConvert.convert<String>(json['category']);
  if (category != null) {
    userThreadMyThreadListZanInfo.category = category;
  }
  final String? objectId = jsonConvert.convert<String>(json['object_id']);
  if (objectId != null) {
    userThreadMyThreadListZanInfo.objectId = objectId;
  }
  final String? relationObjectIds = jsonConvert.convert<String>(
    json['relation_object_ids'],
  );
  if (relationObjectIds != null) {
    userThreadMyThreadListZanInfo.relationObjectIds = relationObjectIds;
  }
  final String? sign = jsonConvert.convert<String>(json['sign']);
  if (sign != null) {
    userThreadMyThreadListZanInfo.sign = sign;
  }
  return userThreadMyThreadListZanInfo;
}

Map<String, dynamic> $UserThreadMyThreadListZanInfoToJson(
  UserThreadMyThreadListZanInfo entity,
) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['time_stamp'] = entity.timeStamp;
  data['uid'] = entity.uid;
  data['category'] = entity.category;
  data['object_id'] = entity.objectId;
  data['relation_object_ids'] = entity.relationObjectIds;
  data['sign'] = entity.sign;
  return data;
}

extension UserThreadMyThreadListZanInfoExtension
    on UserThreadMyThreadListZanInfo {
  UserThreadMyThreadListZanInfo copyWith({
    String? timeStamp,
    String? uid,
    String? category,
    String? objectId,
    String? relationObjectIds,
    String? sign,
  }) {
    return UserThreadMyThreadListZanInfo()
      ..timeStamp = timeStamp ?? this.timeStamp
      ..uid = uid ?? this.uid
      ..category = category ?? this.category
      ..objectId = objectId ?? this.objectId
      ..relationObjectIds = relationObjectIds ?? this.relationObjectIds
      ..sign = sign ?? this.sign;
  }
}
