import 'package:flutter_study/generated/json/base/json_convert_content.dart';
import 'package:flutter_study/api/response/record_list_entity.dart';

RecordListEntity $RecordListEntityFromJson(Map<String, dynamic> json) {
  final RecordListEntity recordListEntity = RecordListEntity();
  final int? code = jsonConvert.convert<int>(json['code']);
  if (code != null) {
    recordListEntity.code = code;
  }
  final String? message = jsonConvert.convert<String>(json['message']);
  if (message != null) {
    recordListEntity.message = message;
  }
  final RecordListData? data = jsonConvert.convert<RecordListData>(
      json['data']);
  if (data != null) {
    recordListEntity.data = data;
  }
  final int? timestamp = jsonConvert.convert<int>(json['timestamp']);
  if (timestamp != null) {
    recordListEntity.timestamp = timestamp;
  }
  return recordListEntity;
}

Map<String, dynamic> $RecordListEntityToJson(RecordListEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['code'] = entity.code;
  data['message'] = entity.message;
  data['data'] = entity.data.toJson();
  data['timestamp'] = entity.timestamp;
  return data;
}

extension RecordListEntityExtension on RecordListEntity {
  RecordListEntity copyWith({
    int? code,
    String? message,
    RecordListData? data,
    int? timestamp,
  }) {
    return RecordListEntity()
      ..code = code ?? this.code
      ..message = message ?? this.message
      ..data = data ?? this.data
      ..timestamp = timestamp ?? this.timestamp;
  }
}

RecordListData $RecordListDataFromJson(Map<String, dynamic> json) {
  final RecordListData recordListData = RecordListData();
  final int? perPage = jsonConvert.convert<int>(json['perPage']);
  if (perPage != null) {
    recordListData.perPage = perPage;
  }
  final int? currentPage = jsonConvert.convert<int>(json['currentPage']);
  if (currentPage != null) {
    recordListData.currentPage = currentPage;
  }
  final int? count = jsonConvert.convert<int>(json['count']);
  if (count != null) {
    recordListData.count = count;
  }
  final int? maxPage = jsonConvert.convert<int>(json['maxPage']);
  if (maxPage != null) {
    recordListData.maxPage = maxPage;
  }
  final List<RecordListDataItems>? items = (json['items'] as List<dynamic>?)
      ?.map(
          (e) =>
      jsonConvert.convert<RecordListDataItems>(e) as RecordListDataItems)
      .toList();
  if (items != null) {
    recordListData.items = items;
  }
  final int? startIndex = jsonConvert.convert<int>(json['startIndex']);
  if (startIndex != null) {
    recordListData.startIndex = startIndex;
  }
  return recordListData;
}

Map<String, dynamic> $RecordListDataToJson(RecordListData entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['perPage'] = entity.perPage;
  data['currentPage'] = entity.currentPage;
  data['count'] = entity.count;
  data['maxPage'] = entity.maxPage;
  data['items'] = entity.items.map((v) => v.toJson()).toList();
  data['startIndex'] = entity.startIndex;
  return data;
}

extension RecordListDataExtension on RecordListData {
  RecordListData copyWith({
    int? perPage,
    int? currentPage,
    int? count,
    int? maxPage,
    List<RecordListDataItems>? items,
    int? startIndex,
  }) {
    return RecordListData()
      ..perPage = perPage ?? this.perPage
      ..currentPage = currentPage ?? this.currentPage
      ..count = count ?? this.count
      ..maxPage = maxPage ?? this.maxPage
      ..items = items ?? this.items
      ..startIndex = startIndex ?? this.startIndex;
  }
}

RecordListDataItems $RecordListDataItemsFromJson(Map<String, dynamic> json) {
  final RecordListDataItems recordListDataItems = RecordListDataItems();
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    recordListDataItems.id = id;
  }
  final String? title = jsonConvert.convert<String>(json['title']);
  if (title != null) {
    recordListDataItems.title = title;
  }
  final String? description = jsonConvert.convert<String>(json['description']);
  if (description != null) {
    recordListDataItems.description = description;
  }
  final int? uid = jsonConvert.convert<int>(json['uid']);
  if (uid != null) {
    recordListDataItems.uid = uid;
  }
  final String? username = jsonConvert.convert<String>(json['username']);
  if (username != null) {
    recordListDataItems.username = username;
  }
  final String? mainImgUrl = jsonConvert.convert<String>(json['mainImgUrl']);
  if (mainImgUrl != null) {
    recordListDataItems.mainImgUrl = mainImgUrl;
  }
  final int? price = jsonConvert.convert<int>(json['price']);
  if (price != null) {
    recordListDataItems.price = price;
  }
  final int? originPrice = jsonConvert.convert<int>(json['originPrice']);
  if (originPrice != null) {
    recordListDataItems.originPrice = originPrice;
  }
  final String? region = jsonConvert.convert<String>(json['region']);
  if (region != null) {
    recordListDataItems.region = region;
  }
  final String? community = jsonConvert.convert<String>(json['community']);
  if (community != null) {
    recordListDataItems.community = community;
  }
  final String? publishName = jsonConvert.convert<String>(json['publishName']);
  if (publishName != null) {
    recordListDataItems.publishName = publishName;
  }
  final String? publishPhone = jsonConvert.convert<String>(
      json['publishPhone']);
  if (publishPhone != null) {
    recordListDataItems.publishPhone = publishPhone;
  }
  final String? tags = jsonConvert.convert<String>(json['tags']);
  if (tags != null) {
    recordListDataItems.tags = tags;
  }
  final int? catType = jsonConvert.convert<int>(json['catType']);
  if (catType != null) {
    recordListDataItems.catType = catType;
  }
  final int? recordType = jsonConvert.convert<int>(json['recordType']);
  if (recordType != null) {
    recordListDataItems.recordType = recordType;
  }
  final int? infoType = jsonConvert.convert<int>(json['infoType']);
  if (infoType != null) {
    recordListDataItems.infoType = infoType;
  }
  final String? refreshAt = jsonConvert.convert<String>(json['refreshAt']);
  if (refreshAt != null) {
    recordListDataItems.refreshAt = refreshAt;
  }
  final String? createdAt = jsonConvert.convert<String>(json['createdAt']);
  if (createdAt != null) {
    recordListDataItems.createdAt = createdAt;
  }
  final int? houseType = jsonConvert.convert<int>(json['houseType']);
  if (houseType != null) {
    recordListDataItems.houseType = houseType;
  }
  final int? stick = jsonConvert.convert<int>(json['stick']);
  if (stick != null) {
    recordListDataItems.stick = stick;
  }
  final int? categoryStick = jsonConvert.convert<int>(json['categoryStick']);
  if (categoryStick != null) {
    recordListDataItems.categoryStick = categoryStick;
  }
  final int? autoStick = jsonConvert.convert<int>(json['autoStick']);
  if (autoStick != null) {
    recordListDataItems.autoStick = autoStick;
  }
  final RecordListDataItemsJobRecord? jobRecord = jsonConvert.convert<
      RecordListDataItemsJobRecord>(json['jobRecord']);
  if (jobRecord != null) {
    recordListDataItems.jobRecord = jobRecord;
  }
  final int? nowTime = jsonConvert.convert<int>(json['nowTime']);
  if (nowTime != null) {
    recordListDataItems.nowTime = nowTime;
  }
  final int? ifPass = jsonConvert.convert<int>(json['ifPass']);
  if (ifPass != null) {
    recordListDataItems.ifPass = ifPass;
  }
  final String? showTag = jsonConvert.convert<String>(json['showTag']);
  if (showTag != null) {
    recordListDataItems.showTag = showTag;
  }
  final String? detailUrl = jsonConvert.convert<String>(json['detailUrl']);
  if (detailUrl != null) {
    recordListDataItems.detailUrl = detailUrl;
  }
  final int? cityId = jsonConvert.convert<int>(json['cityId']);
  if (cityId != null) {
    recordListDataItems.cityId = cityId;
  }
  return recordListDataItems;
}

Map<String, dynamic> $RecordListDataItemsToJson(RecordListDataItems entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['title'] = entity.title;
  data['description'] = entity.description;
  data['uid'] = entity.uid;
  data['username'] = entity.username;
  data['mainImgUrl'] = entity.mainImgUrl;
  data['price'] = entity.price;
  data['originPrice'] = entity.originPrice;
  data['region'] = entity.region;
  data['community'] = entity.community;
  data['publishName'] = entity.publishName;
  data['publishPhone'] = entity.publishPhone;
  data['tags'] = entity.tags;
  data['catType'] = entity.catType;
  data['recordType'] = entity.recordType;
  data['infoType'] = entity.infoType;
  data['refreshAt'] = entity.refreshAt;
  data['createdAt'] = entity.createdAt;
  data['houseType'] = entity.houseType;
  data['stick'] = entity.stick;
  data['categoryStick'] = entity.categoryStick;
  data['autoStick'] = entity.autoStick;
  data['jobRecord'] = entity.jobRecord?.toJson();
  data['nowTime'] = entity.nowTime;
  data['ifPass'] = entity.ifPass;
  data['showTag'] = entity.showTag;
  data['detailUrl'] = entity.detailUrl;
  data['cityId'] = entity.cityId;
  return data;
}

extension RecordListDataItemsExtension on RecordListDataItems {
  RecordListDataItems copyWith({
    int? id,
    String? title,
    String? description,
    int? uid,
    String? username,
    String? mainImgUrl,
    int? price,
    int? originPrice,
    String? region,
    String? community,
    String? publishName,
    String? publishPhone,
    String? tags,
    int? catType,
    int? recordType,
    int? infoType,
    String? refreshAt,
    String? createdAt,
    int? houseType,
    int? stick,
    int? categoryStick,
    int? autoStick,
    RecordListDataItemsJobRecord? jobRecord,
    int? nowTime,
    int? ifPass,
    String? showTag,
    String? detailUrl,
    int? cityId,
  }) {
    return RecordListDataItems()
      ..id = id ?? this.id
      ..title = title ?? this.title
      ..description = description ?? this.description
      ..uid = uid ?? this.uid
      ..username = username ?? this.username
      ..mainImgUrl = mainImgUrl ?? this.mainImgUrl
      ..price = price ?? this.price
      ..originPrice = originPrice ?? this.originPrice
      ..region = region ?? this.region
      ..community = community ?? this.community
      ..publishName = publishName ?? this.publishName
      ..publishPhone = publishPhone ?? this.publishPhone
      ..tags = tags ?? this.tags
      ..catType = catType ?? this.catType
      ..recordType = recordType ?? this.recordType
      ..infoType = infoType ?? this.infoType
      ..refreshAt = refreshAt ?? this.refreshAt
      ..createdAt = createdAt ?? this.createdAt
      ..houseType = houseType ?? this.houseType
      ..stick = stick ?? this.stick
      ..categoryStick = categoryStick ?? this.categoryStick
      ..autoStick = autoStick ?? this.autoStick
      ..jobRecord = jobRecord ?? this.jobRecord
      ..nowTime = nowTime ?? this.nowTime
      ..ifPass = ifPass ?? this.ifPass
      ..showTag = showTag ?? this.showTag
      ..detailUrl = detailUrl ?? this.detailUrl
      ..cityId = cityId ?? this.cityId;
  }
}

RecordListDataItemsJobRecord $RecordListDataItemsJobRecordFromJson(
    Map<String, dynamic> json) {
  final RecordListDataItemsJobRecord recordListDataItemsJobRecord = RecordListDataItemsJobRecord();
  final int? recordId = jsonConvert.convert<int>(json['recordId']);
  if (recordId != null) {
    recordListDataItemsJobRecord.recordId = recordId;
  }
  final int? cityId = jsonConvert.convert<int>(json['cityId']);
  if (cityId != null) {
    recordListDataItemsJobRecord.cityId = cityId;
  }
  final int? areaId = jsonConvert.convert<int>(json['areaId']);
  if (areaId != null) {
    recordListDataItemsJobRecord.areaId = areaId;
  }
  final String? areaName = jsonConvert.convert<String>(json['areaName']);
  if (areaName != null) {
    recordListDataItemsJobRecord.areaName = areaName;
  }
  final int? uid = jsonConvert.convert<int>(json['uid']);
  if (uid != null) {
    recordListDataItemsJobRecord.uid = uid;
  }
  final String? userName = jsonConvert.convert<String>(json['userName']);
  if (userName != null) {
    recordListDataItemsJobRecord.userName = userName;
  }
  final int? parentJobType = jsonConvert.convert<int>(json['parentJobType']);
  if (parentJobType != null) {
    recordListDataItemsJobRecord.parentJobType = parentJobType;
  }
  final int? jobType = jsonConvert.convert<int>(json['jobType']);
  if (jobType != null) {
    recordListDataItemsJobRecord.jobType = jobType;
  }
  final String? parentJobTypeStr = jsonConvert.convert<String>(
      json['parentJobTypeStr']);
  if (parentJobTypeStr != null) {
    recordListDataItemsJobRecord.parentJobTypeStr = parentJobTypeStr;
  }
  final String? jobName = jsonConvert.convert<String>(json['jobName']);
  if (jobName != null) {
    recordListDataItemsJobRecord.jobName = jobName;
  }
  final String? jobAddress = jsonConvert.convert<String>(json['jobAddress']);
  if (jobAddress != null) {
    recordListDataItemsJobRecord.jobAddress = jobAddress;
  }
  final String? jobCompany = jsonConvert.convert<String>(json['jobCompany']);
  if (jobCompany != null) {
    recordListDataItemsJobRecord.jobCompany = jobCompany;
  }
  final String? showPay = jsonConvert.convert<String>(json['showPay']);
  if (showPay != null) {
    recordListDataItemsJobRecord.showPay = showPay;
  }
  final int? eduRequire = jsonConvert.convert<int>(json['eduRequire']);
  if (eduRequire != null) {
    recordListDataItemsJobRecord.eduRequire = eduRequire;
  }
  final String? eduRequireStr = jsonConvert.convert<String>(
      json['eduRequireStr']);
  if (eduRequireStr != null) {
    recordListDataItemsJobRecord.eduRequireStr = eduRequireStr;
  }
  final int? jobTime = jsonConvert.convert<int>(json['jobTime']);
  if (jobTime != null) {
    recordListDataItemsJobRecord.jobTime = jobTime;
  }
  final String? jobTimeStr = jsonConvert.convert<String>(json['jobTimeStr']);
  if (jobTimeStr != null) {
    recordListDataItemsJobRecord.jobTimeStr = jobTimeStr;
  }
  final String? jobDesc = jsonConvert.convert<String>(json['jobDesc']);
  if (jobDesc != null) {
    recordListDataItemsJobRecord.jobDesc = jobDesc;
  }
  final List<String>? jobTagList = (json['jobTagList'] as List<dynamic>?)?.map(
          (e) => jsonConvert.convert<String>(e) as String).toList();
  if (jobTagList != null) {
    recordListDataItemsJobRecord.jobTagList = jobTagList;
  }
  final int? stick = jsonConvert.convert<int>(json['stick']);
  if (stick != null) {
    recordListDataItemsJobRecord.stick = stick;
  }
  final String? createdAt = jsonConvert.convert<String>(json['createdAt']);
  if (createdAt != null) {
    recordListDataItemsJobRecord.createdAt = createdAt;
  }
  final String? refreshAt = jsonConvert.convert<String>(json['refreshAt']);
  if (refreshAt != null) {
    recordListDataItemsJobRecord.refreshAt = refreshAt;
  }
  final int? nowTime = jsonConvert.convert<int>(json['nowTime']);
  if (nowTime != null) {
    recordListDataItemsJobRecord.nowTime = nowTime;
  }
  final String? jobTypeStr = jsonConvert.convert<String>(json['jobTypeStr']);
  if (jobTypeStr != null) {
    recordListDataItemsJobRecord.jobTypeStr = jobTypeStr;
  }
  return recordListDataItemsJobRecord;
}

Map<String, dynamic> $RecordListDataItemsJobRecordToJson(
    RecordListDataItemsJobRecord entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['recordId'] = entity.recordId;
  data['cityId'] = entity.cityId;
  data['areaId'] = entity.areaId;
  data['areaName'] = entity.areaName;
  data['uid'] = entity.uid;
  data['userName'] = entity.userName;
  data['parentJobType'] = entity.parentJobType;
  data['jobType'] = entity.jobType;
  data['parentJobTypeStr'] = entity.parentJobTypeStr;
  data['jobName'] = entity.jobName;
  data['jobAddress'] = entity.jobAddress;
  data['jobCompany'] = entity.jobCompany;
  data['showPay'] = entity.showPay;
  data['eduRequire'] = entity.eduRequire;
  data['eduRequireStr'] = entity.eduRequireStr;
  data['jobTime'] = entity.jobTime;
  data['jobTimeStr'] = entity.jobTimeStr;
  data['jobDesc'] = entity.jobDesc;
  data['jobTagList'] = entity.jobTagList;
  data['stick'] = entity.stick;
  data['createdAt'] = entity.createdAt;
  data['refreshAt'] = entity.refreshAt;
  data['nowTime'] = entity.nowTime;
  data['jobTypeStr'] = entity.jobTypeStr;
  return data;
}

extension RecordListDataItemsJobRecordExtension on RecordListDataItemsJobRecord {
  RecordListDataItemsJobRecord copyWith({
    int? recordId,
    int? cityId,
    int? areaId,
    String? areaName,
    int? uid,
    String? userName,
    int? parentJobType,
    int? jobType,
    String? parentJobTypeStr,
    String? jobName,
    String? jobAddress,
    String? jobCompany,
    String? showPay,
    int? eduRequire,
    String? eduRequireStr,
    int? jobTime,
    String? jobTimeStr,
    String? jobDesc,
    List<String>? jobTagList,
    int? stick,
    String? createdAt,
    String? refreshAt,
    int? nowTime,
    String? jobTypeStr,
  }) {
    return RecordListDataItemsJobRecord()
      ..recordId = recordId ?? this.recordId
      ..cityId = cityId ?? this.cityId
      ..areaId = areaId ?? this.areaId
      ..areaName = areaName ?? this.areaName
      ..uid = uid ?? this.uid
      ..userName = userName ?? this.userName
      ..parentJobType = parentJobType ?? this.parentJobType
      ..jobType = jobType ?? this.jobType
      ..parentJobTypeStr = parentJobTypeStr ?? this.parentJobTypeStr
      ..jobName = jobName ?? this.jobName
      ..jobAddress = jobAddress ?? this.jobAddress
      ..jobCompany = jobCompany ?? this.jobCompany
      ..showPay = showPay ?? this.showPay
      ..eduRequire = eduRequire ?? this.eduRequire
      ..eduRequireStr = eduRequireStr ?? this.eduRequireStr
      ..jobTime = jobTime ?? this.jobTime
      ..jobTimeStr = jobTimeStr ?? this.jobTimeStr
      ..jobDesc = jobDesc ?? this.jobDesc
      ..jobTagList = jobTagList ?? this.jobTagList
      ..stick = stick ?? this.stick
      ..createdAt = createdAt ?? this.createdAt
      ..refreshAt = refreshAt ?? this.refreshAt
      ..nowTime = nowTime ?? this.nowTime
      ..jobTypeStr = jobTypeStr ?? this.jobTypeStr;
  }
}