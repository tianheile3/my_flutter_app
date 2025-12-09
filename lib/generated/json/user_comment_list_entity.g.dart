import 'package:flutter_study/generated/json/base/json_convert_content.dart';
import 'package:flutter_study/api/response/user_comment_list_entity.dart';

UserCommentListEntity $UserCommentListEntityFromJson(
    Map<String, dynamic> json) {
  final UserCommentListEntity userCommentListEntity = UserCommentListEntity();
  final String? code = jsonConvert.convert<String>(json['code']);
  if (code != null) {
    userCommentListEntity.code = code;
  }
  final String? message = jsonConvert.convert<String>(json['message']);
  if (message != null) {
    userCommentListEntity.message = message;
  }
  final List<UserCommentListComments>? comments = (json['comments'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<UserCommentListComments>(
          e) as UserCommentListComments).toList();
  if (comments != null) {
    userCommentListEntity.comments = comments;
  }
  final String? count = jsonConvert.convert<String>(json['count']);
  if (count != null) {
    userCommentListEntity.count = count;
  }
  final String? page = jsonConvert.convert<String>(json['page']);
  if (page != null) {
    userCommentListEntity.page = page;
  }
  final String? totalPage = jsonConvert.convert<String>(json['total_page']);
  if (totalPage != null) {
    userCommentListEntity.totalPage = totalPage;
  }
  final String? perPage = jsonConvert.convert<String>(json['per_page']);
  if (perPage != null) {
    userCommentListEntity.perPage = perPage;
  }
  return userCommentListEntity;
}

Map<String, dynamic> $UserCommentListEntityToJson(
    UserCommentListEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['code'] = entity.code;
  data['message'] = entity.message;
  data['comments'] = entity.comments.map((v) => v.toJson()).toList();
  data['count'] = entity.count;
  data['page'] = entity.page;
  data['total_page'] = entity.totalPage;
  data['per_page'] = entity.perPage;
  return data;
}

extension UserCommentListEntityExtension on UserCommentListEntity {
  UserCommentListEntity copyWith({
    String? code,
    String? message,
    List<UserCommentListComments>? comments,
    String? count,
    String? page,
    String? totalPage,
    String? perPage,
  }) {
    return UserCommentListEntity()
      ..code = code ?? this.code
      ..message = message ?? this.message
      ..comments = comments ?? this.comments
      ..count = count ?? this.count
      ..page = page ?? this.page
      ..totalPage = totalPage ?? this.totalPage
      ..perPage = perPage ?? this.perPage;
  }
}

UserCommentListComments $UserCommentListCommentsFromJson(
    Map<String, dynamic> json) {
  final UserCommentListComments userCommentListComments = UserCommentListComments();
  final UserCommentListCommentsBoardInfo? boardInfo = jsonConvert.convert<
      UserCommentListCommentsBoardInfo>(json['board_info']);
  if (boardInfo != null) {
    userCommentListComments.boardInfo = boardInfo;
  }
  final String? bid = jsonConvert.convert<String>(json['bid']);
  if (bid != null) {
    userCommentListComments.bid = bid;
  }
  final String? tid = jsonConvert.convert<String>(json['tid']);
  if (tid != null) {
    userCommentListComments.tid = tid;
  }
  final String? cost = jsonConvert.convert<String>(json['cost']);
  if (cost != null) {
    userCommentListComments.cost = cost;
  }
  final String? isCost = jsonConvert.convert<String>(json['is_cost']);
  if (isCost != null) {
    userCommentListComments.isCost = isCost;
  }
  final String? costImages = jsonConvert.convert<String>(json['cost_images']);
  if (costImages != null) {
    userCommentListComments.costImages = costImages;
  }
  final String? authorUid = jsonConvert.convert<String>(json['author_uid']);
  if (authorUid != null) {
    userCommentListComments.authorUid = authorUid;
  }
  final String? author = jsonConvert.convert<String>(json['author']);
  if (author != null) {
    userCommentListComments.author = author;
  }
  final String? access = jsonConvert.convert<String>(json['access']);
  if (access != null) {
    userCommentListComments.access = access;
  }
  final String? subject = jsonConvert.convert<String>(json['subject']);
  if (subject != null) {
    userCommentListComments.subject = subject;
  }
  final String? content = jsonConvert.convert<String>(json['content']);
  if (content != null) {
    userCommentListComments.content = content;
  }
  final String? postNum = jsonConvert.convert<String>(json['post_num']);
  if (postNum != null) {
    userCommentListComments.postNum = postNum;
  }
  final String? rateNum = jsonConvert.convert<String>(json['rate_num']);
  if (rateNum != null) {
    userCommentListComments.rateNum = rateNum;
  }
  final List<dynamic>? images = (json['images'] as List<dynamic>?)?.map(
          (e) => e).toList();
  if (images != null) {
    userCommentListComments.images = images;
  }
  final List<dynamic>? videos = (json['videos'] as List<dynamic>?)?.map(
          (e) => e).toList();
  if (videos != null) {
    userCommentListComments.videos = videos;
  }
  final String? avgAccess = jsonConvert.convert<String>(json['avg_access']);
  if (avgAccess != null) {
    userCommentListComments.avgAccess = avgAccess;
  }
  final String? avgPrice = jsonConvert.convert<String>(json['avg_price']);
  if (avgPrice != null) {
    userCommentListComments.avgPrice = avgPrice;
  }
  final String? commentLevel = jsonConvert.convert<String>(
      json['comment_level']);
  if (commentLevel != null) {
    userCommentListComments.commentLevel = commentLevel;
  }
  final String? createdAtStr = jsonConvert.convert<String>(
      json['created_at_str']);
  if (createdAtStr != null) {
    userCommentListComments.createdAtStr = createdAtStr;
  }
  final String? avatarUrl = jsonConvert.convert<String>(json['avatar_url']);
  if (avatarUrl != null) {
    userCommentListComments.avatarUrl = avatarUrl;
  }
  final String? isRated = jsonConvert.convert<String>(json['is_rated']);
  if (isRated != null) {
    userCommentListComments.isRated = isRated;
  }
  final String? imageNum = jsonConvert.convert<String>(json['image_num']);
  if (imageNum != null) {
    userCommentListComments.imageNum = imageNum;
  }
  final String? pid = jsonConvert.convert<String>(json['pid']);
  if (pid != null) {
    userCommentListComments.pid = pid;
  }
  final String? cityName = jsonConvert.convert<String>(json['city_name']);
  if (cityName != null) {
    userCommentListComments.cityName = cityName;
  }
  final String? status = jsonConvert.convert<String>(json['status']);
  if (status != null) {
    userCommentListComments.status = status;
  }
  return userCommentListComments;
}

Map<String, dynamic> $UserCommentListCommentsToJson(
    UserCommentListComments entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['board_info'] = entity.boardInfo.toJson();
  data['bid'] = entity.bid;
  data['tid'] = entity.tid;
  data['cost'] = entity.cost;
  data['is_cost'] = entity.isCost;
  data['cost_images'] = entity.costImages;
  data['author_uid'] = entity.authorUid;
  data['author'] = entity.author;
  data['access'] = entity.access;
  data['subject'] = entity.subject;
  data['content'] = entity.content;
  data['post_num'] = entity.postNum;
  data['rate_num'] = entity.rateNum;
  data['images'] = entity.images;
  data['videos'] = entity.videos;
  data['avg_access'] = entity.avgAccess;
  data['avg_price'] = entity.avgPrice;
  data['comment_level'] = entity.commentLevel;
  data['created_at_str'] = entity.createdAtStr;
  data['avatar_url'] = entity.avatarUrl;
  data['is_rated'] = entity.isRated;
  data['image_num'] = entity.imageNum;
  data['pid'] = entity.pid;
  data['city_name'] = entity.cityName;
  data['status'] = entity.status;
  return data;
}

extension UserCommentListCommentsExtension on UserCommentListComments {
  UserCommentListComments copyWith({
    UserCommentListCommentsBoardInfo? boardInfo,
    String? bid,
    String? tid,
    String? cost,
    String? isCost,
    String? costImages,
    String? authorUid,
    String? author,
    String? access,
    String? subject,
    String? content,
    String? postNum,
    String? rateNum,
    List<dynamic>? images,
    List<dynamic>? videos,
    String? avgAccess,
    String? avgPrice,
    String? commentLevel,
    String? createdAtStr,
    String? avatarUrl,
    String? isRated,
    String? imageNum,
    String? pid,
    String? cityName,
    String? status,
  }) {
    return UserCommentListComments()
      ..boardInfo = boardInfo ?? this.boardInfo
      ..bid = bid ?? this.bid
      ..tid = tid ?? this.tid
      ..cost = cost ?? this.cost
      ..isCost = isCost ?? this.isCost
      ..costImages = costImages ?? this.costImages
      ..authorUid = authorUid ?? this.authorUid
      ..author = author ?? this.author
      ..access = access ?? this.access
      ..subject = subject ?? this.subject
      ..content = content ?? this.content
      ..postNum = postNum ?? this.postNum
      ..rateNum = rateNum ?? this.rateNum
      ..images = images ?? this.images
      ..videos = videos ?? this.videos
      ..avgAccess = avgAccess ?? this.avgAccess
      ..avgPrice = avgPrice ?? this.avgPrice
      ..commentLevel = commentLevel ?? this.commentLevel
      ..createdAtStr = createdAtStr ?? this.createdAtStr
      ..avatarUrl = avatarUrl ?? this.avatarUrl
      ..isRated = isRated ?? this.isRated
      ..imageNum = imageNum ?? this.imageNum
      ..pid = pid ?? this.pid
      ..cityName = cityName ?? this.cityName
      ..status = status ?? this.status;
  }
}

UserCommentListCommentsBoardInfo $UserCommentListCommentsBoardInfoFromJson(
    Map<String, dynamic> json) {
  final UserCommentListCommentsBoardInfo userCommentListCommentsBoardInfo = UserCommentListCommentsBoardInfo();
  final String? bid = jsonConvert.convert<String>(json['bid']);
  if (bid != null) {
    userCommentListCommentsBoardInfo.bid = bid;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    userCommentListCommentsBoardInfo.name = name;
  }
  final String? description = jsonConvert.convert<String>(json['description']);
  if (description != null) {
    userCommentListCommentsBoardInfo.description = description;
  }
  final String? boardType = jsonConvert.convert<String>(json['board_type']);
  if (boardType != null) {
    userCommentListCommentsBoardInfo.boardType = boardType;
  }
  final String? categoryId = jsonConvert.convert<String>(json['category_id']);
  if (categoryId != null) {
    userCommentListCommentsBoardInfo.categoryId = categoryId;
  }
  final String? categoryName = jsonConvert.convert<String>(
      json['category_name']);
  if (categoryName != null) {
    userCommentListCommentsBoardInfo.categoryName = categoryName;
  }
  final List<dynamic>? categoryNameList = (json['category_name_list'] as List<
      dynamic>?)?.map(
          (e) => e).toList();
  if (categoryNameList != null) {
    userCommentListCommentsBoardInfo.categoryNameList = categoryNameList;
  }
  final List<dynamic>? categoryList = (json['category_list'] as List<dynamic>?)
      ?.map(
          (e) => e)
      .toList();
  if (categoryList != null) {
    userCommentListCommentsBoardInfo.categoryList = categoryList;
  }
  final String? threadCount = jsonConvert.convert<String>(json['thread_count']);
  if (threadCount != null) {
    userCommentListCommentsBoardInfo.threadCount = threadCount;
  }
  final String? todayThreadCount = jsonConvert.convert<String>(
      json['today_thread_count']);
  if (todayThreadCount != null) {
    userCommentListCommentsBoardInfo.todayThreadCount = todayThreadCount;
  }
  final String? subscribeNum = jsonConvert.convert<String>(
      json['subscribe_num']);
  if (subscribeNum != null) {
    userCommentListCommentsBoardInfo.subscribeNum = subscribeNum;
  }
  final String? visitNum = jsonConvert.convert<String>(json['visit_num']);
  if (visitNum != null) {
    userCommentListCommentsBoardInfo.visitNum = visitNum;
  }
  final String? cover = jsonConvert.convert<String>(json['cover']);
  if (cover != null) {
    userCommentListCommentsBoardInfo.cover = cover;
  }
  final String? coverUrl = jsonConvert.convert<String>(json['cover_url']);
  if (coverUrl != null) {
    userCommentListCommentsBoardInfo.coverUrl = coverUrl;
  }
  final String? status = jsonConvert.convert<String>(json['status']);
  if (status != null) {
    userCommentListCommentsBoardInfo.status = status;
  }
  final String? uid = jsonConvert.convert<String>(json['uid']);
  if (uid != null) {
    userCommentListCommentsBoardInfo.uid = uid;
  }
  final String? username = jsonConvert.convert<String>(json['username']);
  if (username != null) {
    userCommentListCommentsBoardInfo.username = username;
  }
  final String? strBid = jsonConvert.convert<String>(json['str_bid']);
  if (strBid != null) {
    userCommentListCommentsBoardInfo.strBid = strBid;
  }
  final String? displayOrder = jsonConvert.convert<String>(
      json['display_order']);
  if (displayOrder != null) {
    userCommentListCommentsBoardInfo.displayOrder = displayOrder;
  }
  final String? picUrls = jsonConvert.convert<String>(json['pic_urls']);
  if (picUrls != null) {
    userCommentListCommentsBoardInfo.picUrls = picUrls;
  }
  final List<
      UserCommentListCommentsBoardInfoPicUrlsList>? picUrlsList = (json['pic_urls_list'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<UserCommentListCommentsBoardInfoPicUrlsList>(
          e) as UserCommentListCommentsBoardInfoPicUrlsList).toList();
  if (picUrlsList != null) {
    userCommentListCommentsBoardInfo.picUrlsList = picUrlsList;
  }
  final String? picFlag = jsonConvert.convert<String>(json['pic_flag']);
  if (picFlag != null) {
    userCommentListCommentsBoardInfo.picFlag = picFlag;
  }
  final String? indexFlag = jsonConvert.convert<String>(json['index_flag']);
  if (indexFlag != null) {
    userCommentListCommentsBoardInfo.indexFlag = indexFlag;
  }
  final String? indexType = jsonConvert.convert<String>(json['index_type']);
  if (indexType != null) {
    userCommentListCommentsBoardInfo.indexType = indexType;
  }
  final String? keyWords = jsonConvert.convert<String>(json['key_words']);
  if (keyWords != null) {
    userCommentListCommentsBoardInfo.keyWords = keyWords;
  }
  final String? background = jsonConvert.convert<String>(json['background']);
  if (background != null) {
    userCommentListCommentsBoardInfo.background = background;
  }
  final String? showType = jsonConvert.convert<String>(json['show_type']);
  if (showType != null) {
    userCommentListCommentsBoardInfo.showType = showType;
  }
  final String? likeNum = jsonConvert.convert<String>(json['like_num']);
  if (likeNum != null) {
    userCommentListCommentsBoardInfo.likeNum = likeNum;
  }
  final String? useCover = jsonConvert.convert<String>(json['use_cover']);
  if (useCover != null) {
    userCommentListCommentsBoardInfo.useCover = useCover;
  }
  final String? liveness = jsonConvert.convert<String>(json['liveness']);
  if (liveness != null) {
    userCommentListCommentsBoardInfo.liveness = liveness;
  }
  final String? useTarget = jsonConvert.convert<String>(json['use_target']);
  if (useTarget != null) {
    userCommentListCommentsBoardInfo.useTarget = useTarget;
  }
  final String? cityId = jsonConvert.convert<String>(json['city_id']);
  if (cityId != null) {
    userCommentListCommentsBoardInfo.cityId = cityId;
  }
  final String? longitude = jsonConvert.convert<String>(json['longitude']);
  if (longitude != null) {
    userCommentListCommentsBoardInfo.longitude = longitude;
  }
  final String? latitude = jsonConvert.convert<String>(json['latitude']);
  if (latitude != null) {
    userCommentListCommentsBoardInfo.latitude = latitude;
  }
  final String? address = jsonConvert.convert<String>(json['address']);
  if (address != null) {
    userCommentListCommentsBoardInfo.address = address;
  }
  final String? affiche = jsonConvert.convert<String>(json['affiche']);
  if (affiche != null) {
    userCommentListCommentsBoardInfo.affiche = affiche;
  }
  final String? afficheStatus = jsonConvert.convert<String>(
      json['affiche_status']);
  if (afficheStatus != null) {
    userCommentListCommentsBoardInfo.afficheStatus = afficheStatus;
  }
  final String? noticeContent = jsonConvert.convert<String>(
      json['notice_content']);
  if (noticeContent != null) {
    userCommentListCommentsBoardInfo.noticeContent = noticeContent;
  }
  final String? verify = jsonConvert.convert<String>(json['verify']);
  if (verify != null) {
    userCommentListCommentsBoardInfo.verify = verify;
  }
  final String? bnKeywordDisplay = jsonConvert.convert<String>(
      json['bn_keyword_display']);
  if (bnKeywordDisplay != null) {
    userCommentListCommentsBoardInfo.bnKeywordDisplay = bnKeywordDisplay;
  }
  final bool? isChosen = jsonConvert.convert<bool>(json['is_chosen']);
  if (isChosen != null) {
    userCommentListCommentsBoardInfo.isChosen = isChosen;
  }
  final bool? canRead = jsonConvert.convert<bool>(json['can_read']);
  if (canRead != null) {
    userCommentListCommentsBoardInfo.canRead = canRead;
  }
  final String? domain = jsonConvert.convert<String>(json['domain']);
  if (domain != null) {
    userCommentListCommentsBoardInfo.domain = domain;
  }
  final String? tableName = jsonConvert.convert<String>(json['table_name']);
  if (tableName != null) {
    userCommentListCommentsBoardInfo.tableName = tableName;
  }
  final String? lastThreadGatherAt = jsonConvert.convert<String>(
      json['last_thread_gather_at']);
  if (lastThreadGatherAt != null) {
    userCommentListCommentsBoardInfo.lastThreadGatherAt = lastThreadGatherAt;
  }
  final String? submitType = jsonConvert.convert<String>(json['submit_type']);
  if (submitType != null) {
    userCommentListCommentsBoardInfo.submitType = submitType;
  }
  final String? hotDegree = jsonConvert.convert<String>(json['hot_degree']);
  if (hotDegree != null) {
    userCommentListCommentsBoardInfo.hotDegree = hotDegree;
  }
  final String? tidUpdateFrequency = jsonConvert.convert<String>(
      json['tid_update_frequency']);
  if (tidUpdateFrequency != null) {
    userCommentListCommentsBoardInfo.tidUpdateFrequency = tidUpdateFrequency;
  }
  final String? introTid = jsonConvert.convert<String>(json['intro_tid']);
  if (introTid != null) {
    userCommentListCommentsBoardInfo.introTid = introTid;
  }
  final String? bestTenShop = jsonConvert.convert<String>(
      json['best_ten_shop']);
  if (bestTenShop != null) {
    userCommentListCommentsBoardInfo.bestTenShop = bestTenShop;
  }
  final String? bestTenShopTitle = jsonConvert.convert<String>(
      json['best_ten_shop_title']);
  if (bestTenShopTitle != null) {
    userCommentListCommentsBoardInfo.bestTenShopTitle = bestTenShopTitle;
  }
  final String? businessCircleName = jsonConvert.convert<String>(
      json['business_circle_name']);
  if (businessCircleName != null) {
    userCommentListCommentsBoardInfo.businessCircleName = businessCircleName;
  }
  final String? couponNum = jsonConvert.convert<String>(json['coupon_num']);
  if (couponNum != null) {
    userCommentListCommentsBoardInfo.couponNum = couponNum;
  }
  final String? createdAt = jsonConvert.convert<String>(json['created_at']);
  if (createdAt != null) {
    userCommentListCommentsBoardInfo.createdAt = createdAt;
  }
  final String? updatedAt = jsonConvert.convert<String>(json['updated_at']);
  if (updatedAt != null) {
    userCommentListCommentsBoardInfo.updatedAt = updatedAt;
  }
  return userCommentListCommentsBoardInfo;
}

Map<String, dynamic> $UserCommentListCommentsBoardInfoToJson(
    UserCommentListCommentsBoardInfo entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['bid'] = entity.bid;
  data['name'] = entity.name;
  data['description'] = entity.description;
  data['board_type'] = entity.boardType;
  data['category_id'] = entity.categoryId;
  data['category_name'] = entity.categoryName;
  data['category_name_list'] = entity.categoryNameList;
  data['category_list'] = entity.categoryList;
  data['thread_count'] = entity.threadCount;
  data['today_thread_count'] = entity.todayThreadCount;
  data['subscribe_num'] = entity.subscribeNum;
  data['visit_num'] = entity.visitNum;
  data['cover'] = entity.cover;
  data['cover_url'] = entity.coverUrl;
  data['status'] = entity.status;
  data['uid'] = entity.uid;
  data['username'] = entity.username;
  data['str_bid'] = entity.strBid;
  data['display_order'] = entity.displayOrder;
  data['pic_urls'] = entity.picUrls;
  data['pic_urls_list'] = entity.picUrlsList.map((v) => v.toJson()).toList();
  data['pic_flag'] = entity.picFlag;
  data['index_flag'] = entity.indexFlag;
  data['index_type'] = entity.indexType;
  data['key_words'] = entity.keyWords;
  data['background'] = entity.background;
  data['show_type'] = entity.showType;
  data['like_num'] = entity.likeNum;
  data['use_cover'] = entity.useCover;
  data['liveness'] = entity.liveness;
  data['use_target'] = entity.useTarget;
  data['city_id'] = entity.cityId;
  data['longitude'] = entity.longitude;
  data['latitude'] = entity.latitude;
  data['address'] = entity.address;
  data['affiche'] = entity.affiche;
  data['affiche_status'] = entity.afficheStatus;
  data['notice_content'] = entity.noticeContent;
  data['verify'] = entity.verify;
  data['bn_keyword_display'] = entity.bnKeywordDisplay;
  data['is_chosen'] = entity.isChosen;
  data['can_read'] = entity.canRead;
  data['domain'] = entity.domain;
  data['table_name'] = entity.tableName;
  data['last_thread_gather_at'] = entity.lastThreadGatherAt;
  data['submit_type'] = entity.submitType;
  data['hot_degree'] = entity.hotDegree;
  data['tid_update_frequency'] = entity.tidUpdateFrequency;
  data['intro_tid'] = entity.introTid;
  data['best_ten_shop'] = entity.bestTenShop;
  data['best_ten_shop_title'] = entity.bestTenShopTitle;
  data['business_circle_name'] = entity.businessCircleName;
  data['coupon_num'] = entity.couponNum;
  data['created_at'] = entity.createdAt;
  data['updated_at'] = entity.updatedAt;
  return data;
}

extension UserCommentListCommentsBoardInfoExtension on UserCommentListCommentsBoardInfo {
  UserCommentListCommentsBoardInfo copyWith({
    String? bid,
    String? name,
    String? description,
    String? boardType,
    String? categoryId,
    String? categoryName,
    List<dynamic>? categoryNameList,
    List<dynamic>? categoryList,
    String? threadCount,
    String? todayThreadCount,
    String? subscribeNum,
    String? visitNum,
    String? cover,
    String? coverUrl,
    String? status,
    String? uid,
    String? username,
    String? strBid,
    String? displayOrder,
    String? picUrls,
    List<UserCommentListCommentsBoardInfoPicUrlsList>? picUrlsList,
    String? picFlag,
    String? indexFlag,
    String? indexType,
    String? keyWords,
    String? background,
    String? showType,
    String? likeNum,
    String? useCover,
    String? liveness,
    String? useTarget,
    String? cityId,
    String? longitude,
    String? latitude,
    String? address,
    String? affiche,
    String? afficheStatus,
    String? noticeContent,
    String? verify,
    String? bnKeywordDisplay,
    bool? isChosen,
    bool? canRead,
    String? domain,
    String? tableName,
    String? lastThreadGatherAt,
    String? submitType,
    String? hotDegree,
    String? tidUpdateFrequency,
    String? introTid,
    String? bestTenShop,
    String? bestTenShopTitle,
    String? businessCircleName,
    String? couponNum,
    String? createdAt,
    String? updatedAt,
  }) {
    return UserCommentListCommentsBoardInfo()
      ..bid = bid ?? this.bid
      ..name = name ?? this.name
      ..description = description ?? this.description
      ..boardType = boardType ?? this.boardType
      ..categoryId = categoryId ?? this.categoryId
      ..categoryName = categoryName ?? this.categoryName
      ..categoryNameList = categoryNameList ?? this.categoryNameList
      ..categoryList = categoryList ?? this.categoryList
      ..threadCount = threadCount ?? this.threadCount
      ..todayThreadCount = todayThreadCount ?? this.todayThreadCount
      ..subscribeNum = subscribeNum ?? this.subscribeNum
      ..visitNum = visitNum ?? this.visitNum
      ..cover = cover ?? this.cover
      ..coverUrl = coverUrl ?? this.coverUrl
      ..status = status ?? this.status
      ..uid = uid ?? this.uid
      ..username = username ?? this.username
      ..strBid = strBid ?? this.strBid
      ..displayOrder = displayOrder ?? this.displayOrder
      ..picUrls = picUrls ?? this.picUrls
      ..picUrlsList = picUrlsList ?? this.picUrlsList
      ..picFlag = picFlag ?? this.picFlag
      ..indexFlag = indexFlag ?? this.indexFlag
      ..indexType = indexType ?? this.indexType
      ..keyWords = keyWords ?? this.keyWords
      ..background = background ?? this.background
      ..showType = showType ?? this.showType
      ..likeNum = likeNum ?? this.likeNum
      ..useCover = useCover ?? this.useCover
      ..liveness = liveness ?? this.liveness
      ..useTarget = useTarget ?? this.useTarget
      ..cityId = cityId ?? this.cityId
      ..longitude = longitude ?? this.longitude
      ..latitude = latitude ?? this.latitude
      ..address = address ?? this.address
      ..affiche = affiche ?? this.affiche
      ..afficheStatus = afficheStatus ?? this.afficheStatus
      ..noticeContent = noticeContent ?? this.noticeContent
      ..verify = verify ?? this.verify
      ..bnKeywordDisplay = bnKeywordDisplay ?? this.bnKeywordDisplay
      ..isChosen = isChosen ?? this.isChosen
      ..canRead = canRead ?? this.canRead
      ..domain = domain ?? this.domain
      ..tableName = tableName ?? this.tableName
      ..lastThreadGatherAt = lastThreadGatherAt ?? this.lastThreadGatherAt
      ..submitType = submitType ?? this.submitType
      ..hotDegree = hotDegree ?? this.hotDegree
      ..tidUpdateFrequency = tidUpdateFrequency ?? this.tidUpdateFrequency
      ..introTid = introTid ?? this.introTid
      ..bestTenShop = bestTenShop ?? this.bestTenShop
      ..bestTenShopTitle = bestTenShopTitle ?? this.bestTenShopTitle
      ..businessCircleName = businessCircleName ?? this.businessCircleName
      ..couponNum = couponNum ?? this.couponNum
      ..createdAt = createdAt ?? this.createdAt
      ..updatedAt = updatedAt ?? this.updatedAt;
  }
}

UserCommentListCommentsBoardInfoPicUrlsList $UserCommentListCommentsBoardInfoPicUrlsListFromJson(
    Map<String, dynamic> json) {
  final UserCommentListCommentsBoardInfoPicUrlsList userCommentListCommentsBoardInfoPicUrlsList = UserCommentListCommentsBoardInfoPicUrlsList();
  final String? btid = jsonConvert.convert<String>(json['btid']);
  if (btid != null) {
    userCommentListCommentsBoardInfoPicUrlsList.btid = btid;
  }
  final String? bid = jsonConvert.convert<String>(json['bid']);
  if (bid != null) {
    userCommentListCommentsBoardInfoPicUrlsList.bid = bid;
  }
  final String? tid = jsonConvert.convert<String>(json['tid']);
  if (tid != null) {
    userCommentListCommentsBoardInfoPicUrlsList.tid = tid;
  }
  final String? url = jsonConvert.convert<String>(json['url']);
  if (url != null) {
    userCommentListCommentsBoardInfoPicUrlsList.url = url;
  }
  return userCommentListCommentsBoardInfoPicUrlsList;
}

Map<String, dynamic> $UserCommentListCommentsBoardInfoPicUrlsListToJson(
    UserCommentListCommentsBoardInfoPicUrlsList entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['btid'] = entity.btid;
  data['bid'] = entity.bid;
  data['tid'] = entity.tid;
  data['url'] = entity.url;
  return data;
}

extension UserCommentListCommentsBoardInfoPicUrlsListExtension on UserCommentListCommentsBoardInfoPicUrlsList {
  UserCommentListCommentsBoardInfoPicUrlsList copyWith({
    String? btid,
    String? bid,
    String? tid,
    String? url,
  }) {
    return UserCommentListCommentsBoardInfoPicUrlsList()
      ..btid = btid ?? this.btid
      ..bid = bid ?? this.bid
      ..tid = tid ?? this.tid
      ..url = url ?? this.url;
  }
}