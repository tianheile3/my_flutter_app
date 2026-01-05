import 'dart:convert';

import 'package:flutter_study/api/response/common/user_entity.dart';
import 'package:flutter_study/generated/json/base/json_field.dart';
import 'package:flutter_study/generated/json/msg_group_entity.g.dart';

export 'package:flutter_study/generated/json/msg_group_entity.g.dart';

@JsonSerializable()
class MsgGroupEntity {
  @JSONField(name: 'group_id')
  late String groupId;
  late String name;
  @JSONField(name: 'creater_user')
  late UserEntity createrUser;
  late String status;

  MsgGroupEntity();

  factory MsgGroupEntity.fromJson(Map<String, dynamic> json) =>
      $MsgGroupEntityFromJson(json);

  Map<String, dynamic> toJson() => $MsgGroupEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}
