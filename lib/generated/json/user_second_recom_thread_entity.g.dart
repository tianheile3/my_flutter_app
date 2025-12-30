import 'package:flutter_study/generated/json/base/json_convert_content.dart';
import 'package:flutter_study/api/response/user_second_recom_thread_entity.dart';


UserSecondRecomThreadEntity $UserSecondRecomThreadEntityFromJson(
    Map<String, dynamic> json) {
  final UserSecondRecomThreadEntity userSecondRecomThreadEntity = UserSecondRecomThreadEntity();
  final List<
      UserSecondRecomThreadRecomThreadList>? recomThreadList = (json['recom_thread_list'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<UserSecondRecomThreadRecomThreadList>(
          e) as UserSecondRecomThreadRecomThreadList).toList();
  if (recomThreadList != null) {
    userSecondRecomThreadEntity.recomThreadList = recomThreadList;
  }
  final List<
      dynamic>? stickRecomThreadList = (json['stick_recom_thread_list'] as List<
      dynamic>?)?.map(
          (e) => e).toList();
  if (stickRecomThreadList != null) {
    userSecondRecomThreadEntity.stickRecomThreadList = stickRecomThreadList;
  }
  final List<dynamic>? advList = (json['adv_list'] as List<dynamic>?)?.map(
          (e) => e).toList();
  if (advList != null) {
    userSecondRecomThreadEntity.advList = advList;
  }
  final String? totalCount = jsonConvert.convert<String>(json['total_count']);
  if (totalCount != null) {
    userSecondRecomThreadEntity.totalCount = totalCount;
  }
  final String? page = jsonConvert.convert<String>(json['page']);
  if (page != null) {
    userSecondRecomThreadEntity.page = page;
  }
  final String? perPage = jsonConvert.convert<String>(json['per_page']);
  if (perPage != null) {
    userSecondRecomThreadEntity.perPage = perPage;
  }
  final String? maxPage = jsonConvert.convert<String>(json['max_page']);
  if (maxPage != null) {
    userSecondRecomThreadEntity.maxPage = maxPage;
  }
  return userSecondRecomThreadEntity;
}

Map<String, dynamic> $UserSecondRecomThreadEntityToJson(
    UserSecondRecomThreadEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['recom_thread_list'] =
      entity.recomThreadList.map((v) => v.toJson()).toList();
  data['stick_recom_thread_list'] = entity.stickRecomThreadList;
  data['adv_list'] = entity.advList;
  data['total_count'] = entity.totalCount;
  data['page'] = entity.page;
  data['per_page'] = entity.perPage;
  data['max_page'] = entity.maxPage;
  return data;
}

extension UserSecondRecomThreadEntityExtension on UserSecondRecomThreadEntity {
  UserSecondRecomThreadEntity copyWith({
    List<UserSecondRecomThreadRecomThreadList>? recomThreadList,
    List<dynamic>? stickRecomThreadList,
    List<dynamic>? advList,
    String? totalCount,
    String? page,
    String? perPage,
    String? maxPage,
  }) {
    return UserSecondRecomThreadEntity()
      ..recomThreadList = recomThreadList ?? this.recomThreadList
      ..stickRecomThreadList = stickRecomThreadList ?? this.stickRecomThreadList
      ..advList = advList ?? this.advList
      ..totalCount = totalCount ?? this.totalCount
      ..page = page ?? this.page
      ..perPage = perPage ?? this.perPage
      ..maxPage = maxPage ?? this.maxPage;
  }
}

UserSecondRecomThreadRecomThreadList $UserSecondRecomThreadRecomThreadListFromJson(
    Map<String, dynamic> json) {
  final UserSecondRecomThreadRecomThreadList userSecondRecomThreadRecomThreadList = UserSecondRecomThreadRecomThreadList();
  final String? cityid = jsonConvert.convert<String>(json['cityid']);
  if (cityid != null) {
    userSecondRecomThreadRecomThreadList.cityid = cityid;
  }
  final String? cityname = jsonConvert.convert<String>(json['cityname']);
  if (cityname != null) {
    userSecondRecomThreadRecomThreadList.cityname = cityname;
  }
  final String? tid = jsonConvert.convert<String>(json['tid']);
  if (tid != null) {
    userSecondRecomThreadRecomThreadList.tid = tid;
  }
  final String? fid = jsonConvert.convert<String>(json['fid']);
  if (fid != null) {
    userSecondRecomThreadRecomThreadList.fid = fid;
  }
  final String? pid = jsonConvert.convert<String>(json['pid']);
  if (pid != null) {
    userSecondRecomThreadRecomThreadList.pid = pid;
  }
  final String? fname = jsonConvert.convert<String>(json['fname']);
  if (fname != null) {
    userSecondRecomThreadRecomThreadList.fname = fname;
  }
  final String? boardType = jsonConvert.convert<String>(json['board_type']);
  if (boardType != null) {
    userSecondRecomThreadRecomThreadList.boardType = boardType;
  }
  final bool? isPicShow = jsonConvert.convert<bool>(json['is_pic_show']);
  if (isPicShow != null) {
    userSecondRecomThreadRecomThreadList.isPicShow = isPicShow;
  }
  final String? subject = jsonConvert.convert<String>(json['subject']);
  if (subject != null) {
    userSecondRecomThreadRecomThreadList.subject = subject;
  }
  final UserSecondRecomThreadRecomThreadListAuthor? author = jsonConvert
      .convert<UserSecondRecomThreadRecomThreadListAuthor>(json['author']);
  if (author != null) {
    userSecondRecomThreadRecomThreadList.author = author;
  }
  final String? category = jsonConvert.convert<String>(json['category']);
  if (category != null) {
    userSecondRecomThreadRecomThreadList.category = category;
  }
  final String? threadType = jsonConvert.convert<String>(json['thread_type']);
  if (threadType != null) {
    userSecondRecomThreadRecomThreadList.threadType = threadType;
  }
  final String? views = jsonConvert.convert<String>(json['views']);
  if (views != null) {
    userSecondRecomThreadRecomThreadList.views = views;
  }
  final String? replies = jsonConvert.convert<String>(json['replies']);
  if (replies != null) {
    userSecondRecomThreadRecomThreadList.replies = replies;
  }
  final String? status = jsonConvert.convert<String>(json['status']);
  if (status != null) {
    userSecondRecomThreadRecomThreadList.status = status;
  }
  final String? extra = jsonConvert.convert<String>(json['extra']);
  if (extra != null) {
    userSecondRecomThreadRecomThreadList.extra = extra;
  }
  final String? closed = jsonConvert.convert<String>(json['closed']);
  if (closed != null) {
    userSecondRecomThreadRecomThreadList.closed = closed;
  }
  final String? lastPostTime = jsonConvert.convert<String>(
      json['last_post_time']);
  if (lastPostTime != null) {
    userSecondRecomThreadRecomThreadList.lastPostTime = lastPostTime;
  }
  final String? lastPostAuthor = jsonConvert.convert<String>(
      json['last_post_author']);
  if (lastPostAuthor != null) {
    userSecondRecomThreadRecomThreadList.lastPostAuthor = lastPostAuthor;
  }
  final String? lastPostAuthorUid = jsonConvert.convert<String>(
      json['last_post_author_uid']);
  if (lastPostAuthorUid != null) {
    userSecondRecomThreadRecomThreadList.lastPostAuthorUid = lastPostAuthorUid;
  }
  final String? lastPid = jsonConvert.convert<String>(json['last_pid']);
  if (lastPid != null) {
    userSecondRecomThreadRecomThreadList.lastPid = lastPid;
  }
  final String? firstPid = jsonConvert.convert<String>(json['first_pid']);
  if (firstPid != null) {
    userSecondRecomThreadRecomThreadList.firstPid = firstPid;
  }
  final String? url = jsonConvert.convert<String>(json['url']);
  if (url != null) {
    userSecondRecomThreadRecomThreadList.url = url;
  }
  final String? createdAt = jsonConvert.convert<String>(json['created_at']);
  if (createdAt != null) {
    userSecondRecomThreadRecomThreadList.createdAt = createdAt;
  }
  final String? updatedAt = jsonConvert.convert<String>(json['updated_at']);
  if (updatedAt != null) {
    userSecondRecomThreadRecomThreadList.updatedAt = updatedAt;
  }
  final List<
      UserSecondRecomThreadRecomThreadListRecommendListTag>? recommendListTag = (json['recommend_list_tag'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<
          UserSecondRecomThreadRecomThreadListRecommendListTag>(
          e) as UserSecondRecomThreadRecomThreadListRecommendListTag).toList();
  if (recommendListTag != null) {
    userSecondRecomThreadRecomThreadList.recommendListTag = recommendListTag;
  }
  final String? recommendSubject = jsonConvert.convert<String>(
      json['recommend_subject']);
  if (recommendSubject != null) {
    userSecondRecomThreadRecomThreadList.recommendSubject = recommendSubject;
  }
  final String? recommendContent = jsonConvert.convert<String>(
      json['recommend_content']);
  if (recommendContent != null) {
    userSecondRecomThreadRecomThreadList.recommendContent = recommendContent;
  }
  final String? recommendImages = jsonConvert.convert<String>(
      json['recommend_images']);
  if (recommendImages != null) {
    userSecondRecomThreadRecomThreadList.recommendImages = recommendImages;
  }
  final String? recommendImageShowType = jsonConvert.convert<String>(
      json['recommend_image_show_type']);
  if (recommendImageShowType != null) {
    userSecondRecomThreadRecomThreadList.recommendImageShowType =
        recommendImageShowType;
  }
  final String? recommendVideoShowType = jsonConvert.convert<String>(
      json['recommend_video_show_type']);
  if (recommendVideoShowType != null) {
    userSecondRecomThreadRecomThreadList.recommendVideoShowType =
        recommendVideoShowType;
  }
  final String? recommendShowType = jsonConvert.convert<String>(
      json['recommend_show_type']);
  if (recommendShowType != null) {
    userSecondRecomThreadRecomThreadList.recommendShowType = recommendShowType;
  }
  final String? recommendSourceType = jsonConvert.convert<String>(
      json['recommend_source_type']);
  if (recommendSourceType != null) {
    userSecondRecomThreadRecomThreadList.recommendSourceType =
        recommendSourceType;
  }
  final String? recommendUrl = jsonConvert.convert<String>(
      json['recommend_url']);
  if (recommendUrl != null) {
    userSecondRecomThreadRecomThreadList.recommendUrl = recommendUrl;
  }
  final String? strFid = jsonConvert.convert<String>(json['str_fid']);
  if (strFid != null) {
    userSecondRecomThreadRecomThreadList.strFid = strFid;
  }
  final String? strTid = jsonConvert.convert<String>(json['str_tid']);
  if (strTid != null) {
    userSecondRecomThreadRecomThreadList.strTid = strTid;
  }
  final String? videoAddr = jsonConvert.convert<String>(json['video_addr']);
  if (videoAddr != null) {
    userSecondRecomThreadRecomThreadList.videoAddr = videoAddr;
  }
  final String? videoAddrPic = jsonConvert.convert<String>(
      json['video_addr_pic']);
  if (videoAddrPic != null) {
    userSecondRecomThreadRecomThreadList.videoAddrPic = videoAddrPic;
  }
  final List<dynamic>? threadTags = (json['thread_tags'] as List<dynamic>?)
      ?.map(
          (e) => e)
      .toList();
  if (threadTags != null) {
    userSecondRecomThreadRecomThreadList.threadTags = threadTags;
  }
  final String? cateUrl = jsonConvert.convert<String>(json['cate_url']);
  if (cateUrl != null) {
    userSecondRecomThreadRecomThreadList.cateUrl = cateUrl;
  }
  final UserSecondRecomThreadRecomThreadListZanInfo? zanInfo = jsonConvert
      .convert<UserSecondRecomThreadRecomThreadListZanInfo>(json['zan_info']);
  if (zanInfo != null) {
    userSecondRecomThreadRecomThreadList.zanInfo = zanInfo;
  }
  final String? recBid = jsonConvert.convert<String>(json['rec_bid']);
  if (recBid != null) {
    userSecondRecomThreadRecomThreadList.recBid = recBid;
  }
  final String? stickPosition = jsonConvert.convert<String>(
      json['stick_position']);
  if (stickPosition != null) {
    userSecondRecomThreadRecomThreadList.stickPosition = stickPosition;
  }
  final List<String>? images = (json['images'] as List<dynamic>?)?.map(
          (e) => jsonConvert.convert<String>(e) as String).toList();
  if (images != null) {
    userSecondRecomThreadRecomThreadList.images = images;
  }
  return userSecondRecomThreadRecomThreadList;
}

Map<String, dynamic> $UserSecondRecomThreadRecomThreadListToJson(
    UserSecondRecomThreadRecomThreadList entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['cityid'] = entity.cityid;
  data['cityname'] = entity.cityname;
  data['tid'] = entity.tid;
  data['fid'] = entity.fid;
  data['pid'] = entity.pid;
  data['fname'] = entity.fname;
  data['board_type'] = entity.boardType;
  data['is_pic_show'] = entity.isPicShow;
  data['subject'] = entity.subject;
  data['author'] = entity.author.toJson();
  data['category'] = entity.category;
  data['thread_type'] = entity.threadType;
  data['views'] = entity.views;
  data['replies'] = entity.replies;
  data['status'] = entity.status;
  data['extra'] = entity.extra;
  data['closed'] = entity.closed;
  data['last_post_time'] = entity.lastPostTime;
  data['last_post_author'] = entity.lastPostAuthor;
  data['last_post_author_uid'] = entity.lastPostAuthorUid;
  data['last_pid'] = entity.lastPid;
  data['first_pid'] = entity.firstPid;
  data['url'] = entity.url;
  data['created_at'] = entity.createdAt;
  data['updated_at'] = entity.updatedAt;
  data['recommend_list_tag'] =
      entity.recommendListTag.map((v) => v.toJson()).toList();
  data['recommend_subject'] = entity.recommendSubject;
  data['recommend_content'] = entity.recommendContent;
  data['recommend_images'] = entity.recommendImages;
  data['recommend_image_show_type'] = entity.recommendImageShowType;
  data['recommend_video_show_type'] = entity.recommendVideoShowType;
  data['recommend_show_type'] = entity.recommendShowType;
  data['recommend_source_type'] = entity.recommendSourceType;
  data['recommend_url'] = entity.recommendUrl;
  data['str_fid'] = entity.strFid;
  data['str_tid'] = entity.strTid;
  data['video_addr'] = entity.videoAddr;
  data['video_addr_pic'] = entity.videoAddrPic;
  data['thread_tags'] = entity.threadTags;
  data['cate_url'] = entity.cateUrl;
  data['zan_info'] = entity.zanInfo.toJson();
  data['rec_bid'] = entity.recBid;
  data['stick_position'] = entity.stickPosition;
  data['images'] = entity.images;
  return data;
}

extension UserSecondRecomThreadRecomThreadListExtension on UserSecondRecomThreadRecomThreadList {
  UserSecondRecomThreadRecomThreadList copyWith({
    String? cityid,
    String? cityname,
    String? tid,
    String? fid,
    String? pid,
    String? fname,
    String? boardType,
    bool? isPicShow,
    String? subject,
    UserSecondRecomThreadRecomThreadListAuthor? author,
    String? category,
    String? threadType,
    String? views,
    String? replies,
    String? status,
    String? extra,
    String? closed,
    String? lastPostTime,
    String? lastPostAuthor,
    String? lastPostAuthorUid,
    String? lastPid,
    String? firstPid,
    String? url,
    String? createdAt,
    String? updatedAt,
    List<
        UserSecondRecomThreadRecomThreadListRecommendListTag>? recommendListTag,
    String? recommendSubject,
    String? recommendContent,
    String? recommendImages,
    String? recommendImageShowType,
    String? recommendVideoShowType,
    String? recommendShowType,
    String? recommendSourceType,
    String? recommendUrl,
    String? strFid,
    String? strTid,
    String? videoAddr,
    String? videoAddrPic,
    List<dynamic>? threadTags,
    String? cateUrl,
    UserSecondRecomThreadRecomThreadListZanInfo? zanInfo,
    String? recBid,
    String? stickPosition,
    List<String>? images,
  }) {
    return UserSecondRecomThreadRecomThreadList()
      ..cityid = cityid ?? this.cityid
      ..cityname = cityname ?? this.cityname
      ..tid = tid ?? this.tid
      ..fid = fid ?? this.fid
      ..pid = pid ?? this.pid
      ..fname = fname ?? this.fname
      ..boardType = boardType ?? this.boardType
      ..isPicShow = isPicShow ?? this.isPicShow
      ..subject = subject ?? this.subject
      ..author = author ?? this.author
      ..category = category ?? this.category
      ..threadType = threadType ?? this.threadType
      ..views = views ?? this.views
      ..replies = replies ?? this.replies
      ..status = status ?? this.status
      ..extra = extra ?? this.extra
      ..closed = closed ?? this.closed
      ..lastPostTime = lastPostTime ?? this.lastPostTime
      ..lastPostAuthor = lastPostAuthor ?? this.lastPostAuthor
      ..lastPostAuthorUid = lastPostAuthorUid ?? this.lastPostAuthorUid
      ..lastPid = lastPid ?? this.lastPid
      ..firstPid = firstPid ?? this.firstPid
      ..url = url ?? this.url
      ..createdAt = createdAt ?? this.createdAt
      ..updatedAt = updatedAt ?? this.updatedAt
      ..recommendListTag = recommendListTag ?? this.recommendListTag
      ..recommendSubject = recommendSubject ?? this.recommendSubject
      ..recommendContent = recommendContent ?? this.recommendContent
      ..recommendImages = recommendImages ?? this.recommendImages
      ..recommendImageShowType = recommendImageShowType ??
          this.recommendImageShowType
      ..recommendVideoShowType = recommendVideoShowType ??
          this.recommendVideoShowType
      ..recommendShowType = recommendShowType ?? this.recommendShowType
      ..recommendSourceType = recommendSourceType ?? this.recommendSourceType
      ..recommendUrl = recommendUrl ?? this.recommendUrl
      ..strFid = strFid ?? this.strFid
      ..strTid = strTid ?? this.strTid
      ..videoAddr = videoAddr ?? this.videoAddr
      ..videoAddrPic = videoAddrPic ?? this.videoAddrPic
      ..threadTags = threadTags ?? this.threadTags
      ..cateUrl = cateUrl ?? this.cateUrl
      ..zanInfo = zanInfo ?? this.zanInfo
      ..recBid = recBid ?? this.recBid
      ..stickPosition = stickPosition ?? this.stickPosition
      ..images = images ?? this.images;
  }
}

UserSecondRecomThreadRecomThreadListAuthor $UserSecondRecomThreadRecomThreadListAuthorFromJson(
    Map<String, dynamic> json) {
  final UserSecondRecomThreadRecomThreadListAuthor userSecondRecomThreadRecomThreadListAuthor = UserSecondRecomThreadRecomThreadListAuthor();
  final String? uid = jsonConvert.convert<String>(json['uid']);
  if (uid != null) {
    userSecondRecomThreadRecomThreadListAuthor.uid = uid;
  }
  final String? userName = jsonConvert.convert<String>(json['user_name']);
  if (userName != null) {
    userSecondRecomThreadRecomThreadListAuthor.userName = userName;
  }
  final String? status = jsonConvert.convert<String>(json['status']);
  if (status != null) {
    userSecondRecomThreadRecomThreadListAuthor.status = status;
  }
  final String? sign = jsonConvert.convert<String>(json['sign']);
  if (sign != null) {
    userSecondRecomThreadRecomThreadListAuthor.sign = sign;
  }
  final String? warning = jsonConvert.convert<String>(json['warning']);
  if (warning != null) {
    userSecondRecomThreadRecomThreadListAuthor.warning = warning;
  }
  final String? avatar = jsonConvert.convert<String>(json['avatar']);
  if (avatar != null) {
    userSecondRecomThreadRecomThreadListAuthor.avatar = avatar;
  }
  final String? verify = jsonConvert.convert<String>(json['verify']);
  if (verify != null) {
    userSecondRecomThreadRecomThreadListAuthor.verify = verify;
  }
  final String? highVerify = jsonConvert.convert<String>(json['high_verify']);
  if (highVerify != null) {
    userSecondRecomThreadRecomThreadListAuthor.highVerify = highVerify;
  }
  final String? honourVerify = jsonConvert.convert<String>(
      json['honour_verify']);
  if (honourVerify != null) {
    userSecondRecomThreadRecomThreadListAuthor.honourVerify = honourVerify;
  }
  final String? verifyNew = jsonConvert.convert<String>(json['verify_new']);
  if (verifyNew != null) {
    userSecondRecomThreadRecomThreadListAuthor.verifyNew = verifyNew;
  }
  final String? verifyDesc = jsonConvert.convert<String>(json['verify_desc']);
  if (verifyDesc != null) {
    userSecondRecomThreadRecomThreadListAuthor.verifyDesc = verifyDesc;
  }
  final String? gender = jsonConvert.convert<String>(json['gender']);
  if (gender != null) {
    userSecondRecomThreadRecomThreadListAuthor.gender = gender;
  }
  final String? honourDesc = jsonConvert.convert<String>(json['honour_desc']);
  if (honourDesc != null) {
    userSecondRecomThreadRecomThreadListAuthor.honourDesc = honourDesc;
  }
  final String? highDesc = jsonConvert.convert<String>(json['high_desc']);
  if (highDesc != null) {
    userSecondRecomThreadRecomThreadListAuthor.highDesc = highDesc;
  }
  final String? boardPerm = jsonConvert.convert<String>(json['board_perm']);
  if (boardPerm != null) {
    userSecondRecomThreadRecomThreadListAuthor.boardPerm = boardPerm;
  }
  final String? gid = jsonConvert.convert<String>(json['gid']);
  if (gid != null) {
    userSecondRecomThreadRecomThreadListAuthor.gid = gid;
  }
  final String? groupRank = jsonConvert.convert<String>(json['group_rank']);
  if (groupRank != null) {
    userSecondRecomThreadRecomThreadListAuthor.groupRank = groupRank;
  }
  final String? groupName = jsonConvert.convert<String>(json['group_name']);
  if (groupName != null) {
    userSecondRecomThreadRecomThreadListAuthor.groupName = groupName;
  }
  final bool? isTenYear = jsonConvert.convert<bool>(json['is_ten_year']);
  if (isTenYear != null) {
    userSecondRecomThreadRecomThreadListAuthor.isTenYear = isTenYear;
  }
  final bool? shiJiaShangJia = jsonConvert.convert<bool>(
      json['shi_jia_shang_jia']);
  if (shiJiaShangJia != null) {
    userSecondRecomThreadRecomThreadListAuthor.shiJiaShangJia = shiJiaShangJia;
  }
  final String? shiJiaShangJiaDesc = jsonConvert.convert<String>(
      json['shi_jia_shang_jia_desc']);
  if (shiJiaShangJiaDesc != null) {
    userSecondRecomThreadRecomThreadListAuthor.shiJiaShangJiaDesc =
        shiJiaShangJiaDesc;
  }
  final List<dynamic>? medals = (json['medals'] as List<dynamic>?)?.map(
          (e) => e).toList();
  if (medals != null) {
    userSecondRecomThreadRecomThreadListAuthor.medals = medals;
  }
  final String? pendantId = jsonConvert.convert<String>(json['pendant_id']);
  if (pendantId != null) {
    userSecondRecomThreadRecomThreadListAuthor.pendantId = pendantId;
  }
  final String? cityname = jsonConvert.convert<String>(json['cityname']);
  if (cityname != null) {
    userSecondRecomThreadRecomThreadListAuthor.cityname = cityname;
  }
  final String? originalAvatar = jsonConvert.convert<String>(
      json['original_avatar']);
  if (originalAvatar != null) {
    userSecondRecomThreadRecomThreadListAuthor.originalAvatar = originalAvatar;
  }
  final String? smallAvatar = jsonConvert.convert<String>(json['small_avatar']);
  if (smallAvatar != null) {
    userSecondRecomThreadRecomThreadListAuthor.smallAvatar = smallAvatar;
  }
  final String? latitude = jsonConvert.convert<String>(json['latitude']);
  if (latitude != null) {
    userSecondRecomThreadRecomThreadListAuthor.latitude = latitude;
  }
  final String? longitude = jsonConvert.convert<String>(json['longitude']);
  if (longitude != null) {
    userSecondRecomThreadRecomThreadListAuthor.longitude = longitude;
  }
  final String? totalZanCount = jsonConvert.convert<String>(
      json['total_zan_count']);
  if (totalZanCount != null) {
    userSecondRecomThreadRecomThreadListAuthor.totalZanCount = totalZanCount;
  }
  final String? totalFansCount = jsonConvert.convert<String>(
      json['total_fans_count']);
  if (totalFansCount != null) {
    userSecondRecomThreadRecomThreadListAuthor.totalFansCount = totalFansCount;
  }
  final String? totalFavCount = jsonConvert.convert<String>(
      json['total_fav_count']);
  if (totalFavCount != null) {
    userSecondRecomThreadRecomThreadListAuthor.totalFavCount = totalFavCount;
  }
  return userSecondRecomThreadRecomThreadListAuthor;
}

Map<String, dynamic> $UserSecondRecomThreadRecomThreadListAuthorToJson(
    UserSecondRecomThreadRecomThreadListAuthor entity) {
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

extension UserSecondRecomThreadRecomThreadListAuthorExtension on UserSecondRecomThreadRecomThreadListAuthor {
  UserSecondRecomThreadRecomThreadListAuthor copyWith({
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
    return UserSecondRecomThreadRecomThreadListAuthor()
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

UserSecondRecomThreadRecomThreadListRecommendListTag $UserSecondRecomThreadRecomThreadListRecommendListTagFromJson(
    Map<String, dynamic> json) {
  final UserSecondRecomThreadRecomThreadListRecommendListTag userSecondRecomThreadRecomThreadListRecommendListTag = UserSecondRecomThreadRecomThreadListRecommendListTag();
  final String? id = jsonConvert.convert<String>(json['id']);
  if (id != null) {
    userSecondRecomThreadRecomThreadListRecommendListTag.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    userSecondRecomThreadRecomThreadListRecommendListTag.name = name;
  }
  final String? cityName = jsonConvert.convert<String>(json['city_name']);
  if (cityName != null) {
    userSecondRecomThreadRecomThreadListRecommendListTag.cityName = cityName;
  }
  return userSecondRecomThreadRecomThreadListRecommendListTag;
}

Map<String,
    dynamic> $UserSecondRecomThreadRecomThreadListRecommendListTagToJson(
    UserSecondRecomThreadRecomThreadListRecommendListTag entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['name'] = entity.name;
  data['city_name'] = entity.cityName;
  return data;
}

extension UserSecondRecomThreadRecomThreadListRecommendListTagExtension on UserSecondRecomThreadRecomThreadListRecommendListTag {
  UserSecondRecomThreadRecomThreadListRecommendListTag copyWith({
    String? id,
    String? name,
    String? cityName,
  }) {
    return UserSecondRecomThreadRecomThreadListRecommendListTag()
      ..id = id ?? this.id
      ..name = name ?? this.name
      ..cityName = cityName ?? this.cityName;
  }
}

UserSecondRecomThreadRecomThreadListZanInfo $UserSecondRecomThreadRecomThreadListZanInfoFromJson(
    Map<String, dynamic> json) {
  final UserSecondRecomThreadRecomThreadListZanInfo userSecondRecomThreadRecomThreadListZanInfo = UserSecondRecomThreadRecomThreadListZanInfo();
  final String? timeStamp = jsonConvert.convert<String>(json['time_stamp']);
  if (timeStamp != null) {
    userSecondRecomThreadRecomThreadListZanInfo.timeStamp = timeStamp;
  }
  final String? uid = jsonConvert.convert<String>(json['uid']);
  if (uid != null) {
    userSecondRecomThreadRecomThreadListZanInfo.uid = uid;
  }
  final String? category = jsonConvert.convert<String>(json['category']);
  if (category != null) {
    userSecondRecomThreadRecomThreadListZanInfo.category = category;
  }
  final String? objectId = jsonConvert.convert<String>(json['object_id']);
  if (objectId != null) {
    userSecondRecomThreadRecomThreadListZanInfo.objectId = objectId;
  }
  final String? relationObjectIds = jsonConvert.convert<String>(
      json['relation_object_ids']);
  if (relationObjectIds != null) {
    userSecondRecomThreadRecomThreadListZanInfo.relationObjectIds =
        relationObjectIds;
  }
  final String? sign = jsonConvert.convert<String>(json['sign']);
  if (sign != null) {
    userSecondRecomThreadRecomThreadListZanInfo.sign = sign;
  }
  return userSecondRecomThreadRecomThreadListZanInfo;
}

Map<String, dynamic> $UserSecondRecomThreadRecomThreadListZanInfoToJson(
    UserSecondRecomThreadRecomThreadListZanInfo entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['time_stamp'] = entity.timeStamp;
  data['uid'] = entity.uid;
  data['category'] = entity.category;
  data['object_id'] = entity.objectId;
  data['relation_object_ids'] = entity.relationObjectIds;
  data['sign'] = entity.sign;
  return data;
}

extension UserSecondRecomThreadRecomThreadListZanInfoExtension on UserSecondRecomThreadRecomThreadListZanInfo {
  UserSecondRecomThreadRecomThreadListZanInfo copyWith({
    String? timeStamp,
    String? uid,
    String? category,
    String? objectId,
    String? relationObjectIds,
    String? sign,
  }) {
    return UserSecondRecomThreadRecomThreadListZanInfo()
      ..timeStamp = timeStamp ?? this.timeStamp
      ..uid = uid ?? this.uid
      ..category = category ?? this.category
      ..objectId = objectId ?? this.objectId
      ..relationObjectIds = relationObjectIds ?? this.relationObjectIds
      ..sign = sign ?? this.sign;
  }
}