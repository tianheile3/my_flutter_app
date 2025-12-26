import 'package:flutter_study/api/response/gather_thread_page_info_entity.dart';
import 'package:flutter_study/generated/json/base/json_convert_content.dart';


GatherThreadPageInfoEntity $GatherThreadPageInfoEntityFromJson(
    Map<String, dynamic> json) {
  final GatherThreadPageInfoEntity gatherThreadPageInfoEntity = GatherThreadPageInfoEntity();
  final int? code = jsonConvert.convert<int>(json['code']);
  if (code != null) {
    gatherThreadPageInfoEntity.code = code;
  }
  final String? message = jsonConvert.convert<String>(json['message']);
  if (message != null) {
    gatherThreadPageInfoEntity.message = message;
  }
  final List<
      GatherThreadPageInfoThreadList>? threadList = (json['thread_list'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<GatherThreadPageInfoThreadList>(
          e) as GatherThreadPageInfoThreadList).toList();
  if (threadList != null) {
    gatherThreadPageInfoEntity.threadList = threadList;
  }
  final GatherThreadPageInfoGatherInfo? gatherInfo = jsonConvert.convert<
      GatherThreadPageInfoGatherInfo>(json['gather_info']);
  if (gatherInfo != null) {
    gatherThreadPageInfoEntity.gatherInfo = gatherInfo;
  }
  final GatherThreadPageInfoGatherUser? gatherUser = jsonConvert.convert<
      GatherThreadPageInfoGatherUser>(json['gather_user']);
  if (gatherUser != null) {
    gatherThreadPageInfoEntity.gatherUser = gatherUser;
  }
  final int? totalCount = jsonConvert.convert<int>(json['total_count']);
  if (totalCount != null) {
    gatherThreadPageInfoEntity.totalCount = totalCount;
  }
  final int? page = jsonConvert.convert<int>(json['page']);
  if (page != null) {
    gatherThreadPageInfoEntity.page = page;
  }
  final int? perPage = jsonConvert.convert<int>(json['per_page']);
  if (perPage != null) {
    gatherThreadPageInfoEntity.perPage = perPage;
  }
  final String? currentCount = jsonConvert.convert<String>(
      json['current_count']);
  if (currentCount != null) {
    gatherThreadPageInfoEntity.currentCount = currentCount;
  }
  return gatherThreadPageInfoEntity;
}

Map<String, dynamic> $GatherThreadPageInfoEntityToJson(
    GatherThreadPageInfoEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['code'] = entity.code;
  data['message'] = entity.message;
  data['thread_list'] = entity.threadList?.map((v) => v.toJson()).toList();
  data['gather_info'] = entity.gatherInfo.toJson();
  data['gather_user'] = entity.gatherUser.toJson();
  data['total_count'] = entity.totalCount;
  data['page'] = entity.page;
  data['per_page'] = entity.perPage;
  data['current_count'] = entity.currentCount;
  return data;
}

extension GatherThreadPageInfoEntityExtension on GatherThreadPageInfoEntity {
  GatherThreadPageInfoEntity copyWith({
    int? code,
    String? message,
    List<GatherThreadPageInfoThreadList>? threadList,
    GatherThreadPageInfoGatherInfo? gatherInfo,
    GatherThreadPageInfoGatherUser? gatherUser,
    int? totalCount,
    int? page,
    int? perPage,
    String? currentCount,
  }) {
    return GatherThreadPageInfoEntity()
      ..code = code ?? this.code
      ..message = message ?? this.message
      ..threadList = threadList ?? this.threadList
      ..gatherInfo = gatherInfo ?? this.gatherInfo
      ..gatherUser = gatherUser ?? this.gatherUser
      ..totalCount = totalCount ?? this.totalCount
      ..page = page ?? this.page
      ..perPage = perPage ?? this.perPage
      ..currentCount = currentCount ?? this.currentCount;
  }
}

GatherThreadPageInfoThreadList $GatherThreadPageInfoThreadListFromJson(
    Map<String, dynamic> json) {
  final GatherThreadPageInfoThreadList gatherThreadPageInfoThreadList = GatherThreadPageInfoThreadList();
  final String? isPrivate = jsonConvert.convert<String>(json['is_private']);
  if (isPrivate != null) {
    gatherThreadPageInfoThreadList.isPrivate = isPrivate;
  }
  final String? cityid = jsonConvert.convert<String>(json['cityid']);
  if (cityid != null) {
    gatherThreadPageInfoThreadList.cityid = cityid;
  }
  final String? cityname = jsonConvert.convert<String>(json['cityname']);
  if (cityname != null) {
    gatherThreadPageInfoThreadList.cityname = cityname;
  }
  final String? domain = jsonConvert.convert<String>(json['domain']);
  if (domain != null) {
    gatherThreadPageInfoThreadList.domain = domain;
  }
  final String? tid = jsonConvert.convert<String>(json['tid']);
  if (tid != null) {
    gatherThreadPageInfoThreadList.tid = tid;
  }
  final String? fid = jsonConvert.convert<String>(json['fid']);
  if (fid != null) {
    gatherThreadPageInfoThreadList.fid = fid;
  }
  final String? pid = jsonConvert.convert<String>(json['pid']);
  if (pid != null) {
    gatherThreadPageInfoThreadList.pid = pid;
  }
  final String? fname = jsonConvert.convert<String>(json['fname']);
  if (fname != null) {
    gatherThreadPageInfoThreadList.fname = fname;
  }
  final String? subject = jsonConvert.convert<String>(json['subject']);
  if (subject != null) {
    gatherThreadPageInfoThreadList.subject = subject;
  }
  final GatherThreadPageInfoThreadListAuthor? author = jsonConvert.convert<
      GatherThreadPageInfoThreadListAuthor>(json['author']);
  if (author != null) {
    gatherThreadPageInfoThreadList.author = author;
  }
  final String? authorUid = jsonConvert.convert<String>(json['author_uid']);
  if (authorUid != null) {
    gatherThreadPageInfoThreadList.authorUid = authorUid;
  }
  final String? category = jsonConvert.convert<String>(json['category']);
  if (category != null) {
    gatherThreadPageInfoThreadList.category = category;
  }
  final String? threadType = jsonConvert.convert<String>(json['thread_type']);
  if (threadType != null) {
    gatherThreadPageInfoThreadList.threadType = threadType;
  }
  final String? views = jsonConvert.convert<String>(json['views']);
  if (views != null) {
    gatherThreadPageInfoThreadList.views = views;
  }
  final int? replies = jsonConvert.convert<int>(json['replies']);
  if (replies != null) {
    gatherThreadPageInfoThreadList.replies = replies;
  }
  final String? favorites = jsonConvert.convert<String>(json['favorites']);
  if (favorites != null) {
    gatherThreadPageInfoThreadList.favorites = favorites;
  }
  final String? status = jsonConvert.convert<String>(json['status']);
  if (status != null) {
    gatherThreadPageInfoThreadList.status = status;
  }
  final String? extra = jsonConvert.convert<String>(json['extra']);
  if (extra != null) {
    gatherThreadPageInfoThreadList.extra = extra;
  }
  final String? closed = jsonConvert.convert<String>(json['closed']);
  if (closed != null) {
    gatherThreadPageInfoThreadList.closed = closed;
  }
  final String? lastPostTime = jsonConvert.convert<String>(
      json['last_post_time']);
  if (lastPostTime != null) {
    gatherThreadPageInfoThreadList.lastPostTime = lastPostTime;
  }
  final String? lastPostAuthor = jsonConvert.convert<String>(
      json['last_post_author']);
  if (lastPostAuthor != null) {
    gatherThreadPageInfoThreadList.lastPostAuthor = lastPostAuthor;
  }
  final String? lastPostAuthorUid = jsonConvert.convert<String>(
      json['last_post_author_uid']);
  if (lastPostAuthorUid != null) {
    gatherThreadPageInfoThreadList.lastPostAuthorUid = lastPostAuthorUid;
  }
  final String? lastPid = jsonConvert.convert<String>(json['last_pid']);
  if (lastPid != null) {
    gatherThreadPageInfoThreadList.lastPid = lastPid;
  }
  final String? firstPid = jsonConvert.convert<String>(json['first_pid']);
  if (firstPid != null) {
    gatherThreadPageInfoThreadList.firstPid = firstPid;
  }
  final String? url = jsonConvert.convert<String>(json['url']);
  if (url != null) {
    gatherThreadPageInfoThreadList.url = url;
  }
  final String? refFid = jsonConvert.convert<String>(json['ref_fid']);
  if (refFid != null) {
    gatherThreadPageInfoThreadList.refFid = refFid;
  }
  final String? refTid = jsonConvert.convert<String>(json['ref_tid']);
  if (refTid != null) {
    gatherThreadPageInfoThreadList.refTid = refTid;
  }
  final String? createdAt = jsonConvert.convert<String>(json['created_at']);
  if (createdAt != null) {
    gatherThreadPageInfoThreadList.createdAt = createdAt;
  }
  final List<dynamic>? threadTags = (json['thread_tags'] as List<dynamic>?)
      ?.map(
          (e) => e)
      .toList();
  if (threadTags != null) {
    gatherThreadPageInfoThreadList.threadTags = threadTags;
  }
  final bool? holdVideo = jsonConvert.convert<bool>(json['hold_video']);
  if (holdVideo != null) {
    gatherThreadPageInfoThreadList.holdVideo = holdVideo;
  }
  final String? searchSubject = jsonConvert.convert<String>(
      json['search_subject']);
  if (searchSubject != null) {
    gatherThreadPageInfoThreadList.searchSubject = searchSubject;
  }
  final String? searchContent = jsonConvert.convert<String>(
      json['search_content']);
  if (searchContent != null) {
    gatherThreadPageInfoThreadList.searchContent = searchContent;
  }
  final String? ratePlusNumber = jsonConvert.convert<String>(
      json['rate_plus_number']);
  if (ratePlusNumber != null) {
    gatherThreadPageInfoThreadList.ratePlusNumber = ratePlusNumber;
  }
  final String? topicListStick = jsonConvert.convert<String>(
      json['topic_list_stick']);
  if (topicListStick != null) {
    gatherThreadPageInfoThreadList.topicListStick = topicListStick;
  }
  final String? address = jsonConvert.convert<String>(json['address']);
  if (address != null) {
    gatherThreadPageInfoThreadList.address = address;
  }
  final String? tagStr = jsonConvert.convert<String>(json['tag_str']);
  if (tagStr != null) {
    gatherThreadPageInfoThreadList.tagStr = tagStr;
  }
  final List<dynamic>? attachments = (json['attachments'] as List<dynamic>?)
      ?.map(
          (e) => e)
      .toList();
  if (attachments != null) {
    gatherThreadPageInfoThreadList.attachments = attachments;
  }
  final String? forumCategoryName = jsonConvert.convert<String>(
      json['forum_category_name']);
  if (forumCategoryName != null) {
    gatherThreadPageInfoThreadList.forumCategoryName = forumCategoryName;
  }
  final String? stickTime = jsonConvert.convert<String>(json['stick_time']);
  if (stickTime != null) {
    gatherThreadPageInfoThreadList.stickTime = stickTime;
  }
  final String? rateid = jsonConvert.convert<String>(json['rateid']);
  if (rateid != null) {
    gatherThreadPageInfoThreadList.rateid = rateid;
  }
  final String? firstImageUrl = jsonConvert.convert<String>(
      json['firstImageUrl']);
  if (firstImageUrl != null) {
    gatherThreadPageInfoThreadList.firstImageUrl = firstImageUrl;
  }
  final int? picNum = jsonConvert.convert<int>(json['picNum']);
  if (picNum != null) {
    gatherThreadPageInfoThreadList.picNum = picNum;
  }
  return gatherThreadPageInfoThreadList;
}

Map<String, dynamic> $GatherThreadPageInfoThreadListToJson(
    GatherThreadPageInfoThreadList entity) {
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
  data['firstImageUrl'] = entity.firstImageUrl;
  data['picNum'] = entity.picNum;
  return data;
}

extension GatherThreadPageInfoThreadListExtension on GatherThreadPageInfoThreadList {
  GatherThreadPageInfoThreadList copyWith({
    String? isPrivate,
    String? cityid,
    String? cityname,
    String? domain,
    String? tid,
    String? fid,
    String? pid,
    String? fname,
    String? subject,
    GatherThreadPageInfoThreadListAuthor? author,
    String? authorUid,
    String? category,
    String? threadType,
    String? views,
    int? replies,
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
    String? firstImageUrl,
    int? picNum,
  }) {
    return GatherThreadPageInfoThreadList()
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
      ..searchSubject = searchSubject ?? this.searchSubject
      ..searchContent = searchContent ?? this.searchContent
      ..ratePlusNumber = ratePlusNumber ?? this.ratePlusNumber
      ..topicListStick = topicListStick ?? this.topicListStick
      ..address = address ?? this.address
      ..tagStr = tagStr ?? this.tagStr
      ..attachments = attachments ?? this.attachments
      ..forumCategoryName = forumCategoryName ?? this.forumCategoryName
      ..stickTime = stickTime ?? this.stickTime
      ..rateid = rateid ?? this.rateid
      ..firstImageUrl = firstImageUrl ?? this.firstImageUrl
      ..picNum = picNum ?? this.picNum;
  }
}

GatherThreadPageInfoThreadListAuthor $GatherThreadPageInfoThreadListAuthorFromJson(
    Map<String, dynamic> json) {
  final GatherThreadPageInfoThreadListAuthor gatherThreadPageInfoThreadListAuthor = GatherThreadPageInfoThreadListAuthor();
  final String? uid = jsonConvert.convert<String>(json['uid']);
  if (uid != null) {
    gatherThreadPageInfoThreadListAuthor.uid = uid;
  }
  final String? userName = jsonConvert.convert<String>(json['user_name']);
  if (userName != null) {
    gatherThreadPageInfoThreadListAuthor.userName = userName;
  }
  final String? status = jsonConvert.convert<String>(json['status']);
  if (status != null) {
    gatherThreadPageInfoThreadListAuthor.status = status;
  }
  final String? sign = jsonConvert.convert<String>(json['sign']);
  if (sign != null) {
    gatherThreadPageInfoThreadListAuthor.sign = sign;
  }
  final String? warning = jsonConvert.convert<String>(json['warning']);
  if (warning != null) {
    gatherThreadPageInfoThreadListAuthor.warning = warning;
  }
  final String? avatar = jsonConvert.convert<String>(json['avatar']);
  if (avatar != null) {
    gatherThreadPageInfoThreadListAuthor.avatar = avatar;
  }
  final String? verify = jsonConvert.convert<String>(json['verify']);
  if (verify != null) {
    gatherThreadPageInfoThreadListAuthor.verify = verify;
  }
  final String? highVerify = jsonConvert.convert<String>(json['high_verify']);
  if (highVerify != null) {
    gatherThreadPageInfoThreadListAuthor.highVerify = highVerify;
  }
  final String? honourVerify = jsonConvert.convert<String>(
      json['honour_verify']);
  if (honourVerify != null) {
    gatherThreadPageInfoThreadListAuthor.honourVerify = honourVerify;
  }
  final String? verifyNew = jsonConvert.convert<String>(json['verify_new']);
  if (verifyNew != null) {
    gatherThreadPageInfoThreadListAuthor.verifyNew = verifyNew;
  }
  final String? verifyDesc = jsonConvert.convert<String>(json['verify_desc']);
  if (verifyDesc != null) {
    gatherThreadPageInfoThreadListAuthor.verifyDesc = verifyDesc;
  }
  final String? gender = jsonConvert.convert<String>(json['gender']);
  if (gender != null) {
    gatherThreadPageInfoThreadListAuthor.gender = gender;
  }
  final String? honourDesc = jsonConvert.convert<String>(json['honour_desc']);
  if (honourDesc != null) {
    gatherThreadPageInfoThreadListAuthor.honourDesc = honourDesc;
  }
  final String? highDesc = jsonConvert.convert<String>(json['high_desc']);
  if (highDesc != null) {
    gatherThreadPageInfoThreadListAuthor.highDesc = highDesc;
  }
  final String? boardPerm = jsonConvert.convert<String>(json['board_perm']);
  if (boardPerm != null) {
    gatherThreadPageInfoThreadListAuthor.boardPerm = boardPerm;
  }
  final String? gid = jsonConvert.convert<String>(json['gid']);
  if (gid != null) {
    gatherThreadPageInfoThreadListAuthor.gid = gid;
  }
  final String? groupRank = jsonConvert.convert<String>(json['group_rank']);
  if (groupRank != null) {
    gatherThreadPageInfoThreadListAuthor.groupRank = groupRank;
  }
  final String? groupName = jsonConvert.convert<String>(json['group_name']);
  if (groupName != null) {
    gatherThreadPageInfoThreadListAuthor.groupName = groupName;
  }
  final bool? isTenYear = jsonConvert.convert<bool>(json['is_ten_year']);
  if (isTenYear != null) {
    gatherThreadPageInfoThreadListAuthor.isTenYear = isTenYear;
  }
  final bool? shiJiaShangJia = jsonConvert.convert<bool>(
      json['shi_jia_shang_jia']);
  if (shiJiaShangJia != null) {
    gatherThreadPageInfoThreadListAuthor.shiJiaShangJia = shiJiaShangJia;
  }
  final String? shiJiaShangJiaDesc = jsonConvert.convert<String>(
      json['shi_jia_shang_jia_desc']);
  if (shiJiaShangJiaDesc != null) {
    gatherThreadPageInfoThreadListAuthor.shiJiaShangJiaDesc =
        shiJiaShangJiaDesc;
  }
  final List<dynamic>? medals = (json['medals'] as List<dynamic>?)?.map(
          (e) => e).toList();
  if (medals != null) {
    gatherThreadPageInfoThreadListAuthor.medals = medals;
  }
  final String? pendantId = jsonConvert.convert<String>(json['pendant_id']);
  if (pendantId != null) {
    gatherThreadPageInfoThreadListAuthor.pendantId = pendantId;
  }
  final String? cityname = jsonConvert.convert<String>(json['cityname']);
  if (cityname != null) {
    gatherThreadPageInfoThreadListAuthor.cityname = cityname;
  }
  final String? originalAvatar = jsonConvert.convert<String>(
      json['original_avatar']);
  if (originalAvatar != null) {
    gatherThreadPageInfoThreadListAuthor.originalAvatar = originalAvatar;
  }
  final String? smallAvatar = jsonConvert.convert<String>(json['small_avatar']);
  if (smallAvatar != null) {
    gatherThreadPageInfoThreadListAuthor.smallAvatar = smallAvatar;
  }
  final String? latitude = jsonConvert.convert<String>(json['latitude']);
  if (latitude != null) {
    gatherThreadPageInfoThreadListAuthor.latitude = latitude;
  }
  final String? longitude = jsonConvert.convert<String>(json['longitude']);
  if (longitude != null) {
    gatherThreadPageInfoThreadListAuthor.longitude = longitude;
  }
  final String? totalZanCount = jsonConvert.convert<String>(
      json['total_zan_count']);
  if (totalZanCount != null) {
    gatherThreadPageInfoThreadListAuthor.totalZanCount = totalZanCount;
  }
  final String? totalFansCount = jsonConvert.convert<String>(
      json['total_fans_count']);
  if (totalFansCount != null) {
    gatherThreadPageInfoThreadListAuthor.totalFansCount = totalFansCount;
  }
  final String? totalFavCount = jsonConvert.convert<String>(
      json['total_fav_count']);
  if (totalFavCount != null) {
    gatherThreadPageInfoThreadListAuthor.totalFavCount = totalFavCount;
  }
  return gatherThreadPageInfoThreadListAuthor;
}

Map<String, dynamic> $GatherThreadPageInfoThreadListAuthorToJson(
    GatherThreadPageInfoThreadListAuthor entity) {
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

extension GatherThreadPageInfoThreadListAuthorExtension on GatherThreadPageInfoThreadListAuthor {
  GatherThreadPageInfoThreadListAuthor copyWith({
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
    return GatherThreadPageInfoThreadListAuthor()
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

GatherThreadPageInfoGatherInfo $GatherThreadPageInfoGatherInfoFromJson(
    Map<String, dynamic> json) {
  final GatherThreadPageInfoGatherInfo gatherThreadPageInfoGatherInfo = GatherThreadPageInfoGatherInfo();
  final String? id = jsonConvert.convert<String>(json['id']);
  if (id != null) {
    gatherThreadPageInfoGatherInfo.id = id;
  }
  final String? uid = jsonConvert.convert<String>(json['uid']);
  if (uid != null) {
    gatherThreadPageInfoGatherInfo.uid = uid;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    gatherThreadPageInfoGatherInfo.name = name;
  }
  final String? desc = jsonConvert.convert<String>(json['desc']);
  if (desc != null) {
    gatherThreadPageInfoGatherInfo.desc = desc;
  }
  final String? cover = jsonConvert.convert<String>(json['cover']);
  if (cover != null) {
    gatherThreadPageInfoGatherInfo.cover = cover;
  }
  final String? status = jsonConvert.convert<String>(json['status']);
  if (status != null) {
    gatherThreadPageInfoGatherInfo.status = status;
  }
  final int? visitNum = jsonConvert.convert<int>(json['visit_num']);
  if (visitNum != null) {
    gatherThreadPageInfoGatherInfo.visitNum = visitNum;
  }
  final int? threads = jsonConvert.convert<int>(json['threads']);
  if (threads != null) {
    gatherThreadPageInfoGatherInfo.threads = threads;
  }
  final String? lastGatherAt = jsonConvert.convert<String>(
      json['last_gather_at']);
  if (lastGatherAt != null) {
    gatherThreadPageInfoGatherInfo.lastGatherAt = lastGatherAt;
  }
  final String? createdAt = jsonConvert.convert<String>(json['created_at']);
  if (createdAt != null) {
    gatherThreadPageInfoGatherInfo.createdAt = createdAt;
  }
  final String? updatedAt = jsonConvert.convert<String>(json['updated_at']);
  if (updatedAt != null) {
    gatherThreadPageInfoGatherInfo.updatedAt = updatedAt;
  }
  return gatherThreadPageInfoGatherInfo;
}

Map<String, dynamic> $GatherThreadPageInfoGatherInfoToJson(
    GatherThreadPageInfoGatherInfo entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['uid'] = entity.uid;
  data['name'] = entity.name;
  data['desc'] = entity.desc;
  data['cover'] = entity.cover;
  data['status'] = entity.status;
  data['visit_num'] = entity.visitNum;
  data['threads'] = entity.threads;
  data['last_gather_at'] = entity.lastGatherAt;
  data['created_at'] = entity.createdAt;
  data['updated_at'] = entity.updatedAt;
  return data;
}

extension GatherThreadPageInfoGatherInfoExtension on GatherThreadPageInfoGatherInfo {
  GatherThreadPageInfoGatherInfo copyWith({
    String? id,
    String? uid,
    String? name,
    String? desc,
    String? cover,
    String? status,
    int? visitNum,
    int? threads,
    String? lastGatherAt,
    String? createdAt,
    String? updatedAt,
  }) {
    return GatherThreadPageInfoGatherInfo()
      ..id = id ?? this.id
      ..uid = uid ?? this.uid
      ..name = name ?? this.name
      ..desc = desc ?? this.desc
      ..cover = cover ?? this.cover
      ..status = status ?? this.status
      ..visitNum = visitNum ?? this.visitNum
      ..threads = threads ?? this.threads
      ..lastGatherAt = lastGatherAt ?? this.lastGatherAt
      ..createdAt = createdAt ?? this.createdAt
      ..updatedAt = updatedAt ?? this.updatedAt;
  }
}

GatherThreadPageInfoGatherUser $GatherThreadPageInfoGatherUserFromJson(
    Map<String, dynamic> json) {
  final GatherThreadPageInfoGatherUser gatherThreadPageInfoGatherUser = GatherThreadPageInfoGatherUser();
  final String? uid = jsonConvert.convert<String>(json['uid']);
  if (uid != null) {
    gatherThreadPageInfoGatherUser.uid = uid;
  }
  final String? userName = jsonConvert.convert<String>(json['user_name']);
  if (userName != null) {
    gatherThreadPageInfoGatherUser.userName = userName;
  }
  final String? status = jsonConvert.convert<String>(json['status']);
  if (status != null) {
    gatherThreadPageInfoGatherUser.status = status;
  }
  final String? sign = jsonConvert.convert<String>(json['sign']);
  if (sign != null) {
    gatherThreadPageInfoGatherUser.sign = sign;
  }
  final String? warning = jsonConvert.convert<String>(json['warning']);
  if (warning != null) {
    gatherThreadPageInfoGatherUser.warning = warning;
  }
  final String? avatar = jsonConvert.convert<String>(json['avatar']);
  if (avatar != null) {
    gatherThreadPageInfoGatherUser.avatar = avatar;
  }
  final String? verify = jsonConvert.convert<String>(json['verify']);
  if (verify != null) {
    gatherThreadPageInfoGatherUser.verify = verify;
  }
  final String? highVerify = jsonConvert.convert<String>(json['high_verify']);
  if (highVerify != null) {
    gatherThreadPageInfoGatherUser.highVerify = highVerify;
  }
  final String? honourVerify = jsonConvert.convert<String>(
      json['honour_verify']);
  if (honourVerify != null) {
    gatherThreadPageInfoGatherUser.honourVerify = honourVerify;
  }
  final String? verifyNew = jsonConvert.convert<String>(json['verify_new']);
  if (verifyNew != null) {
    gatherThreadPageInfoGatherUser.verifyNew = verifyNew;
  }
  final String? verifyDesc = jsonConvert.convert<String>(json['verify_desc']);
  if (verifyDesc != null) {
    gatherThreadPageInfoGatherUser.verifyDesc = verifyDesc;
  }
  final String? gender = jsonConvert.convert<String>(json['gender']);
  if (gender != null) {
    gatherThreadPageInfoGatherUser.gender = gender;
  }
  final String? honourDesc = jsonConvert.convert<String>(json['honour_desc']);
  if (honourDesc != null) {
    gatherThreadPageInfoGatherUser.honourDesc = honourDesc;
  }
  final String? highDesc = jsonConvert.convert<String>(json['high_desc']);
  if (highDesc != null) {
    gatherThreadPageInfoGatherUser.highDesc = highDesc;
  }
  final String? boardPerm = jsonConvert.convert<String>(json['board_perm']);
  if (boardPerm != null) {
    gatherThreadPageInfoGatherUser.boardPerm = boardPerm;
  }
  final String? gid = jsonConvert.convert<String>(json['gid']);
  if (gid != null) {
    gatherThreadPageInfoGatherUser.gid = gid;
  }
  final String? groupRank = jsonConvert.convert<String>(json['group_rank']);
  if (groupRank != null) {
    gatherThreadPageInfoGatherUser.groupRank = groupRank;
  }
  final String? groupName = jsonConvert.convert<String>(json['group_name']);
  if (groupName != null) {
    gatherThreadPageInfoGatherUser.groupName = groupName;
  }
  final bool? isTenYear = jsonConvert.convert<bool>(json['is_ten_year']);
  if (isTenYear != null) {
    gatherThreadPageInfoGatherUser.isTenYear = isTenYear;
  }
  final bool? shiJiaShangJia = jsonConvert.convert<bool>(
      json['shi_jia_shang_jia']);
  if (shiJiaShangJia != null) {
    gatherThreadPageInfoGatherUser.shiJiaShangJia = shiJiaShangJia;
  }
  final String? shiJiaShangJiaDesc = jsonConvert.convert<String>(
      json['shi_jia_shang_jia_desc']);
  if (shiJiaShangJiaDesc != null) {
    gatherThreadPageInfoGatherUser.shiJiaShangJiaDesc = shiJiaShangJiaDesc;
  }
  final List<dynamic>? medals = (json['medals'] as List<dynamic>?)?.map(
          (e) => e).toList();
  if (medals != null) {
    gatherThreadPageInfoGatherUser.medals = medals;
  }
  final String? pendantId = jsonConvert.convert<String>(json['pendant_id']);
  if (pendantId != null) {
    gatherThreadPageInfoGatherUser.pendantId = pendantId;
  }
  final String? cityname = jsonConvert.convert<String>(json['cityname']);
  if (cityname != null) {
    gatherThreadPageInfoGatherUser.cityname = cityname;
  }
  final String? originalAvatar = jsonConvert.convert<String>(
      json['original_avatar']);
  if (originalAvatar != null) {
    gatherThreadPageInfoGatherUser.originalAvatar = originalAvatar;
  }
  final String? smallAvatar = jsonConvert.convert<String>(json['small_avatar']);
  if (smallAvatar != null) {
    gatherThreadPageInfoGatherUser.smallAvatar = smallAvatar;
  }
  final String? latitude = jsonConvert.convert<String>(json['latitude']);
  if (latitude != null) {
    gatherThreadPageInfoGatherUser.latitude = latitude;
  }
  final String? longitude = jsonConvert.convert<String>(json['longitude']);
  if (longitude != null) {
    gatherThreadPageInfoGatherUser.longitude = longitude;
  }
  final String? totalZanCount = jsonConvert.convert<String>(
      json['total_zan_count']);
  if (totalZanCount != null) {
    gatherThreadPageInfoGatherUser.totalZanCount = totalZanCount;
  }
  final String? totalFansCount = jsonConvert.convert<String>(
      json['total_fans_count']);
  if (totalFansCount != null) {
    gatherThreadPageInfoGatherUser.totalFansCount = totalFansCount;
  }
  final String? totalFavCount = jsonConvert.convert<String>(
      json['total_fav_count']);
  if (totalFavCount != null) {
    gatherThreadPageInfoGatherUser.totalFavCount = totalFavCount;
  }
  return gatherThreadPageInfoGatherUser;
}

Map<String, dynamic> $GatherThreadPageInfoGatherUserToJson(
    GatherThreadPageInfoGatherUser entity) {
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

extension GatherThreadPageInfoGatherUserExtension on GatherThreadPageInfoGatherUser {
  GatherThreadPageInfoGatherUser copyWith({
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
    return GatherThreadPageInfoGatherUser()
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