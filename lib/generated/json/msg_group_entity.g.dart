import 'package:flutter_study/generated/json/base/json_convert_content.dart';
import 'package:flutter_study/api/response/msg_group_entity.dart';
import 'package:flutter_study/api/response/common/user_entity.dart';


MsgGroupEntity $MsgGroupEntityFromJson(Map<String, dynamic> json) {
  final MsgGroupEntity msgGroupEntity = MsgGroupEntity();
  final String? groupId = jsonConvert.convert<String>(json['group_id']);
  if (groupId != null) {
    msgGroupEntity.groupId = groupId;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    msgGroupEntity.name = name;
  }
  final UserEntity? createrUser = jsonConvert.convert<UserEntity>(
      json['creater_user']);
  if (createrUser != null) {
    msgGroupEntity.createrUser = createrUser;
  }
  final String? status = jsonConvert.convert<String>(json['status']);
  if (status != null) {
    msgGroupEntity.status = status;
  }
  return msgGroupEntity;
}

Map<String, dynamic> $MsgGroupEntityToJson(MsgGroupEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['group_id'] = entity.groupId;
  data['name'] = entity.name;
  data['creater_user'] = entity.createrUser.toJson();
  data['status'] = entity.status;
  return data;
}

extension MsgGroupEntityExtension on MsgGroupEntity {
  MsgGroupEntity copyWith({
    String? groupId,
    String? name,
    UserEntity? createrUser,
    String? status,
  }) {
    return MsgGroupEntity()
      ..groupId = groupId ?? this.groupId
      ..name = name ?? this.name
      ..createrUser = createrUser ?? this.createrUser
      ..status = status ?? this.status;
  }
}