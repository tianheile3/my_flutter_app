import 'package:flutter_study/generated/json/base/json_convert_content.dart';
import 'package:flutter_study/api/response/common/topic_tag_entity.dart';

TopicTagEntity $TopicTagEntityFromJson(Map<String, dynamic> json) {
  final TopicTagEntity topicTagEntity = TopicTagEntity();
  final String? id = jsonConvert.convert<String>(json['id']);
  if (id != null) {
    topicTagEntity.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    topicTagEntity.name = name;
  }
  final String? canBusiness = jsonConvert.convert<String>(json['can_business']);
  if (canBusiness != null) {
    topicTagEntity.canBusiness = canBusiness;
  }
  final String? logoImgUrl = jsonConvert.convert<String>(json['logo_img_url']);
  if (logoImgUrl != null) {
    topicTagEntity.logoImgUrl = logoImgUrl;
  }
  return topicTagEntity;
}

Map<String, dynamic> $TopicTagEntityToJson(TopicTagEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['name'] = entity.name;
  data['can_business'] = entity.canBusiness;
  data['logo_img_url'] = entity.logoImgUrl;
  return data;
}

extension TopicTagEntityExtension on TopicTagEntity {
  TopicTagEntity copyWith({
    String? id,
    String? name,
    String? canBusiness,
    String? logoImgUrl,
  }) {
    return TopicTagEntity()
      ..id = id ?? this.id
      ..name = name ?? this.name
      ..canBusiness = canBusiness ?? this.canBusiness
      ..logoImgUrl = logoImgUrl ?? this.logoImgUrl;
  }
}