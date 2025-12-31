import 'package:flutter_study/generated/json/base/json_convert_content.dart';
import 'package:flutter_study/api/response/common/business_tag_entity.dart';

BusinessTagEntity $BusinessTagEntityFromJson(Map<String, dynamic> json) {
  final BusinessTagEntity businessTagEntity = BusinessTagEntity();
  final String? id = jsonConvert.convert<String>(json['id']);
  if (id != null) {
    businessTagEntity.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    businessTagEntity.name = name;
  }
  final String? canBusiness = jsonConvert.convert<String>(json['can_business']);
  if (canBusiness != null) {
    businessTagEntity.canBusiness = canBusiness;
  }
  final String? logoImgUrl = jsonConvert.convert<String>(json['logo_img_url']);
  if (logoImgUrl != null) {
    businessTagEntity.logoImgUrl = logoImgUrl;
  }
  return businessTagEntity;
}

Map<String, dynamic> $BusinessTagEntityToJson(BusinessTagEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['name'] = entity.name;
  data['can_business'] = entity.canBusiness;
  data['logo_img_url'] = entity.logoImgUrl;
  return data;
}

extension BusinessTagEntityExtension on BusinessTagEntity {
  BusinessTagEntity copyWith({
    String? id,
    String? name,
    String? canBusiness,
    String? logoImgUrl,
  }) {
    return BusinessTagEntity()
      ..id = id ?? this.id
      ..name = name ?? this.name
      ..canBusiness = canBusiness ?? this.canBusiness
      ..logoImgUrl = logoImgUrl ?? this.logoImgUrl;
  }
}