import 'package:flutter_study/generated/json/base/json_convert_content.dart';
import 'package:flutter_study/api/response/second_config_entity.dart';

SecondConfigEntity $SecondConfigEntityFromJson(Map<String, dynamic> json) {
  final SecondConfigEntity secondConfigEntity = SecondConfigEntity();
  final String? secId = jsonConvert.convert<String>(json['sec_id']);
  if (secId != null) {
    secondConfigEntity.secId = secId;
  }
  final String? secName = jsonConvert.convert<String>(json['sec_name']);
  if (secName != null) {
    secondConfigEntity.secName = secName;
  }
  final String? userName = jsonConvert.convert<String>(json['user_name']);
  if (userName != null) {
    secondConfigEntity.userName = userName;
  }
  final String? cityName = jsonConvert.convert<String>(json['city_name']);
  if (cityName != null) {
    secondConfigEntity.cityName = cityName;
  }
  final String? content = jsonConvert.convert<String>(json['content']);
  if (content != null) {
    secondConfigEntity.content = content;
  }
  final SecondConfigConfigInfo? configInfo = jsonConvert.convert<
      SecondConfigConfigInfo>(json['config_info']);
  if (configInfo != null) {
    secondConfigEntity.configInfo = configInfo;
  }
  final String? createdAt = jsonConvert.convert<String>(json['created_at']);
  if (createdAt != null) {
    secondConfigEntity.createdAt = createdAt;
  }
  final String? updatedAt = jsonConvert.convert<String>(json['updated_at']);
  if (updatedAt != null) {
    secondConfigEntity.updatedAt = updatedAt;
  }
  return secondConfigEntity;
}

Map<String, dynamic> $SecondConfigEntityToJson(SecondConfigEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['sec_id'] = entity.secId;
  data['sec_name'] = entity.secName;
  data['user_name'] = entity.userName;
  data['city_name'] = entity.cityName;
  data['content'] = entity.content;
  data['config_info'] = entity.configInfo.toJson();
  data['created_at'] = entity.createdAt;
  data['updated_at'] = entity.updatedAt;
  return data;
}

extension SecondConfigEntityExtension on SecondConfigEntity {
  SecondConfigEntity copyWith({
    String? secId,
    String? secName,
    String? userName,
    String? cityName,
    String? content,
    SecondConfigConfigInfo? configInfo,
    String? createdAt,
    String? updatedAt,
  }) {
    return SecondConfigEntity()
      ..secId = secId ?? this.secId
      ..secName = secName ?? this.secName
      ..userName = userName ?? this.userName
      ..cityName = cityName ?? this.cityName
      ..content = content ?? this.content
      ..configInfo = configInfo ?? this.configInfo
      ..createdAt = createdAt ?? this.createdAt
      ..updatedAt = updatedAt ?? this.updatedAt;
  }
}

SecondConfigConfigInfo $SecondConfigConfigInfoFromJson(
    Map<String, dynamic> json) {
  final SecondConfigConfigInfo secondConfigConfigInfo = SecondConfigConfigInfo();
  final String? lunboCheck = jsonConvert.convert<String>(json['lunbo_check']);
  if (lunboCheck != null) {
    secondConfigConfigInfo.lunboCheck = lunboCheck;
  }
  final String? lunboBid = jsonConvert.convert<String>(json['lunbo_bid']);
  if (lunboBid != null) {
    secondConfigConfigInfo.lunboBid = lunboBid;
  }
  final String? appPortalCheck = jsonConvert.convert<String>(
      json['app_portal_check']);
  if (appPortalCheck != null) {
    secondConfigConfigInfo.appPortalCheck = appPortalCheck;
  }
  final String? miniAppPortalCheck = jsonConvert.convert<String>(
      json['mini_app_portal_check']);
  if (miniAppPortalCheck != null) {
    secondConfigConfigInfo.miniAppPortalCheck = miniAppPortalCheck;
  }
  final List<
      SecondConfigConfigInfoAppPortalInfo>? appPortalInfo = (json['app_portal_info'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<SecondConfigConfigInfoAppPortalInfo>(
          e) as SecondConfigConfigInfoAppPortalInfo).toList();
  if (appPortalInfo != null) {
    secondConfigConfigInfo.appPortalInfo = appPortalInfo;
  }
  final List<
      SecondConfigConfigInfoMiniAppPortalInfo>? miniAppPortalInfo = (json['mini_app_portal_info'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<SecondConfigConfigInfoMiniAppPortalInfo>(
          e) as SecondConfigConfigInfoMiniAppPortalInfo).toList();
  if (miniAppPortalInfo != null) {
    secondConfigConfigInfo.miniAppPortalInfo = miniAppPortalInfo;
  }
  final String? postFlowCheck = jsonConvert.convert<String>(
      json['post_flow_check']);
  if (postFlowCheck != null) {
    secondConfigConfigInfo.postFlowCheck = postFlowCheck;
  }
  final String? navName = jsonConvert.convert<String>(json['nav_name']);
  if (navName != null) {
    secondConfigConfigInfo.navName = navName;
  }
  final String? filterContent = jsonConvert.convert<String>(
      json['filter_content']);
  if (filterContent != null) {
    secondConfigConfigInfo.filterContent = filterContent;
  }
  final List<
      SecondConfigConfigInfoFilterpfInfo>? filterpfInfo = (json['filterpf_info'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<SecondConfigConfigInfoFilterpfInfo>(
          e) as SecondConfigConfigInfoFilterpfInfo).toList();
  if (filterpfInfo != null) {
    secondConfigConfigInfo.filterpfInfo = filterpfInfo;
  }
  final String? activityCheck = jsonConvert.convert<String>(
      json['activity_check']);
  if (activityCheck != null) {
    secondConfigConfigInfo.activityCheck = activityCheck;
  }
  final String? activityBid = jsonConvert.convert<String>(json['activity_bid']);
  if (activityBid != null) {
    secondConfigConfigInfo.activityBid = activityBid;
  }
  final String? advOneId = jsonConvert.convert<String>(json['adv_one_id']);
  if (advOneId != null) {
    secondConfigConfigInfo.advOneId = advOneId;
  }
  final String? advTwoId = jsonConvert.convert<String>(json['adv_two_id']);
  if (advTwoId != null) {
    secondConfigConfigInfo.advTwoId = advTwoId;
  }
  final String? advThreeId = jsonConvert.convert<String>(json['adv_three_id']);
  if (advThreeId != null) {
    secondConfigConfigInfo.advThreeId = advThreeId;
  }
  final String? advFourId = jsonConvert.convert<String>(json['adv_four_id']);
  if (advFourId != null) {
    secondConfigConfigInfo.advFourId = advFourId;
  }
  final String? advFiveId = jsonConvert.convert<String>(json['adv_five_id']);
  if (advFiveId != null) {
    secondConfigConfigInfo.advFiveId = advFiveId;
  }
  final String? bottomLayerCheck = jsonConvert.convert<String>(
      json['bottom_layer_check']);
  if (bottomLayerCheck != null) {
    secondConfigConfigInfo.bottomLayerCheck = bottomLayerCheck;
  }
  final String? bottomLayerUrl = jsonConvert.convert<String>(
      json['bottom_layer_url']);
  if (bottomLayerUrl != null) {
    secondConfigConfigInfo.bottomLayerUrl = bottomLayerUrl;
  }
  final String? topicCheck = jsonConvert.convert<String>(json['topic_check']);
  if (topicCheck != null) {
    secondConfigConfigInfo.topicCheck = topicCheck;
  }
  final List<dynamic>? topicInfo = (json['topic_info'] as List<dynamic>?)?.map(
          (e) => e).toList();
  if (topicInfo != null) {
    secondConfigConfigInfo.topicInfo = topicInfo;
  }
  final List<
      SecondConfigConfigInfoPicPositionInfo>? picPositionInfo = (json['pic_position_info'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<SecondConfigConfigInfoPicPositionInfo>(
          e) as SecondConfigConfigInfoPicPositionInfo).toList();
  if (picPositionInfo != null) {
    secondConfigConfigInfo.picPositionInfo = picPositionInfo;
  }
  final String? picPositionCheck = jsonConvert.convert<String>(
      json['pic_position_check']);
  if (picPositionCheck != null) {
    secondConfigConfigInfo.picPositionCheck = picPositionCheck;
  }
  final String? picNavContent = jsonConvert.convert<String>(
      json['pic_nav_content']);
  if (picNavContent != null) {
    secondConfigConfigInfo.picNavContent = picNavContent;
  }
  final String? picRightDefaultContent = jsonConvert.convert<String>(
      json['pic_right_default_content']);
  if (picRightDefaultContent != null) {
    secondConfigConfigInfo.picRightDefaultContent = picRightDefaultContent;
  }
  final String? picRightLink = jsonConvert.convert<String>(
      json['pic_right_link']);
  if (picRightLink != null) {
    secondConfigConfigInfo.picRightLink = picRightLink;
  }
  final String? picTemplate = jsonConvert.convert<String>(json['pic_template']);
  if (picTemplate != null) {
    secondConfigConfigInfo.picTemplate = picTemplate;
  }
  final List<
      SecondConfigConfigInfoReMerchantInfo>? reMerchantInfo = (json['re_merchant_info'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<SecondConfigConfigInfoReMerchantInfo>(
          e) as SecondConfigConfigInfoReMerchantInfo).toList();
  if (reMerchantInfo != null) {
    secondConfigConfigInfo.reMerchantInfo = reMerchantInfo;
  }
  final String? reMerchantCheck = jsonConvert.convert<String>(
      json['re_merchant_check']);
  if (reMerchantCheck != null) {
    secondConfigConfigInfo.reMerchantCheck = reMerchantCheck;
  }
  final String? reMerchantNavContent = jsonConvert.convert<String>(
      json['re_merchant_nav_content']);
  if (reMerchantNavContent != null) {
    secondConfigConfigInfo.reMerchantNavContent = reMerchantNavContent;
  }
  final String? reMerchantRightDefaultContent = jsonConvert.convert<String>(
      json['re_merchant_right_default_content']);
  if (reMerchantRightDefaultContent != null) {
    secondConfigConfigInfo.reMerchantRightDefaultContent =
        reMerchantRightDefaultContent;
  }
  final String? reMerchantRightLink = jsonConvert.convert<String>(
      json['re_merchant_right_link']);
  if (reMerchantRightLink != null) {
    secondConfigConfigInfo.reMerchantRightLink = reMerchantRightLink;
  }
  final String? rightLayerCheck = jsonConvert.convert<String>(
      json['right_layer_check']);
  if (rightLayerCheck != null) {
    secondConfigConfigInfo.rightLayerCheck = rightLayerCheck;
  }
  final String? rightLayerLogoUrl = jsonConvert.convert<String>(
      json['right_layer_logo_url']);
  if (rightLayerLogoUrl != null) {
    secondConfigConfigInfo.rightLayerLogoUrl = rightLayerLogoUrl;
  }
  final String? rightLayerContentUrl = jsonConvert.convert<String>(
      json['right_layer_content_url']);
  if (rightLayerContentUrl != null) {
    secondConfigConfigInfo.rightLayerContentUrl = rightLayerContentUrl;
  }
  final String? defaulePublishId = jsonConvert.convert<String>(
      json['defaule_publish_id']);
  if (defaulePublishId != null) {
    secondConfigConfigInfo.defaulePublishId = defaulePublishId;
  }
  final String? defaulePublishName = jsonConvert.convert<String>(
      json['defaule_publish_name']);
  if (defaulePublishName != null) {
    secondConfigConfigInfo.defaulePublishName = defaulePublishName;
  }
  final String? defaulePublishCityName = jsonConvert.convert<String>(
      json['defaule_publish_city_name']);
  if (defaulePublishCityName != null) {
    secondConfigConfigInfo.defaulePublishCityName = defaulePublishCityName;
  }
  final String? defaulePublishType = jsonConvert.convert<String>(
      json['defaule_publish_type']);
  if (defaulePublishType != null) {
    secondConfigConfigInfo.defaulePublishType = defaulePublishType;
  }
  final String? defaulePublishLink = jsonConvert.convert<String>(
      json['defaule_publish_link']);
  if (defaulePublishLink != null) {
    secondConfigConfigInfo.defaulePublishLink = defaulePublishLink;
  }
  final String? postFlowType = jsonConvert.convert<String>(
      json['post_flow_type']);
  if (postFlowType != null) {
    secondConfigConfigInfo.postFlowType = postFlowType;
  }
  final String? postWaterfallsFlowShowCheck = jsonConvert.convert<String>(
      json['post_waterfalls_flow_show_check']);
  if (postWaterfallsFlowShowCheck != null) {
    secondConfigConfigInfo.postWaterfallsFlowShowCheck =
        postWaterfallsFlowShowCheck;
  }
  final String? newRecommendCheck = jsonConvert.convert<String>(
      json['new_recommend_check']);
  if (newRecommendCheck != null) {
    secondConfigConfigInfo.newRecommendCheck = newRecommendCheck;
  }
  final String? zujiancheck = jsonConvert.convert<String>(json['zujiancheck']);
  if (zujiancheck != null) {
    secondConfigConfigInfo.zujiancheck = zujiancheck;
  }
  final String? industryCategoryName = jsonConvert.convert<String>(
      json['industry_category_name']);
  if (industryCategoryName != null) {
    secondConfigConfigInfo.industryCategoryName = industryCategoryName;
  }
  final String? industryCategoryId = jsonConvert.convert<String>(
      json['industry_category_id']);
  if (industryCategoryId != null) {
    secondConfigConfigInfo.industryCategoryId = industryCategoryId;
  }
  final String? secondaryRelatedIds = jsonConvert.convert<String>(
      json['secondary_related_ids']);
  if (secondaryRelatedIds != null) {
    secondConfigConfigInfo.secondaryRelatedIds = secondaryRelatedIds;
  }
  final String? postFlowStickCheck = jsonConvert.convert<String>(
      json['post_flow_stick_check']);
  if (postFlowStickCheck != null) {
    secondConfigConfigInfo.postFlowStickCheck = postFlowStickCheck;
  }
  final List<
      SecondConfigConfigInfoPicTurnList>? picTurnList = (json['pic_turn_list'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<SecondConfigConfigInfoPicTurnList>(
          e) as SecondConfigConfigInfoPicTurnList).toList();
  if (picTurnList != null) {
    secondConfigConfigInfo.picTurnList = picTurnList;
  }
  final List<dynamic>? activityList = (json['activity_list'] as List<dynamic>?)
      ?.map(
          (e) => e)
      .toList();
  if (activityList != null) {
    secondConfigConfigInfo.activityList = activityList;
  }
  final String? tagConfigPlace = jsonConvert.convert<String>(
      json['tag_config_place']);
  if (tagConfigPlace != null) {
    secondConfigConfigInfo.tagConfigPlace = tagConfigPlace;
  }
  final List<dynamic>? tagConfigList = (json['tag_config_list'] as List<
      dynamic>?)?.map(
          (e) => e).toList();
  if (tagConfigList != null) {
    secondConfigConfigInfo.tagConfigList = tagConfigList;
  }
  return secondConfigConfigInfo;
}

Map<String, dynamic> $SecondConfigConfigInfoToJson(
    SecondConfigConfigInfo entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['lunbo_check'] = entity.lunboCheck;
  data['lunbo_bid'] = entity.lunboBid;
  data['app_portal_check'] = entity.appPortalCheck;
  data['mini_app_portal_check'] = entity.miniAppPortalCheck;
  data['app_portal_info'] =
      entity.appPortalInfo.map((v) => v.toJson()).toList();
  data['mini_app_portal_info'] =
      entity.miniAppPortalInfo.map((v) => v.toJson()).toList();
  data['post_flow_check'] = entity.postFlowCheck;
  data['nav_name'] = entity.navName;
  data['filter_content'] = entity.filterContent;
  data['filterpf_info'] = entity.filterpfInfo.map((v) => v.toJson()).toList();
  data['activity_check'] = entity.activityCheck;
  data['activity_bid'] = entity.activityBid;
  data['adv_one_id'] = entity.advOneId;
  data['adv_two_id'] = entity.advTwoId;
  data['adv_three_id'] = entity.advThreeId;
  data['adv_four_id'] = entity.advFourId;
  data['adv_five_id'] = entity.advFiveId;
  data['bottom_layer_check'] = entity.bottomLayerCheck;
  data['bottom_layer_url'] = entity.bottomLayerUrl;
  data['topic_check'] = entity.topicCheck;
  data['topic_info'] = entity.topicInfo;
  data['pic_position_info'] =
      entity.picPositionInfo.map((v) => v.toJson()).toList();
  data['pic_position_check'] = entity.picPositionCheck;
  data['pic_nav_content'] = entity.picNavContent;
  data['pic_right_default_content'] = entity.picRightDefaultContent;
  data['pic_right_link'] = entity.picRightLink;
  data['pic_template'] = entity.picTemplate;
  data['re_merchant_info'] =
      entity.reMerchantInfo.map((v) => v.toJson()).toList();
  data['re_merchant_check'] = entity.reMerchantCheck;
  data['re_merchant_nav_content'] = entity.reMerchantNavContent;
  data['re_merchant_right_default_content'] =
      entity.reMerchantRightDefaultContent;
  data['re_merchant_right_link'] = entity.reMerchantRightLink;
  data['right_layer_check'] = entity.rightLayerCheck;
  data['right_layer_logo_url'] = entity.rightLayerLogoUrl;
  data['right_layer_content_url'] = entity.rightLayerContentUrl;
  data['defaule_publish_id'] = entity.defaulePublishId;
  data['defaule_publish_name'] = entity.defaulePublishName;
  data['defaule_publish_city_name'] = entity.defaulePublishCityName;
  data['defaule_publish_type'] = entity.defaulePublishType;
  data['defaule_publish_link'] = entity.defaulePublishLink;
  data['post_flow_type'] = entity.postFlowType;
  data['post_waterfalls_flow_show_check'] = entity.postWaterfallsFlowShowCheck;
  data['new_recommend_check'] = entity.newRecommendCheck;
  data['zujiancheck'] = entity.zujiancheck;
  data['industry_category_name'] = entity.industryCategoryName;
  data['industry_category_id'] = entity.industryCategoryId;
  data['secondary_related_ids'] = entity.secondaryRelatedIds;
  data['post_flow_stick_check'] = entity.postFlowStickCheck;
  data['pic_turn_list'] = entity.picTurnList.map((v) => v.toJson()).toList();
  data['activity_list'] = entity.activityList;
  data['tag_config_place'] = entity.tagConfigPlace;
  data['tag_config_list'] = entity.tagConfigList;
  return data;
}

extension SecondConfigConfigInfoExtension on SecondConfigConfigInfo {
  SecondConfigConfigInfo copyWith({
    String? lunboCheck,
    String? lunboBid,
    String? appPortalCheck,
    String? miniAppPortalCheck,
    List<SecondConfigConfigInfoAppPortalInfo>? appPortalInfo,
    List<SecondConfigConfigInfoMiniAppPortalInfo>? miniAppPortalInfo,
    String? postFlowCheck,
    String? navName,
    String? filterContent,
    List<SecondConfigConfigInfoFilterpfInfo>? filterpfInfo,
    String? activityCheck,
    String? activityBid,
    String? advOneId,
    String? advTwoId,
    String? advThreeId,
    String? advFourId,
    String? advFiveId,
    String? bottomLayerCheck,
    String? bottomLayerUrl,
    String? topicCheck,
    List<dynamic>? topicInfo,
    List<SecondConfigConfigInfoPicPositionInfo>? picPositionInfo,
    String? picPositionCheck,
    String? picNavContent,
    String? picRightDefaultContent,
    String? picRightLink,
    String? picTemplate,
    List<SecondConfigConfigInfoReMerchantInfo>? reMerchantInfo,
    String? reMerchantCheck,
    String? reMerchantNavContent,
    String? reMerchantRightDefaultContent,
    String? reMerchantRightLink,
    String? rightLayerCheck,
    String? rightLayerLogoUrl,
    String? rightLayerContentUrl,
    String? defaulePublishId,
    String? defaulePublishName,
    String? defaulePublishCityName,
    String? defaulePublishType,
    String? defaulePublishLink,
    String? postFlowType,
    String? postWaterfallsFlowShowCheck,
    String? newRecommendCheck,
    String? zujiancheck,
    String? industryCategoryName,
    String? industryCategoryId,
    String? secondaryRelatedIds,
    String? postFlowStickCheck,
    List<SecondConfigConfigInfoPicTurnList>? picTurnList,
    List<dynamic>? activityList,
    String? tagConfigPlace,
    List<dynamic>? tagConfigList,
  }) {
    return SecondConfigConfigInfo()
      ..lunboCheck = lunboCheck ?? this.lunboCheck
      ..lunboBid = lunboBid ?? this.lunboBid
      ..appPortalCheck = appPortalCheck ?? this.appPortalCheck
      ..miniAppPortalCheck = miniAppPortalCheck ?? this.miniAppPortalCheck
      ..appPortalInfo = appPortalInfo ?? this.appPortalInfo
      ..miniAppPortalInfo = miniAppPortalInfo ?? this.miniAppPortalInfo
      ..postFlowCheck = postFlowCheck ?? this.postFlowCheck
      ..navName = navName ?? this.navName
      ..filterContent = filterContent ?? this.filterContent
      ..filterpfInfo = filterpfInfo ?? this.filterpfInfo
      ..activityCheck = activityCheck ?? this.activityCheck
      ..activityBid = activityBid ?? this.activityBid
      ..advOneId = advOneId ?? this.advOneId
      ..advTwoId = advTwoId ?? this.advTwoId
      ..advThreeId = advThreeId ?? this.advThreeId
      ..advFourId = advFourId ?? this.advFourId
      ..advFiveId = advFiveId ?? this.advFiveId
      ..bottomLayerCheck = bottomLayerCheck ?? this.bottomLayerCheck
      ..bottomLayerUrl = bottomLayerUrl ?? this.bottomLayerUrl
      ..topicCheck = topicCheck ?? this.topicCheck
      ..topicInfo = topicInfo ?? this.topicInfo
      ..picPositionInfo = picPositionInfo ?? this.picPositionInfo
      ..picPositionCheck = picPositionCheck ?? this.picPositionCheck
      ..picNavContent = picNavContent ?? this.picNavContent
      ..picRightDefaultContent = picRightDefaultContent ??
          this.picRightDefaultContent
      ..picRightLink = picRightLink ?? this.picRightLink
      ..picTemplate = picTemplate ?? this.picTemplate
      ..reMerchantInfo = reMerchantInfo ?? this.reMerchantInfo
      ..reMerchantCheck = reMerchantCheck ?? this.reMerchantCheck
      ..reMerchantNavContent = reMerchantNavContent ?? this.reMerchantNavContent
      ..reMerchantRightDefaultContent = reMerchantRightDefaultContent ??
          this.reMerchantRightDefaultContent
      ..reMerchantRightLink = reMerchantRightLink ?? this.reMerchantRightLink
      ..rightLayerCheck = rightLayerCheck ?? this.rightLayerCheck
      ..rightLayerLogoUrl = rightLayerLogoUrl ?? this.rightLayerLogoUrl
      ..rightLayerContentUrl = rightLayerContentUrl ?? this.rightLayerContentUrl
      ..defaulePublishId = defaulePublishId ?? this.defaulePublishId
      ..defaulePublishName = defaulePublishName ?? this.defaulePublishName
      ..defaulePublishCityName = defaulePublishCityName ??
          this.defaulePublishCityName
      ..defaulePublishType = defaulePublishType ?? this.defaulePublishType
      ..defaulePublishLink = defaulePublishLink ?? this.defaulePublishLink
      ..postFlowType = postFlowType ?? this.postFlowType
      ..postWaterfallsFlowShowCheck = postWaterfallsFlowShowCheck ??
          this.postWaterfallsFlowShowCheck
      ..newRecommendCheck = newRecommendCheck ?? this.newRecommendCheck
      ..zujiancheck = zujiancheck ?? this.zujiancheck
      ..industryCategoryName = industryCategoryName ?? this.industryCategoryName
      ..industryCategoryId = industryCategoryId ?? this.industryCategoryId
      ..secondaryRelatedIds = secondaryRelatedIds ?? this.secondaryRelatedIds
      ..postFlowStickCheck = postFlowStickCheck ?? this.postFlowStickCheck
      ..picTurnList = picTurnList ?? this.picTurnList
      ..activityList = activityList ?? this.activityList
      ..tagConfigPlace = tagConfigPlace ?? this.tagConfigPlace
      ..tagConfigList = tagConfigList ?? this.tagConfigList;
  }
}

SecondConfigConfigInfoAppPortalInfo $SecondConfigConfigInfoAppPortalInfoFromJson(
    Map<String, dynamic> json) {
  final SecondConfigConfigInfoAppPortalInfo secondConfigConfigInfoAppPortalInfo = SecondConfigConfigInfoAppPortalInfo();
  final String? orderBy = jsonConvert.convert<String>(json['order_by']);
  if (orderBy != null) {
    secondConfigConfigInfoAppPortalInfo.orderBy = orderBy;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    secondConfigConfigInfoAppPortalInfo.name = name;
  }
  final String? logo = jsonConvert.convert<String>(json['logo']);
  if (logo != null) {
    secondConfigConfigInfoAppPortalInfo.logo = logo;
  }
  final String? logoUrl = jsonConvert.convert<String>(json['logo_url']);
  if (logoUrl != null) {
    secondConfigConfigInfoAppPortalInfo.logoUrl = logoUrl;
  }
  final String? contentUrl = jsonConvert.convert<String>(json['content_url']);
  if (contentUrl != null) {
    secondConfigConfigInfoAppPortalInfo.contentUrl = contentUrl;
  }
  final String? activityText = jsonConvert.convert<String>(
      json['activity_text']);
  if (activityText != null) {
    secondConfigConfigInfoAppPortalInfo.activityText = activityText;
  }
  final String? appPortalDisplay = jsonConvert.convert<String>(
      json['app_portal_display']);
  if (appPortalDisplay != null) {
    secondConfigConfigInfoAppPortalInfo.appPortalDisplay = appPortalDisplay;
  }
  return secondConfigConfigInfoAppPortalInfo;
}

Map<String, dynamic> $SecondConfigConfigInfoAppPortalInfoToJson(
    SecondConfigConfigInfoAppPortalInfo entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['order_by'] = entity.orderBy;
  data['name'] = entity.name;
  data['logo'] = entity.logo;
  data['logo_url'] = entity.logoUrl;
  data['content_url'] = entity.contentUrl;
  data['activity_text'] = entity.activityText;
  data['app_portal_display'] = entity.appPortalDisplay;
  return data;
}

extension SecondConfigConfigInfoAppPortalInfoExtension on SecondConfigConfigInfoAppPortalInfo {
  SecondConfigConfigInfoAppPortalInfo copyWith({
    String? orderBy,
    String? name,
    String? logo,
    String? logoUrl,
    String? contentUrl,
    String? activityText,
    String? appPortalDisplay,
  }) {
    return SecondConfigConfigInfoAppPortalInfo()
      ..orderBy = orderBy ?? this.orderBy
      ..name = name ?? this.name
      ..logo = logo ?? this.logo
      ..logoUrl = logoUrl ?? this.logoUrl
      ..contentUrl = contentUrl ?? this.contentUrl
      ..activityText = activityText ?? this.activityText
      ..appPortalDisplay = appPortalDisplay ?? this.appPortalDisplay;
  }
}

SecondConfigConfigInfoMiniAppPortalInfo $SecondConfigConfigInfoMiniAppPortalInfoFromJson(
    Map<String, dynamic> json) {
  final SecondConfigConfigInfoMiniAppPortalInfo secondConfigConfigInfoMiniAppPortalInfo = SecondConfigConfigInfoMiniAppPortalInfo();
  final String? orderBy = jsonConvert.convert<String>(json['order_by']);
  if (orderBy != null) {
    secondConfigConfigInfoMiniAppPortalInfo.orderBy = orderBy;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    secondConfigConfigInfoMiniAppPortalInfo.name = name;
  }
  final String? logo = jsonConvert.convert<String>(json['logo']);
  if (logo != null) {
    secondConfigConfigInfoMiniAppPortalInfo.logo = logo;
  }
  final String? logoUrl = jsonConvert.convert<String>(json['logo_url']);
  if (logoUrl != null) {
    secondConfigConfigInfoMiniAppPortalInfo.logoUrl = logoUrl;
  }
  final String? contentUrl = jsonConvert.convert<String>(json['content_url']);
  if (contentUrl != null) {
    secondConfigConfigInfoMiniAppPortalInfo.contentUrl = contentUrl;
  }
  final String? activityText = jsonConvert.convert<String>(
      json['activity_text']);
  if (activityText != null) {
    secondConfigConfigInfoMiniAppPortalInfo.activityText = activityText;
  }
  final String? appPortalDisplay = jsonConvert.convert<String>(
      json['app_portal_display']);
  if (appPortalDisplay != null) {
    secondConfigConfigInfoMiniAppPortalInfo.appPortalDisplay = appPortalDisplay;
  }
  return secondConfigConfigInfoMiniAppPortalInfo;
}

Map<String, dynamic> $SecondConfigConfigInfoMiniAppPortalInfoToJson(
    SecondConfigConfigInfoMiniAppPortalInfo entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['order_by'] = entity.orderBy;
  data['name'] = entity.name;
  data['logo'] = entity.logo;
  data['logo_url'] = entity.logoUrl;
  data['content_url'] = entity.contentUrl;
  data['activity_text'] = entity.activityText;
  data['app_portal_display'] = entity.appPortalDisplay;
  return data;
}

extension SecondConfigConfigInfoMiniAppPortalInfoExtension on SecondConfigConfigInfoMiniAppPortalInfo {
  SecondConfigConfigInfoMiniAppPortalInfo copyWith({
    String? orderBy,
    String? name,
    String? logo,
    String? logoUrl,
    String? contentUrl,
    String? activityText,
    String? appPortalDisplay,
  }) {
    return SecondConfigConfigInfoMiniAppPortalInfo()
      ..orderBy = orderBy ?? this.orderBy
      ..name = name ?? this.name
      ..logo = logo ?? this.logo
      ..logoUrl = logoUrl ?? this.logoUrl
      ..contentUrl = contentUrl ?? this.contentUrl
      ..activityText = activityText ?? this.activityText
      ..appPortalDisplay = appPortalDisplay ?? this.appPortalDisplay;
  }
}

SecondConfigConfigInfoFilterpfInfo $SecondConfigConfigInfoFilterpfInfoFromJson(
    Map<String, dynamic> json) {
  final SecondConfigConfigInfoFilterpfInfo secondConfigConfigInfoFilterpfInfo = SecondConfigConfigInfoFilterpfInfo();
  final String? orderBy = jsonConvert.convert<String>(json['order_by']);
  if (orderBy != null) {
    secondConfigConfigInfoFilterpfInfo.orderBy = orderBy;
  }
  final String? classify = jsonConvert.convert<String>(json['classify']);
  if (classify != null) {
    secondConfigConfigInfoFilterpfInfo.classify = classify;
  }
  final String? bid = jsonConvert.convert<String>(json['bid']);
  if (bid != null) {
    secondConfigConfigInfoFilterpfInfo.bid = bid;
  }
  final String? id = jsonConvert.convert<String>(json['id']);
  if (id != null) {
    secondConfigConfigInfoFilterpfInfo.id = id;
  }
  return secondConfigConfigInfoFilterpfInfo;
}

Map<String, dynamic> $SecondConfigConfigInfoFilterpfInfoToJson(
    SecondConfigConfigInfoFilterpfInfo entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['order_by'] = entity.orderBy;
  data['classify'] = entity.classify;
  data['bid'] = entity.bid;
  data['id'] = entity.id;
  return data;
}

extension SecondConfigConfigInfoFilterpfInfoExtension on SecondConfigConfigInfoFilterpfInfo {
  SecondConfigConfigInfoFilterpfInfo copyWith({
    String? orderBy,
    String? classify,
    String? bid,
    String? id,
  }) {
    return SecondConfigConfigInfoFilterpfInfo()
      ..orderBy = orderBy ?? this.orderBy
      ..classify = classify ?? this.classify
      ..bid = bid ?? this.bid
      ..id = id ?? this.id;
  }
}

SecondConfigConfigInfoPicPositionInfo $SecondConfigConfigInfoPicPositionInfoFromJson(
    Map<String, dynamic> json) {
  final SecondConfigConfigInfoPicPositionInfo secondConfigConfigInfoPicPositionInfo = SecondConfigConfigInfoPicPositionInfo();
  final String? orderBy = jsonConvert.convert<String>(json['order_by']);
  if (orderBy != null) {
    secondConfigConfigInfoPicPositionInfo.orderBy = orderBy;
  }
  final String? logoUrl = jsonConvert.convert<String>(json['logo_url']);
  if (logoUrl != null) {
    secondConfigConfigInfoPicPositionInfo.logoUrl = logoUrl;
  }
  final String? contentUrl = jsonConvert.convert<String>(json['content_url']);
  if (contentUrl != null) {
    secondConfigConfigInfoPicPositionInfo.contentUrl = contentUrl;
  }
  return secondConfigConfigInfoPicPositionInfo;
}

Map<String, dynamic> $SecondConfigConfigInfoPicPositionInfoToJson(
    SecondConfigConfigInfoPicPositionInfo entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['order_by'] = entity.orderBy;
  data['logo_url'] = entity.logoUrl;
  data['content_url'] = entity.contentUrl;
  return data;
}

extension SecondConfigConfigInfoPicPositionInfoExtension on SecondConfigConfigInfoPicPositionInfo {
  SecondConfigConfigInfoPicPositionInfo copyWith({
    String? orderBy,
    String? logoUrl,
    String? contentUrl,
  }) {
    return SecondConfigConfigInfoPicPositionInfo()
      ..orderBy = orderBy ?? this.orderBy
      ..logoUrl = logoUrl ?? this.logoUrl
      ..contentUrl = contentUrl ?? this.contentUrl;
  }
}

SecondConfigConfigInfoReMerchantInfo $SecondConfigConfigInfoReMerchantInfoFromJson(
    Map<String, dynamic> json) {
  final SecondConfigConfigInfoReMerchantInfo secondConfigConfigInfoReMerchantInfo = SecondConfigConfigInfoReMerchantInfo();
  final String? orderBy = jsonConvert.convert<String>(json['order_by']);
  if (orderBy != null) {
    secondConfigConfigInfoReMerchantInfo.orderBy = orderBy;
  }
  final String? bid = jsonConvert.convert<String>(json['bid']);
  if (bid != null) {
    secondConfigConfigInfoReMerchantInfo.bid = bid;
  }
  final String? logoUrl = jsonConvert.convert<String>(json['logo_url']);
  if (logoUrl != null) {
    secondConfigConfigInfoReMerchantInfo.logoUrl = logoUrl;
  }
  final String? contentUrl = jsonConvert.convert<String>(json['content_url']);
  if (contentUrl != null) {
    secondConfigConfigInfoReMerchantInfo.contentUrl = contentUrl;
  }
  final String? activityText = jsonConvert.convert<String>(
      json['activity_text']);
  if (activityText != null) {
    secondConfigConfigInfoReMerchantInfo.activityText = activityText;
  }
  return secondConfigConfigInfoReMerchantInfo;
}

Map<String, dynamic> $SecondConfigConfigInfoReMerchantInfoToJson(
    SecondConfigConfigInfoReMerchantInfo entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['order_by'] = entity.orderBy;
  data['bid'] = entity.bid;
  data['logo_url'] = entity.logoUrl;
  data['content_url'] = entity.contentUrl;
  data['activity_text'] = entity.activityText;
  return data;
}

extension SecondConfigConfigInfoReMerchantInfoExtension on SecondConfigConfigInfoReMerchantInfo {
  SecondConfigConfigInfoReMerchantInfo copyWith({
    String? orderBy,
    String? bid,
    String? logoUrl,
    String? contentUrl,
    String? activityText,
  }) {
    return SecondConfigConfigInfoReMerchantInfo()
      ..orderBy = orderBy ?? this.orderBy
      ..bid = bid ?? this.bid
      ..logoUrl = logoUrl ?? this.logoUrl
      ..contentUrl = contentUrl ?? this.contentUrl
      ..activityText = activityText ?? this.activityText;
  }
}

SecondConfigConfigInfoPicTurnList $SecondConfigConfigInfoPicTurnListFromJson(
    Map<String, dynamic> json) {
  final SecondConfigConfigInfoPicTurnList secondConfigConfigInfoPicTurnList = SecondConfigConfigInfoPicTurnList();
  final String? fid = jsonConvert.convert<String>(json['fid']);
  if (fid != null) {
    secondConfigConfigInfoPicTurnList.fid = fid;
  }
  final String? refPid = jsonConvert.convert<String>(json['ref_pid']);
  if (refPid != null) {
    secondConfigConfigInfoPicTurnList.refPid = refPid;
  }
  final String? refTid = jsonConvert.convert<String>(json['ref_tid']);
  if (refTid != null) {
    secondConfigConfigInfoPicTurnList.refTid = refTid;
  }
  final String? tid = jsonConvert.convert<String>(json['tid']);
  if (tid != null) {
    secondConfigConfigInfoPicTurnList.tid = tid;
  }
  final SecondConfigConfigInfoPicTurnListAuthor? author = jsonConvert.convert<
      SecondConfigConfigInfoPicTurnListAuthor>(json['author']);
  if (author != null) {
    secondConfigConfigInfoPicTurnList.author = author;
  }
  final String? subject = jsonConvert.convert<String>(json['subject']);
  if (subject != null) {
    secondConfigConfigInfoPicTurnList.subject = subject;
  }
  final String? content = jsonConvert.convert<String>(json['content']);
  if (content != null) {
    secondConfigConfigInfoPicTurnList.content = content;
  }
  final String? images = jsonConvert.convert<String>(json['images']);
  if (images != null) {
    secondConfigConfigInfoPicTurnList.images = images;
  }
  final String? firstPicUrl = jsonConvert.convert<String>(
      json['first_pic_url']);
  if (firstPicUrl != null) {
    secondConfigConfigInfoPicTurnList.firstPicUrl = firstPicUrl;
  }
  final SecondConfigConfigInfoPicTurnListThread? thread = jsonConvert.convert<
      SecondConfigConfigInfoPicTurnListThread>(json['thread']);
  if (thread != null) {
    secondConfigConfigInfoPicTurnList.thread = thread;
  }
  final String? createdAt = jsonConvert.convert<String>(json['created_at']);
  if (createdAt != null) {
    secondConfigConfigInfoPicTurnList.createdAt = createdAt;
  }
  final String? order = jsonConvert.convert<String>(json['order']);
  if (order != null) {
    secondConfigConfigInfoPicTurnList.order = order;
  }
  final String? onlineTime = jsonConvert.convert<String>(json['online_time']);
  if (onlineTime != null) {
    secondConfigConfigInfoPicTurnList.onlineTime = onlineTime;
  }
  final String? source = jsonConvert.convert<String>(json['source']);
  if (source != null) {
    secondConfigConfigInfoPicTurnList.source = source;
  }
  final String? stick = jsonConvert.convert<String>(json['stick']);
  if (stick != null) {
    secondConfigConfigInfoPicTurnList.stick = stick;
  }
  final String? outsiteUrl = jsonConvert.convert<String>(json['outsite_url']);
  if (outsiteUrl != null) {
    secondConfigConfigInfoPicTurnList.outsiteUrl = outsiteUrl;
  }
  final String? goToUrl = jsonConvert.convert<String>(json['go_to_url']);
  if (goToUrl != null) {
    secondConfigConfigInfoPicTurnList.goToUrl = goToUrl;
  }
  final String? cityName = jsonConvert.convert<String>(json['city_name']);
  if (cityName != null) {
    secondConfigConfigInfoPicTurnList.cityName = cityName;
  }
  final String? cityId = jsonConvert.convert<String>(json['city_id']);
  if (cityId != null) {
    secondConfigConfigInfoPicTurnList.cityId = cityId;
  }
  final String? showUrl = jsonConvert.convert<String>(json['show_url']);
  if (showUrl != null) {
    secondConfigConfigInfoPicTurnList.showUrl = showUrl;
  }
  final String? lon = jsonConvert.convert<String>(json['lon']);
  if (lon != null) {
    secondConfigConfigInfoPicTurnList.lon = lon;
  }
  final String? lat = jsonConvert.convert<String>(json['lat']);
  if (lat != null) {
    secondConfigConfigInfoPicTurnList.lat = lat;
  }
  final String? address = jsonConvert.convert<String>(json['address']);
  if (address != null) {
    secondConfigConfigInfoPicTurnList.address = address;
  }
  final List<dynamic>? threadTags = (json['thread_tags'] as List<dynamic>?)
      ?.map(
          (e) => e)
      .toList();
  if (threadTags != null) {
    secondConfigConfigInfoPicTurnList.threadTags = threadTags;
  }
  final String? threadType = jsonConvert.convert<String>(json['thread_type']);
  if (threadType != null) {
    secondConfigConfigInfoPicTurnList.threadType = threadType;
  }
  final bool? threadExp = jsonConvert.convert<bool>(json['thread_exp']);
  if (threadExp != null) {
    secondConfigConfigInfoPicTurnList.threadExp = threadExp;
  }
  final bool? userHasExp = jsonConvert.convert<bool>(json['user_has_exp']);
  if (userHasExp != null) {
    secondConfigConfigInfoPicTurnList.userHasExp = userHasExp;
  }
  final String? videoAddr = jsonConvert.convert<String>(json['video_addr']);
  if (videoAddr != null) {
    secondConfigConfigInfoPicTurnList.videoAddr = videoAddr;
  }
  final String? videoAddrPic = jsonConvert.convert<String>(
      json['video_addr_pic']);
  if (videoAddrPic != null) {
    secondConfigConfigInfoPicTurnList.videoAddrPic = videoAddrPic;
  }
  final String? searchSubject = jsonConvert.convert<String>(
      json['search_subject']);
  if (searchSubject != null) {
    secondConfigConfigInfoPicTurnList.searchSubject = searchSubject;
  }
  final String? searchContent = jsonConvert.convert<String>(
      json['search_content']);
  if (searchContent != null) {
    secondConfigConfigInfoPicTurnList.searchContent = searchContent;
  }
  final String? showStyle = jsonConvert.convert<String>(json['show_style']);
  if (showStyle != null) {
    secondConfigConfigInfoPicTurnList.showStyle = showStyle;
  }
  return secondConfigConfigInfoPicTurnList;
}

Map<String, dynamic> $SecondConfigConfigInfoPicTurnListToJson(
    SecondConfigConfigInfoPicTurnList entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['fid'] = entity.fid;
  data['ref_pid'] = entity.refPid;
  data['ref_tid'] = entity.refTid;
  data['tid'] = entity.tid;
  data['author'] = entity.author.toJson();
  data['subject'] = entity.subject;
  data['content'] = entity.content;
  data['images'] = entity.images;
  data['first_pic_url'] = entity.firstPicUrl;
  data['thread'] = entity.thread.toJson();
  data['created_at'] = entity.createdAt;
  data['order'] = entity.order;
  data['online_time'] = entity.onlineTime;
  data['source'] = entity.source;
  data['stick'] = entity.stick;
  data['outsite_url'] = entity.outsiteUrl;
  data['go_to_url'] = entity.goToUrl;
  data['city_name'] = entity.cityName;
  data['city_id'] = entity.cityId;
  data['show_url'] = entity.showUrl;
  data['lon'] = entity.lon;
  data['lat'] = entity.lat;
  data['address'] = entity.address;
  data['thread_tags'] = entity.threadTags;
  data['thread_type'] = entity.threadType;
  data['thread_exp'] = entity.threadExp;
  data['user_has_exp'] = entity.userHasExp;
  data['video_addr'] = entity.videoAddr;
  data['video_addr_pic'] = entity.videoAddrPic;
  data['search_subject'] = entity.searchSubject;
  data['search_content'] = entity.searchContent;
  data['show_style'] = entity.showStyle;
  return data;
}

extension SecondConfigConfigInfoPicTurnListExtension on SecondConfigConfigInfoPicTurnList {
  SecondConfigConfigInfoPicTurnList copyWith({
    String? fid,
    String? refPid,
    String? refTid,
    String? tid,
    SecondConfigConfigInfoPicTurnListAuthor? author,
    String? subject,
    String? content,
    String? images,
    String? firstPicUrl,
    SecondConfigConfigInfoPicTurnListThread? thread,
    String? createdAt,
    String? order,
    String? onlineTime,
    String? source,
    String? stick,
    String? outsiteUrl,
    String? goToUrl,
    String? cityName,
    String? cityId,
    String? showUrl,
    String? lon,
    String? lat,
    String? address,
    List<dynamic>? threadTags,
    String? threadType,
    bool? threadExp,
    bool? userHasExp,
    String? videoAddr,
    String? videoAddrPic,
    String? searchSubject,
    String? searchContent,
    String? showStyle,
  }) {
    return SecondConfigConfigInfoPicTurnList()
      ..fid = fid ?? this.fid
      ..refPid = refPid ?? this.refPid
      ..refTid = refTid ?? this.refTid
      ..tid = tid ?? this.tid
      ..author = author ?? this.author
      ..subject = subject ?? this.subject
      ..content = content ?? this.content
      ..images = images ?? this.images
      ..firstPicUrl = firstPicUrl ?? this.firstPicUrl
      ..thread = thread ?? this.thread
      ..createdAt = createdAt ?? this.createdAt
      ..order = order ?? this.order
      ..onlineTime = onlineTime ?? this.onlineTime
      ..source = source ?? this.source
      ..stick = stick ?? this.stick
      ..outsiteUrl = outsiteUrl ?? this.outsiteUrl
      ..goToUrl = goToUrl ?? this.goToUrl
      ..cityName = cityName ?? this.cityName
      ..cityId = cityId ?? this.cityId
      ..showUrl = showUrl ?? this.showUrl
      ..lon = lon ?? this.lon
      ..lat = lat ?? this.lat
      ..address = address ?? this.address
      ..threadTags = threadTags ?? this.threadTags
      ..threadType = threadType ?? this.threadType
      ..threadExp = threadExp ?? this.threadExp
      ..userHasExp = userHasExp ?? this.userHasExp
      ..videoAddr = videoAddr ?? this.videoAddr
      ..videoAddrPic = videoAddrPic ?? this.videoAddrPic
      ..searchSubject = searchSubject ?? this.searchSubject
      ..searchContent = searchContent ?? this.searchContent
      ..showStyle = showStyle ?? this.showStyle;
  }
}

SecondConfigConfigInfoPicTurnListAuthor $SecondConfigConfigInfoPicTurnListAuthorFromJson(
    Map<String, dynamic> json) {
  final SecondConfigConfigInfoPicTurnListAuthor secondConfigConfigInfoPicTurnListAuthor = SecondConfigConfigInfoPicTurnListAuthor();
  final String? uid = jsonConvert.convert<String>(json['uid']);
  if (uid != null) {
    secondConfigConfigInfoPicTurnListAuthor.uid = uid;
  }
  final String? userName = jsonConvert.convert<String>(json['user_name']);
  if (userName != null) {
    secondConfigConfigInfoPicTurnListAuthor.userName = userName;
  }
  final String? status = jsonConvert.convert<String>(json['status']);
  if (status != null) {
    secondConfigConfigInfoPicTurnListAuthor.status = status;
  }
  final String? sign = jsonConvert.convert<String>(json['sign']);
  if (sign != null) {
    secondConfigConfigInfoPicTurnListAuthor.sign = sign;
  }
  final String? warning = jsonConvert.convert<String>(json['warning']);
  if (warning != null) {
    secondConfigConfigInfoPicTurnListAuthor.warning = warning;
  }
  final String? avatar = jsonConvert.convert<String>(json['avatar']);
  if (avatar != null) {
    secondConfigConfigInfoPicTurnListAuthor.avatar = avatar;
  }
  final String? verify = jsonConvert.convert<String>(json['verify']);
  if (verify != null) {
    secondConfigConfigInfoPicTurnListAuthor.verify = verify;
  }
  final String? highVerify = jsonConvert.convert<String>(json['high_verify']);
  if (highVerify != null) {
    secondConfigConfigInfoPicTurnListAuthor.highVerify = highVerify;
  }
  final String? honourVerify = jsonConvert.convert<String>(
      json['honour_verify']);
  if (honourVerify != null) {
    secondConfigConfigInfoPicTurnListAuthor.honourVerify = honourVerify;
  }
  final String? verifyNew = jsonConvert.convert<String>(json['verify_new']);
  if (verifyNew != null) {
    secondConfigConfigInfoPicTurnListAuthor.verifyNew = verifyNew;
  }
  final String? verifyDesc = jsonConvert.convert<String>(json['verify_desc']);
  if (verifyDesc != null) {
    secondConfigConfigInfoPicTurnListAuthor.verifyDesc = verifyDesc;
  }
  final String? gender = jsonConvert.convert<String>(json['gender']);
  if (gender != null) {
    secondConfigConfigInfoPicTurnListAuthor.gender = gender;
  }
  final String? honourDesc = jsonConvert.convert<String>(json['honour_desc']);
  if (honourDesc != null) {
    secondConfigConfigInfoPicTurnListAuthor.honourDesc = honourDesc;
  }
  final String? highDesc = jsonConvert.convert<String>(json['high_desc']);
  if (highDesc != null) {
    secondConfigConfigInfoPicTurnListAuthor.highDesc = highDesc;
  }
  final String? boardPerm = jsonConvert.convert<String>(json['board_perm']);
  if (boardPerm != null) {
    secondConfigConfigInfoPicTurnListAuthor.boardPerm = boardPerm;
  }
  final String? gid = jsonConvert.convert<String>(json['gid']);
  if (gid != null) {
    secondConfigConfigInfoPicTurnListAuthor.gid = gid;
  }
  final String? groupRank = jsonConvert.convert<String>(json['group_rank']);
  if (groupRank != null) {
    secondConfigConfigInfoPicTurnListAuthor.groupRank = groupRank;
  }
  final String? groupName = jsonConvert.convert<String>(json['group_name']);
  if (groupName != null) {
    secondConfigConfigInfoPicTurnListAuthor.groupName = groupName;
  }
  final bool? isTenYear = jsonConvert.convert<bool>(json['is_ten_year']);
  if (isTenYear != null) {
    secondConfigConfigInfoPicTurnListAuthor.isTenYear = isTenYear;
  }
  final bool? shiJiaShangJia = jsonConvert.convert<bool>(
      json['shi_jia_shang_jia']);
  if (shiJiaShangJia != null) {
    secondConfigConfigInfoPicTurnListAuthor.shiJiaShangJia = shiJiaShangJia;
  }
  final String? shiJiaShangJiaDesc = jsonConvert.convert<String>(
      json['shi_jia_shang_jia_desc']);
  if (shiJiaShangJiaDesc != null) {
    secondConfigConfigInfoPicTurnListAuthor.shiJiaShangJiaDesc =
        shiJiaShangJiaDesc;
  }
  final List<dynamic>? medals = (json['medals'] as List<dynamic>?)?.map(
          (e) => e).toList();
  if (medals != null) {
    secondConfigConfigInfoPicTurnListAuthor.medals = medals;
  }
  final String? pendantId = jsonConvert.convert<String>(json['pendant_id']);
  if (pendantId != null) {
    secondConfigConfigInfoPicTurnListAuthor.pendantId = pendantId;
  }
  final String? cityname = jsonConvert.convert<String>(json['cityname']);
  if (cityname != null) {
    secondConfigConfigInfoPicTurnListAuthor.cityname = cityname;
  }
  final String? originalAvatar = jsonConvert.convert<String>(
      json['original_avatar']);
  if (originalAvatar != null) {
    secondConfigConfigInfoPicTurnListAuthor.originalAvatar = originalAvatar;
  }
  final String? smallAvatar = jsonConvert.convert<String>(json['small_avatar']);
  if (smallAvatar != null) {
    secondConfigConfigInfoPicTurnListAuthor.smallAvatar = smallAvatar;
  }
  final String? latitude = jsonConvert.convert<String>(json['latitude']);
  if (latitude != null) {
    secondConfigConfigInfoPicTurnListAuthor.latitude = latitude;
  }
  final String? longitude = jsonConvert.convert<String>(json['longitude']);
  if (longitude != null) {
    secondConfigConfigInfoPicTurnListAuthor.longitude = longitude;
  }
  final String? totalZanCount = jsonConvert.convert<String>(
      json['total_zan_count']);
  if (totalZanCount != null) {
    secondConfigConfigInfoPicTurnListAuthor.totalZanCount = totalZanCount;
  }
  final String? totalFansCount = jsonConvert.convert<String>(
      json['total_fans_count']);
  if (totalFansCount != null) {
    secondConfigConfigInfoPicTurnListAuthor.totalFansCount = totalFansCount;
  }
  final String? totalFavCount = jsonConvert.convert<String>(
      json['total_fav_count']);
  if (totalFavCount != null) {
    secondConfigConfigInfoPicTurnListAuthor.totalFavCount = totalFavCount;
  }
  return secondConfigConfigInfoPicTurnListAuthor;
}

Map<String, dynamic> $SecondConfigConfigInfoPicTurnListAuthorToJson(
    SecondConfigConfigInfoPicTurnListAuthor entity) {
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

extension SecondConfigConfigInfoPicTurnListAuthorExtension on SecondConfigConfigInfoPicTurnListAuthor {
  SecondConfigConfigInfoPicTurnListAuthor copyWith({
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
    return SecondConfigConfigInfoPicTurnListAuthor()
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

SecondConfigConfigInfoPicTurnListThread $SecondConfigConfigInfoPicTurnListThreadFromJson(
    Map<String, dynamic> json) {
  final SecondConfigConfigInfoPicTurnListThread secondConfigConfigInfoPicTurnListThread = SecondConfigConfigInfoPicTurnListThread();
  final String? isPrivate = jsonConvert.convert<String>(json['is_private']);
  if (isPrivate != null) {
    secondConfigConfigInfoPicTurnListThread.isPrivate = isPrivate;
  }
  final String? cityid = jsonConvert.convert<String>(json['cityid']);
  if (cityid != null) {
    secondConfigConfigInfoPicTurnListThread.cityid = cityid;
  }
  final String? cityname = jsonConvert.convert<String>(json['cityname']);
  if (cityname != null) {
    secondConfigConfigInfoPicTurnListThread.cityname = cityname;
  }
  final String? tid = jsonConvert.convert<String>(json['tid']);
  if (tid != null) {
    secondConfigConfigInfoPicTurnListThread.tid = tid;
  }
  final String? fid = jsonConvert.convert<String>(json['fid']);
  if (fid != null) {
    secondConfigConfigInfoPicTurnListThread.fid = fid;
  }
  final String? pid = jsonConvert.convert<String>(json['pid']);
  if (pid != null) {
    secondConfigConfigInfoPicTurnListThread.pid = pid;
  }
  final String? fname = jsonConvert.convert<String>(json['fname']);
  if (fname != null) {
    secondConfigConfigInfoPicTurnListThread.fname = fname;
  }
  final String? subject = jsonConvert.convert<String>(json['subject']);
  if (subject != null) {
    secondConfigConfigInfoPicTurnListThread.subject = subject;
  }
  final SecondConfigConfigInfoPicTurnListThreadAuthor? author = jsonConvert
      .convert<SecondConfigConfigInfoPicTurnListThreadAuthor>(json['author']);
  if (author != null) {
    secondConfigConfigInfoPicTurnListThread.author = author;
  }
  final String? authorUid = jsonConvert.convert<String>(json['author_uid']);
  if (authorUid != null) {
    secondConfigConfigInfoPicTurnListThread.authorUid = authorUid;
  }
  final String? category = jsonConvert.convert<String>(json['category']);
  if (category != null) {
    secondConfigConfigInfoPicTurnListThread.category = category;
  }
  final String? threadType = jsonConvert.convert<String>(json['thread_type']);
  if (threadType != null) {
    secondConfigConfigInfoPicTurnListThread.threadType = threadType;
  }
  final String? views = jsonConvert.convert<String>(json['views']);
  if (views != null) {
    secondConfigConfigInfoPicTurnListThread.views = views;
  }
  final String? replies = jsonConvert.convert<String>(json['replies']);
  if (replies != null) {
    secondConfigConfigInfoPicTurnListThread.replies = replies;
  }
  final String? favorites = jsonConvert.convert<String>(json['favorites']);
  if (favorites != null) {
    secondConfigConfigInfoPicTurnListThread.favorites = favorites;
  }
  final String? status = jsonConvert.convert<String>(json['status']);
  if (status != null) {
    secondConfigConfigInfoPicTurnListThread.status = status;
  }
  final String? extra = jsonConvert.convert<String>(json['extra']);
  if (extra != null) {
    secondConfigConfigInfoPicTurnListThread.extra = extra;
  }
  final String? closed = jsonConvert.convert<String>(json['closed']);
  if (closed != null) {
    secondConfigConfigInfoPicTurnListThread.closed = closed;
  }
  final String? lastPostTime = jsonConvert.convert<String>(
      json['last_post_time']);
  if (lastPostTime != null) {
    secondConfigConfigInfoPicTurnListThread.lastPostTime = lastPostTime;
  }
  final String? lastPostAuthor = jsonConvert.convert<String>(
      json['last_post_author']);
  if (lastPostAuthor != null) {
    secondConfigConfigInfoPicTurnListThread.lastPostAuthor = lastPostAuthor;
  }
  final String? lastPostAuthorUid = jsonConvert.convert<String>(
      json['last_post_author_uid']);
  if (lastPostAuthorUid != null) {
    secondConfigConfigInfoPicTurnListThread.lastPostAuthorUid =
        lastPostAuthorUid;
  }
  final String? lastPid = jsonConvert.convert<String>(json['last_pid']);
  if (lastPid != null) {
    secondConfigConfigInfoPicTurnListThread.lastPid = lastPid;
  }
  final String? firstPid = jsonConvert.convert<String>(json['first_pid']);
  if (firstPid != null) {
    secondConfigConfigInfoPicTurnListThread.firstPid = firstPid;
  }
  final String? url = jsonConvert.convert<String>(json['url']);
  if (url != null) {
    secondConfigConfigInfoPicTurnListThread.url = url;
  }
  final String? refFid = jsonConvert.convert<String>(json['ref_fid']);
  if (refFid != null) {
    secondConfigConfigInfoPicTurnListThread.refFid = refFid;
  }
  final String? refTid = jsonConvert.convert<String>(json['ref_tid']);
  if (refTid != null) {
    secondConfigConfigInfoPicTurnListThread.refTid = refTid;
  }
  final String? createdAt = jsonConvert.convert<String>(json['created_at']);
  if (createdAt != null) {
    secondConfigConfigInfoPicTurnListThread.createdAt = createdAt;
  }
  final List<dynamic>? threadTags = (json['thread_tags'] as List<dynamic>?)
      ?.map(
          (e) => e)
      .toList();
  if (threadTags != null) {
    secondConfigConfigInfoPicTurnListThread.threadTags = threadTags;
  }
  final bool? holdVideo = jsonConvert.convert<bool>(json['hold_video']);
  if (holdVideo != null) {
    secondConfigConfigInfoPicTurnListThread.holdVideo = holdVideo;
  }
  final String? searchSubject = jsonConvert.convert<String>(
      json['search_subject']);
  if (searchSubject != null) {
    secondConfigConfigInfoPicTurnListThread.searchSubject = searchSubject;
  }
  final String? searchContent = jsonConvert.convert<String>(
      json['search_content']);
  if (searchContent != null) {
    secondConfigConfigInfoPicTurnListThread.searchContent = searchContent;
  }
  final String? ratePlusNumber = jsonConvert.convert<String>(
      json['rate_plus_number']);
  if (ratePlusNumber != null) {
    secondConfigConfigInfoPicTurnListThread.ratePlusNumber = ratePlusNumber;
  }
  final String? topicListStick = jsonConvert.convert<String>(
      json['topic_list_stick']);
  if (topicListStick != null) {
    secondConfigConfigInfoPicTurnListThread.topicListStick = topicListStick;
  }
  final String? address = jsonConvert.convert<String>(json['address']);
  if (address != null) {
    secondConfigConfigInfoPicTurnListThread.address = address;
  }
  final String? tagStr = jsonConvert.convert<String>(json['tag_str']);
  if (tagStr != null) {
    secondConfigConfigInfoPicTurnListThread.tagStr = tagStr;
  }
  final List<dynamic>? attachments = (json['attachments'] as List<dynamic>?)
      ?.map(
          (e) => e)
      .toList();
  if (attachments != null) {
    secondConfigConfigInfoPicTurnListThread.attachments = attachments;
  }
  final String? forumCategoryName = jsonConvert.convert<String>(
      json['forum_category_name']);
  if (forumCategoryName != null) {
    secondConfigConfigInfoPicTurnListThread.forumCategoryName =
        forumCategoryName;
  }
  return secondConfigConfigInfoPicTurnListThread;
}

Map<String, dynamic> $SecondConfigConfigInfoPicTurnListThreadToJson(
    SecondConfigConfigInfoPicTurnListThread entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['is_private'] = entity.isPrivate;
  data['cityid'] = entity.cityid;
  data['cityname'] = entity.cityname;
  data['tid'] = entity.tid;
  data['fid'] = entity.fid;
  data['pid'] = entity.pid;
  data['fname'] = entity.fname;
  data['subject'] = entity.subject;
  data['author'] = entity.author.toJson();
  data['author_uid'] = entity.authorUid;
  data['category'] = entity.category;
  data['thread_type'] = entity.threadType;
  data['views'] = entity.views;
  data['replies'] = entity.replies;
  data['favorites'] = entity.favorites;
  data['status'] = entity.status;
  data['extra'] = entity.extra;
  data['closed'] = entity.closed;
  data['last_post_time'] = entity.lastPostTime;
  data['last_post_author'] = entity.lastPostAuthor;
  data['last_post_author_uid'] = entity.lastPostAuthorUid;
  data['last_pid'] = entity.lastPid;
  data['first_pid'] = entity.firstPid;
  data['url'] = entity.url;
  data['ref_fid'] = entity.refFid;
  data['ref_tid'] = entity.refTid;
  data['created_at'] = entity.createdAt;
  data['thread_tags'] = entity.threadTags;
  data['hold_video'] = entity.holdVideo;
  data['search_subject'] = entity.searchSubject;
  data['search_content'] = entity.searchContent;
  data['rate_plus_number'] = entity.ratePlusNumber;
  data['topic_list_stick'] = entity.topicListStick;
  data['address'] = entity.address;
  data['tag_str'] = entity.tagStr;
  data['attachments'] = entity.attachments;
  data['forum_category_name'] = entity.forumCategoryName;
  return data;
}

extension SecondConfigConfigInfoPicTurnListThreadExtension on SecondConfigConfigInfoPicTurnListThread {
  SecondConfigConfigInfoPicTurnListThread copyWith({
    String? isPrivate,
    String? cityid,
    String? cityname,
    String? tid,
    String? fid,
    String? pid,
    String? fname,
    String? subject,
    SecondConfigConfigInfoPicTurnListThreadAuthor? author,
    String? authorUid,
    String? category,
    String? threadType,
    String? views,
    String? replies,
    String? favorites,
    String? status,
    String? extra,
    String? closed,
    String? lastPostTime,
    String? lastPostAuthor,
    String? lastPostAuthorUid,
    String? lastPid,
    String? firstPid,
    String? url,
    String? refFid,
    String? refTid,
    String? createdAt,
    List<dynamic>? threadTags,
    bool? holdVideo,
    String? searchSubject,
    String? searchContent,
    String? ratePlusNumber,
    String? topicListStick,
    String? address,
    String? tagStr,
    List<dynamic>? attachments,
    String? forumCategoryName,
  }) {
    return SecondConfigConfigInfoPicTurnListThread()
      ..isPrivate = isPrivate ?? this.isPrivate
      ..cityid = cityid ?? this.cityid
      ..cityname = cityname ?? this.cityname
      ..tid = tid ?? this.tid
      ..fid = fid ?? this.fid
      ..pid = pid ?? this.pid
      ..fname = fname ?? this.fname
      ..subject = subject ?? this.subject
      ..author = author ?? this.author
      ..authorUid = authorUid ?? this.authorUid
      ..category = category ?? this.category
      ..threadType = threadType ?? this.threadType
      ..views = views ?? this.views
      ..replies = replies ?? this.replies
      ..favorites = favorites ?? this.favorites
      ..status = status ?? this.status
      ..extra = extra ?? this.extra
      ..closed = closed ?? this.closed
      ..lastPostTime = lastPostTime ?? this.lastPostTime
      ..lastPostAuthor = lastPostAuthor ?? this.lastPostAuthor
      ..lastPostAuthorUid = lastPostAuthorUid ?? this.lastPostAuthorUid
      ..lastPid = lastPid ?? this.lastPid
      ..firstPid = firstPid ?? this.firstPid
      ..url = url ?? this.url
      ..refFid = refFid ?? this.refFid
      ..refTid = refTid ?? this.refTid
      ..createdAt = createdAt ?? this.createdAt
      ..threadTags = threadTags ?? this.threadTags
      ..holdVideo = holdVideo ?? this.holdVideo
      ..searchSubject = searchSubject ?? this.searchSubject
      ..searchContent = searchContent ?? this.searchContent
      ..ratePlusNumber = ratePlusNumber ?? this.ratePlusNumber
      ..topicListStick = topicListStick ?? this.topicListStick
      ..address = address ?? this.address
      ..tagStr = tagStr ?? this.tagStr
      ..attachments = attachments ?? this.attachments
      ..forumCategoryName = forumCategoryName ?? this.forumCategoryName;
  }
}

SecondConfigConfigInfoPicTurnListThreadAuthor $SecondConfigConfigInfoPicTurnListThreadAuthorFromJson(
    Map<String, dynamic> json) {
  final SecondConfigConfigInfoPicTurnListThreadAuthor secondConfigConfigInfoPicTurnListThreadAuthor = SecondConfigConfigInfoPicTurnListThreadAuthor();
  final String? uid = jsonConvert.convert<String>(json['uid']);
  if (uid != null) {
    secondConfigConfigInfoPicTurnListThreadAuthor.uid = uid;
  }
  final String? userName = jsonConvert.convert<String>(json['user_name']);
  if (userName != null) {
    secondConfigConfigInfoPicTurnListThreadAuthor.userName = userName;
  }
  final String? status = jsonConvert.convert<String>(json['status']);
  if (status != null) {
    secondConfigConfigInfoPicTurnListThreadAuthor.status = status;
  }
  final String? sign = jsonConvert.convert<String>(json['sign']);
  if (sign != null) {
    secondConfigConfigInfoPicTurnListThreadAuthor.sign = sign;
  }
  final String? warning = jsonConvert.convert<String>(json['warning']);
  if (warning != null) {
    secondConfigConfigInfoPicTurnListThreadAuthor.warning = warning;
  }
  final String? avatar = jsonConvert.convert<String>(json['avatar']);
  if (avatar != null) {
    secondConfigConfigInfoPicTurnListThreadAuthor.avatar = avatar;
  }
  final String? verify = jsonConvert.convert<String>(json['verify']);
  if (verify != null) {
    secondConfigConfigInfoPicTurnListThreadAuthor.verify = verify;
  }
  final String? highVerify = jsonConvert.convert<String>(json['high_verify']);
  if (highVerify != null) {
    secondConfigConfigInfoPicTurnListThreadAuthor.highVerify = highVerify;
  }
  final String? honourVerify = jsonConvert.convert<String>(
      json['honour_verify']);
  if (honourVerify != null) {
    secondConfigConfigInfoPicTurnListThreadAuthor.honourVerify = honourVerify;
  }
  final String? verifyNew = jsonConvert.convert<String>(json['verify_new']);
  if (verifyNew != null) {
    secondConfigConfigInfoPicTurnListThreadAuthor.verifyNew = verifyNew;
  }
  final String? verifyDesc = jsonConvert.convert<String>(json['verify_desc']);
  if (verifyDesc != null) {
    secondConfigConfigInfoPicTurnListThreadAuthor.verifyDesc = verifyDesc;
  }
  final String? gender = jsonConvert.convert<String>(json['gender']);
  if (gender != null) {
    secondConfigConfigInfoPicTurnListThreadAuthor.gender = gender;
  }
  final String? honourDesc = jsonConvert.convert<String>(json['honour_desc']);
  if (honourDesc != null) {
    secondConfigConfigInfoPicTurnListThreadAuthor.honourDesc = honourDesc;
  }
  final String? highDesc = jsonConvert.convert<String>(json['high_desc']);
  if (highDesc != null) {
    secondConfigConfigInfoPicTurnListThreadAuthor.highDesc = highDesc;
  }
  final String? boardPerm = jsonConvert.convert<String>(json['board_perm']);
  if (boardPerm != null) {
    secondConfigConfigInfoPicTurnListThreadAuthor.boardPerm = boardPerm;
  }
  final String? gid = jsonConvert.convert<String>(json['gid']);
  if (gid != null) {
    secondConfigConfigInfoPicTurnListThreadAuthor.gid = gid;
  }
  final String? groupRank = jsonConvert.convert<String>(json['group_rank']);
  if (groupRank != null) {
    secondConfigConfigInfoPicTurnListThreadAuthor.groupRank = groupRank;
  }
  final String? groupName = jsonConvert.convert<String>(json['group_name']);
  if (groupName != null) {
    secondConfigConfigInfoPicTurnListThreadAuthor.groupName = groupName;
  }
  final bool? isTenYear = jsonConvert.convert<bool>(json['is_ten_year']);
  if (isTenYear != null) {
    secondConfigConfigInfoPicTurnListThreadAuthor.isTenYear = isTenYear;
  }
  final bool? shiJiaShangJia = jsonConvert.convert<bool>(
      json['shi_jia_shang_jia']);
  if (shiJiaShangJia != null) {
    secondConfigConfigInfoPicTurnListThreadAuthor.shiJiaShangJia =
        shiJiaShangJia;
  }
  final String? shiJiaShangJiaDesc = jsonConvert.convert<String>(
      json['shi_jia_shang_jia_desc']);
  if (shiJiaShangJiaDesc != null) {
    secondConfigConfigInfoPicTurnListThreadAuthor.shiJiaShangJiaDesc =
        shiJiaShangJiaDesc;
  }
  final List<dynamic>? medals = (json['medals'] as List<dynamic>?)?.map(
          (e) => e).toList();
  if (medals != null) {
    secondConfigConfigInfoPicTurnListThreadAuthor.medals = medals;
  }
  final String? pendantId = jsonConvert.convert<String>(json['pendant_id']);
  if (pendantId != null) {
    secondConfigConfigInfoPicTurnListThreadAuthor.pendantId = pendantId;
  }
  final String? cityname = jsonConvert.convert<String>(json['cityname']);
  if (cityname != null) {
    secondConfigConfigInfoPicTurnListThreadAuthor.cityname = cityname;
  }
  final String? originalAvatar = jsonConvert.convert<String>(
      json['original_avatar']);
  if (originalAvatar != null) {
    secondConfigConfigInfoPicTurnListThreadAuthor.originalAvatar =
        originalAvatar;
  }
  final String? smallAvatar = jsonConvert.convert<String>(json['small_avatar']);
  if (smallAvatar != null) {
    secondConfigConfigInfoPicTurnListThreadAuthor.smallAvatar = smallAvatar;
  }
  final String? latitude = jsonConvert.convert<String>(json['latitude']);
  if (latitude != null) {
    secondConfigConfigInfoPicTurnListThreadAuthor.latitude = latitude;
  }
  final String? longitude = jsonConvert.convert<String>(json['longitude']);
  if (longitude != null) {
    secondConfigConfigInfoPicTurnListThreadAuthor.longitude = longitude;
  }
  final String? totalZanCount = jsonConvert.convert<String>(
      json['total_zan_count']);
  if (totalZanCount != null) {
    secondConfigConfigInfoPicTurnListThreadAuthor.totalZanCount = totalZanCount;
  }
  final String? totalFansCount = jsonConvert.convert<String>(
      json['total_fans_count']);
  if (totalFansCount != null) {
    secondConfigConfigInfoPicTurnListThreadAuthor.totalFansCount =
        totalFansCount;
  }
  final String? totalFavCount = jsonConvert.convert<String>(
      json['total_fav_count']);
  if (totalFavCount != null) {
    secondConfigConfigInfoPicTurnListThreadAuthor.totalFavCount = totalFavCount;
  }
  return secondConfigConfigInfoPicTurnListThreadAuthor;
}

Map<String, dynamic> $SecondConfigConfigInfoPicTurnListThreadAuthorToJson(
    SecondConfigConfigInfoPicTurnListThreadAuthor entity) {
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

extension SecondConfigConfigInfoPicTurnListThreadAuthorExtension on SecondConfigConfigInfoPicTurnListThreadAuthor {
  SecondConfigConfigInfoPicTurnListThreadAuthor copyWith({
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
    return SecondConfigConfigInfoPicTurnListThreadAuthor()
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