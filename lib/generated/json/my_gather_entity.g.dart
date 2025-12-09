import 'package:flutter_study/generated/json/base/json_convert_content.dart';
import 'package:flutter_study/api/response/my_gather_entity.dart';

MyGatherEntity $MyGatherEntityFromJson(Map<String, dynamic> json) {
  final MyGatherEntity myGatherEntity = MyGatherEntity();
  final List<MyGatherGatherList>? gatherList = (json['gather_list'] as List<
      dynamic>?)
      ?.map(
          (e) =>
      jsonConvert.convert<MyGatherGatherList>(e) as MyGatherGatherList)
      .toList();
  if (gatherList != null) {
    myGatherEntity.gatherList = gatherList;
  }
  return myGatherEntity;
}

Map<String, dynamic> $MyGatherEntityToJson(MyGatherEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['gather_list'] = entity.gatherList.map((v) => v.toJson()).toList();
  return data;
}

extension MyGatherEntityExtension on MyGatherEntity {
  MyGatherEntity copyWith({
    List<MyGatherGatherList>? gatherList,
  }) {
    return MyGatherEntity()
      ..gatherList = gatherList ?? this.gatherList;
  }
}

MyGatherGatherList $MyGatherGatherListFromJson(Map<String, dynamic> json) {
  final MyGatherGatherList myGatherGatherList = MyGatherGatherList();
  final String? id = jsonConvert.convert<String>(json['id']);
  if (id != null) {
    myGatherGatherList.id = id;
  }
  final String? uid = jsonConvert.convert<String>(json['uid']);
  if (uid != null) {
    myGatherGatherList.uid = uid;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    myGatherGatherList.name = name;
  }
  final String? desc = jsonConvert.convert<String>(json['desc']);
  if (desc != null) {
    myGatherGatherList.desc = desc;
  }
  final String? cover = jsonConvert.convert<String>(json['cover']);
  if (cover != null) {
    myGatherGatherList.cover = cover;
  }
  final String? status = jsonConvert.convert<String>(json['status']);
  if (status != null) {
    myGatherGatherList.status = status;
  }
  final String? visitNum = jsonConvert.convert<String>(json['visit_num']);
  if (visitNum != null) {
    myGatherGatherList.visitNum = visitNum;
  }
  final String? threads = jsonConvert.convert<String>(json['threads']);
  if (threads != null) {
    myGatherGatherList.threads = threads;
  }
  final String? lastGatherAt = jsonConvert.convert<String>(
      json['last_gather_at']);
  if (lastGatherAt != null) {
    myGatherGatherList.lastGatherAt = lastGatherAt;
  }
  final String? createdAt = jsonConvert.convert<String>(json['created_at']);
  if (createdAt != null) {
    myGatherGatherList.createdAt = createdAt;
  }
  final String? updatedAt = jsonConvert.convert<String>(json['updated_at']);
  if (updatedAt != null) {
    myGatherGatherList.updatedAt = updatedAt;
  }
  return myGatherGatherList;
}

Map<String, dynamic> $MyGatherGatherListToJson(MyGatherGatherList entity) {
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

extension MyGatherGatherListExtension on MyGatherGatherList {
  MyGatherGatherList copyWith({
    String? id,
    String? uid,
    String? name,
    String? desc,
    String? cover,
    String? status,
    String? visitNum,
    String? threads,
    String? lastGatherAt,
    String? createdAt,
    String? updatedAt,
  }) {
    return MyGatherGatherList()
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