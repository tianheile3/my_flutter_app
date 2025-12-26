import 'package:flutter_study/generated/json/base/json_convert_content.dart';
import 'package:flutter_study/api/response/fav_board_and_forum_entity.dart';

FavBoardAndForumEntity $FavBoardAndForumEntityFromJson(
    Map<String, dynamic> json) {
  final FavBoardAndForumEntity favBoardAndForumEntity = FavBoardAndForumEntity();
  final int? page = jsonConvert.convert<int>(json['page']);
  if (page != null) {
    favBoardAndForumEntity.page = page;
  }
  final int? perPage = jsonConvert.convert<int>(json['per_page']);
  if (perPage != null) {
    favBoardAndForumEntity.perPage = perPage;
  }
  final int? totalCount = jsonConvert.convert<int>(json['total_count']);
  if (totalCount != null) {
    favBoardAndForumEntity.totalCount = totalCount;
  }
  final int? code = jsonConvert.convert<int>(json['code']);
  if (code != null) {
    favBoardAndForumEntity.code = code;
  }
  final String? message = jsonConvert.convert<String>(json['message']);
  if (message != null) {
    favBoardAndForumEntity.message = message;
  }
  final List<
      FavBoardAndForumReturnList>? returnList = (json['return_list'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<FavBoardAndForumReturnList>(
          e) as FavBoardAndForumReturnList).toList();
  if (returnList != null) {
    favBoardAndForumEntity.returnList = returnList;
  }
  final String? version = jsonConvert.convert<String>(json['version']);
  if (version != null) {
    favBoardAndForumEntity.version = version;
  }
  return favBoardAndForumEntity;
}

Map<String, dynamic> $FavBoardAndForumEntityToJson(
    FavBoardAndForumEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['page'] = entity.page;
  data['per_page'] = entity.perPage;
  data['total_count'] = entity.totalCount;
  data['code'] = entity.code;
  data['message'] = entity.message;
  data['return_list'] = entity.returnList.map((v) => v.toJson()).toList();
  data['version'] = entity.version;
  return data;
}

extension FavBoardAndForumEntityExtension on FavBoardAndForumEntity {
  FavBoardAndForumEntity copyWith({
    int? page,
    int? perPage,
    int? totalCount,
    int? code,
    String? message,
    List<FavBoardAndForumReturnList>? returnList,
    String? version,
  }) {
    return FavBoardAndForumEntity()
      ..page = page ?? this.page
      ..perPage = perPage ?? this.perPage
      ..totalCount = totalCount ?? this.totalCount
      ..code = code ?? this.code
      ..message = message ?? this.message
      ..returnList = returnList ?? this.returnList
      ..version = version ?? this.version;
  }
}

FavBoardAndForumReturnList $FavBoardAndForumReturnListFromJson(
    Map<String, dynamic> json) {
  final FavBoardAndForumReturnList favBoardAndForumReturnList = FavBoardAndForumReturnList();
  final String? bid = jsonConvert.convert<String>(json['bid']);
  if (bid != null) {
    favBoardAndForumReturnList.bid = bid;
  }
  final String? bidStr = jsonConvert.convert<String>(json['bid_str']);
  if (bidStr != null) {
    favBoardAndForumReturnList.bidStr = bidStr;
  }
  final String? fid = jsonConvert.convert<String>(json['fid']);
  if (fid != null) {
    favBoardAndForumReturnList.fid = fid;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    favBoardAndForumReturnList.name = name;
  }
  final String? cityName = jsonConvert.convert<String>(json['city_name']);
  if (cityName != null) {
    favBoardAndForumReturnList.cityName = cityName;
  }
  final String? displayName = jsonConvert.convert<String>(json['display_name']);
  if (displayName != null) {
    favBoardAndForumReturnList.displayName = displayName;
  }
  final String? domain = jsonConvert.convert<String>(json['domain']);
  if (domain != null) {
    favBoardAndForumReturnList.domain = domain;
  }
  final String? recomType = jsonConvert.convert<String>(json['recom_type']);
  if (recomType != null) {
    favBoardAndForumReturnList.recomType = recomType;
  }
  final String? cover = jsonConvert.convert<String>(json['cover']);
  if (cover != null) {
    favBoardAndForumReturnList.cover = cover;
  }
  final String? userName = jsonConvert.convert<String>(json['user_name']);
  if (userName != null) {
    favBoardAndForumReturnList.userName = userName;
  }
  final String? uid = jsonConvert.convert<String>(json['uid']);
  if (uid != null) {
    favBoardAndForumReturnList.uid = uid;
  }
  final String? description = jsonConvert.convert<String>(json['description']);
  if (description != null) {
    favBoardAndForumReturnList.description = description;
  }
  final bool? subscribe = jsonConvert.convert<bool>(json['subscribe']);
  if (subscribe != null) {
    favBoardAndForumReturnList.subscribe = subscribe;
  }
  final String? subscribeNum = jsonConvert.convert<String>(
      json['subscribe_num']);
  if (subscribeNum != null) {
    favBoardAndForumReturnList.subscribeNum = subscribeNum;
  }
  final String? visitNum = jsonConvert.convert<String>(json['visit_num']);
  if (visitNum != null) {
    favBoardAndForumReturnList.visitNum = visitNum;
  }
  final String? todayTidNum = jsonConvert.convert<String>(
      json['today_tid_num']);
  if (todayTidNum != null) {
    favBoardAndForumReturnList.todayTidNum = todayTidNum;
  }
  final String? announcement = jsonConvert.convert<String>(
      json['announcement']);
  if (announcement != null) {
    favBoardAndForumReturnList.announcement = announcement;
  }
  final String? announceStatus = jsonConvert.convert<String>(
      json['announce_status']);
  if (announceStatus != null) {
    favBoardAndForumReturnList.announceStatus = announceStatus;
  }
  final String? status = jsonConvert.convert<String>(json['status']);
  if (status != null) {
    favBoardAndForumReturnList.status = status;
  }
  final String? cityId = jsonConvert.convert<String>(json['city_id']);
  if (cityId != null) {
    favBoardAndForumReturnList.cityId = cityId;
  }
  final bool? canPublishThread = jsonConvert.convert<bool>(
      json['can_publish_thread']);
  if (canPublishThread != null) {
    favBoardAndForumReturnList.canPublishThread = canPublishThread;
  }
  final String? totalTidNum = jsonConvert.convert<String>(
      json['total_tid_num']);
  if (totalTidNum != null) {
    favBoardAndForumReturnList.totalTidNum = totalTidNum;
  }
  final String? lon = jsonConvert.convert<String>(json['lon']);
  if (lon != null) {
    favBoardAndForumReturnList.lon = lon;
  }
  final String? lat = jsonConvert.convert<String>(json['lat']);
  if (lat != null) {
    favBoardAndForumReturnList.lat = lat;
  }
  final String? address = jsonConvert.convert<String>(json['address']);
  if (address != null) {
    favBoardAndForumReturnList.address = address;
  }
  final String? boardType = jsonConvert.convert<String>(json['board_type']);
  if (boardType != null) {
    favBoardAndForumReturnList.boardType = boardType;
  }
  final String? frontdomain = jsonConvert.convert<String>(json['frontdomain']);
  if (frontdomain != null) {
    favBoardAndForumReturnList.frontdomain = frontdomain;
  }
  final String? stick = jsonConvert.convert<String>(json['stick']);
  if (stick != null) {
    favBoardAndForumReturnList.stick = stick;
  }
  final String? verify = jsonConvert.convert<String>(json['verify']);
  if (verify != null) {
    favBoardAndForumReturnList.verify = verify;
  }
  final String? lastSubject = jsonConvert.convert<String>(json['last_subject']);
  if (lastSubject != null) {
    favBoardAndForumReturnList.lastSubject = lastSubject;
  }
  final String? lastThreadCreatedAt = jsonConvert.convert<String>(
      json['last_thread_created_at']);
  if (lastThreadCreatedAt != null) {
    favBoardAndForumReturnList.lastThreadCreatedAt = lastThreadCreatedAt;
  }
  final String? searchName = jsonConvert.convert<String>(json['search_name']);
  if (searchName != null) {
    favBoardAndForumReturnList.searchName = searchName;
  }
  return favBoardAndForumReturnList;
}

Map<String, dynamic> $FavBoardAndForumReturnListToJson(
    FavBoardAndForumReturnList entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['bid'] = entity.bid;
  data['bid_str'] = entity.bidStr;
  data['fid'] = entity.fid;
  data['name'] = entity.name;
  data['city_name'] = entity.cityName;
  data['display_name'] = entity.displayName;
  data['domain'] = entity.domain;
  data['recom_type'] = entity.recomType;
  data['cover'] = entity.cover;
  data['user_name'] = entity.userName;
  data['uid'] = entity.uid;
  data['description'] = entity.description;
  data['subscribe'] = entity.subscribe;
  data['subscribe_num'] = entity.subscribeNum;
  data['visit_num'] = entity.visitNum;
  data['today_tid_num'] = entity.todayTidNum;
  data['announcement'] = entity.announcement;
  data['announce_status'] = entity.announceStatus;
  data['status'] = entity.status;
  data['city_id'] = entity.cityId;
  data['can_publish_thread'] = entity.canPublishThread;
  data['total_tid_num'] = entity.totalTidNum;
  data['lon'] = entity.lon;
  data['lat'] = entity.lat;
  data['address'] = entity.address;
  data['board_type'] = entity.boardType;
  data['frontdomain'] = entity.frontdomain;
  data['stick'] = entity.stick;
  data['verify'] = entity.verify;
  data['last_subject'] = entity.lastSubject;
  data['last_thread_created_at'] = entity.lastThreadCreatedAt;
  data['search_name'] = entity.searchName;
  return data;
}

extension FavBoardAndForumReturnListExtension on FavBoardAndForumReturnList {
  FavBoardAndForumReturnList copyWith({
    String? bid,
    String? bidStr,
    String? fid,
    String? name,
    String? cityName,
    String? displayName,
    String? domain,
    String? recomType,
    String? cover,
    String? userName,
    String? uid,
    String? description,
    bool? subscribe,
    String? subscribeNum,
    String? visitNum,
    String? todayTidNum,
    String? announcement,
    String? announceStatus,
    String? status,
    String? cityId,
    bool? canPublishThread,
    String? totalTidNum,
    String? lon,
    String? lat,
    String? address,
    String? boardType,
    String? frontdomain,
    String? stick,
    String? verify,
    String? lastSubject,
    String? lastThreadCreatedAt,
    String? searchName,
  }) {
    return FavBoardAndForumReturnList()
      ..bid = bid ?? this.bid
      ..bidStr = bidStr ?? this.bidStr
      ..fid = fid ?? this.fid
      ..name = name ?? this.name
      ..cityName = cityName ?? this.cityName
      ..displayName = displayName ?? this.displayName
      ..domain = domain ?? this.domain
      ..recomType = recomType ?? this.recomType
      ..cover = cover ?? this.cover
      ..userName = userName ?? this.userName
      ..uid = uid ?? this.uid
      ..description = description ?? this.description
      ..subscribe = subscribe ?? this.subscribe
      ..subscribeNum = subscribeNum ?? this.subscribeNum
      ..visitNum = visitNum ?? this.visitNum
      ..todayTidNum = todayTidNum ?? this.todayTidNum
      ..announcement = announcement ?? this.announcement
      ..announceStatus = announceStatus ?? this.announceStatus
      ..status = status ?? this.status
      ..cityId = cityId ?? this.cityId
      ..canPublishThread = canPublishThread ?? this.canPublishThread
      ..totalTidNum = totalTidNum ?? this.totalTidNum
      ..lon = lon ?? this.lon
      ..lat = lat ?? this.lat
      ..address = address ?? this.address
      ..boardType = boardType ?? this.boardType
      ..frontdomain = frontdomain ?? this.frontdomain
      ..stick = stick ?? this.stick
      ..verify = verify ?? this.verify
      ..lastSubject = lastSubject ?? this.lastSubject
      ..lastThreadCreatedAt = lastThreadCreatedAt ?? this.lastThreadCreatedAt
      ..searchName = searchName ?? this.searchName;
  }
}