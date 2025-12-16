import 'package:flutter_study/generated/json/base/json_field.dart';
import 'package:flutter_study/generated/json/record_list_entity.g.dart';
import 'dart:convert';
export 'package:flutter_study/generated/json/record_list_entity.g.dart';

@JsonSerializable()
class RecordListEntity {
	late int code;
	late String message;
	late RecordListData data;
	late int timestamp;

	RecordListEntity();

	factory RecordListEntity.fromJson(Map<String, dynamic> json) => $RecordListEntityFromJson(json);

	Map<String, dynamic> toJson() => $RecordListEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class RecordListData {
	late int perPage;
	late int currentPage;
	late int count;
	late int maxPage;
	late List<RecordListDataItems> items;
	late int startIndex;

	RecordListData();

	factory RecordListData.fromJson(Map<String, dynamic> json) => $RecordListDataFromJson(json);

	Map<String, dynamic> toJson() => $RecordListDataToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class RecordListDataItems {
	late int id;
	late String title;
	late String description;
	late int uid;
	late String username;
	String mainImgUrl = "";
	late int price;
	late int originPrice;
	late String region;
  String? community;
	late String publishName;
	late String publishPhone;
	late String tags;
	late int catType;
	late int recordType;
	late int infoType;
	late String refreshAt;
	late String createdAt;
	late int houseType;
	late int stick;
	late int categoryStick;
	late int autoStick;
  RecordListDataItemsJobRecord? jobRecord;
	late int nowTime;
	late int ifPass;
	late String showTag;
	late String detailUrl;
	late int cityId;

	RecordListDataItems();

	factory RecordListDataItems.fromJson(Map<String, dynamic> json) => $RecordListDataItemsFromJson(json);

	Map<String, dynamic> toJson() => $RecordListDataItemsToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class RecordListDataItemsJobRecord {
	late int recordId;
	late int cityId;
	late int areaId;
	late String areaName;
	late int uid;
	late String userName;
	late int parentJobType;
	late int jobType;
	late String parentJobTypeStr;
	late String jobName;
	late String jobAddress;
	late String jobCompany;
	late String showPay;
	late int eduRequire;
	late String eduRequireStr;
	late int jobTime;
	late String jobTimeStr;
	late String jobDesc;
	late List<String> jobTagList;
	late int stick;
	late String createdAt;
	late String refreshAt;
	late int nowTime;
	late String jobTypeStr;

	RecordListDataItemsJobRecord();

	factory RecordListDataItemsJobRecord.fromJson(Map<String, dynamic> json) => $RecordListDataItemsJobRecordFromJson(json);

	Map<String, dynamic> toJson() => $RecordListDataItemsJobRecordToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}