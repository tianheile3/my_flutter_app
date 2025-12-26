import 'package:flutter_study/generated/json/base/json_convert_content.dart';
import 'package:flutter_study/api/response/thread_page_entity.dart';

ThreadPageEntity $ThreadPageEntityFromJson(Map<String, dynamic> json) {
  final ThreadPageEntity threadPageEntity = ThreadPageEntity();
  final int? code = jsonConvert.convert<int>(json['code']);
  if (code != null) {
    threadPageEntity.code = code;
  }
  final String? message = jsonConvert.convert<String>(json['message']);
  if (message != null) {
    threadPageEntity.message = message;
  }
  final ThreadPageForumInfo? forumInfo = jsonConvert.convert<
      ThreadPageForumInfo>(json['forum_info']);
  if (forumInfo != null) {
    threadPageEntity.forumInfo = forumInfo;
  }
  final List<ThreadPageThreadList>? threadList = (json['thread_list'] as List<
      dynamic>?)
      ?.map(
          (e) =>
      jsonConvert.convert<ThreadPageThreadList>(e) as ThreadPageThreadList)
      .toList();
  if (threadList != null) {
    threadPageEntity.threadList = threadList;
  }
  final List<
      ThreadPageStickThreadList>? stickThreadList = (json['stick_thread_list'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<ThreadPageStickThreadList>(
          e) as ThreadPageStickThreadList).toList();
  if (stickThreadList != null) {
    threadPageEntity.stickThreadList = stickThreadList;
  }
  final int? totalCount = jsonConvert.convert<int>(json['total_count']);
  if (totalCount != null) {
    threadPageEntity.totalCount = totalCount;
  }
  final int? page = jsonConvert.convert<int>(json['page']);
  if (page != null) {
    threadPageEntity.page = page;
  }
  final int? perPage = jsonConvert.convert<int>(json['per_page']);
  if (perPage != null) {
    threadPageEntity.perPage = perPage;
  }
  return threadPageEntity;
}

Map<String, dynamic> $ThreadPageEntityToJson(ThreadPageEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['code'] = entity.code;
  data['message'] = entity.message;
  data['forum_info'] = entity.forumInfo.toJson();
  data['thread_list'] = entity.threadList.map((v) => v.toJson()).toList();
  data['stick_thread_list'] =
      entity.stickThreadList.map((v) => v.toJson()).toList();
  data['total_count'] = entity.totalCount;
  data['page'] = entity.page;
  data['per_page'] = entity.perPage;
  return data;
}

extension ThreadPageEntityExtension on ThreadPageEntity {
  ThreadPageEntity copyWith({
    int? code,
    String? message,
    ThreadPageForumInfo? forumInfo,
    List<ThreadPageThreadList>? threadList,
    List<ThreadPageStickThreadList>? stickThreadList,
    int? totalCount,
    int? page,
    int? perPage,
  }) {
    return ThreadPageEntity()
      ..code = code ?? this.code
      ..message = message ?? this.message
      ..forumInfo = forumInfo ?? this.forumInfo
      ..threadList = threadList ?? this.threadList
      ..stickThreadList = stickThreadList ?? this.stickThreadList
      ..totalCount = totalCount ?? this.totalCount
      ..page = page ?? this.page
      ..perPage = perPage ?? this.perPage;
  }
}

ThreadPageForumInfo $ThreadPageForumInfoFromJson(Map<String, dynamic> json) {
  final ThreadPageForumInfo threadPageForumInfo = ThreadPageForumInfo();
  final String? fid = jsonConvert.convert<String>(json['fid']);
  if (fid != null) {
    threadPageForumInfo.fid = fid;
  }
  final String? category = jsonConvert.convert<String>(json['category']);
  if (category != null) {
    threadPageForumInfo.category = category;
  }
  final String? fup = jsonConvert.convert<String>(json['fup']);
  if (fup != null) {
    threadPageForumInfo.fup = fup;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    threadPageForumInfo.name = name;
  }
  final String? location = jsonConvert.convert<String>(json['location']);
  if (location != null) {
    threadPageForumInfo.location = location;
  }
  final String? icon = jsonConvert.convert<String>(json['icon']);
  if (icon != null) {
    threadPageForumInfo.icon = icon;
  }
  final String? url = jsonConvert.convert<String>(json['url']);
  if (url != null) {
    threadPageForumInfo.url = url;
  }
  final bool? isMobileForum = jsonConvert.convert<bool>(
      json['is_mobile_forum']);
  if (isMobileForum != null) {
    threadPageForumInfo.isMobileForum = isMobileForum;
  }
  final String? mobileThreadlistStyle = jsonConvert.convert<String>(
      json['mobile_threadlist_style']);
  if (mobileThreadlistStyle != null) {
    threadPageForumInfo.mobileThreadlistStyle = mobileThreadlistStyle;
  }
  final String? mobileRecommendThreadlistStyle = jsonConvert.convert<String>(
      json['mobile_recommend_threadlist_style']);
  if (mobileRecommendThreadlistStyle != null) {
    threadPageForumInfo.mobileRecommendThreadlistStyle =
        mobileRecommendThreadlistStyle;
  }
  final bool? mobileThreadTheme = jsonConvert.convert<bool>(
      json['mobile_thread_theme']);
  if (mobileThreadTheme != null) {
    threadPageForumInfo.mobileThreadTheme = mobileThreadTheme;
  }
  final String? status = jsonConvert.convert<String>(json['status']);
  if (status != null) {
    threadPageForumInfo.status = status;
  }
  final bool? password = jsonConvert.convert<bool>(json['password']);
  if (password != null) {
    threadPageForumInfo.password = password;
  }
  final String? todayPost = jsonConvert.convert<String>(json['today_post']);
  if (todayPost != null) {
    threadPageForumInfo.todayPost = todayPost;
  }
  final String? totalPost = jsonConvert.convert<String>(json['total_post']);
  if (totalPost != null) {
    threadPageForumInfo.totalPost = totalPost;
  }
  final String? todayThread = jsonConvert.convert<String>(json['today_thread']);
  if (todayThread != null) {
    threadPageForumInfo.todayThread = todayThread;
  }
  final String? totalThread = jsonConvert.convert<String>(json['total_thread']);
  if (totalThread != null) {
    threadPageForumInfo.totalThread = totalThread;
  }
  final String? rssCount = jsonConvert.convert<String>(json['rss_count']);
  if (rssCount != null) {
    threadPageForumInfo.rssCount = rssCount;
  }
  final bool? isPicShow = jsonConvert.convert<bool>(json['is_pic_show']);
  if (isPicShow != null) {
    threadPageForumInfo.isPicShow = isPicShow;
  }
  final String? verify = jsonConvert.convert<String>(json['verify']);
  if (verify != null) {
    threadPageForumInfo.verify = verify;
  }
  final String? description = jsonConvert.convert<String>(json['description']);
  if (description != null) {
    threadPageForumInfo.description = description;
  }
  final List<
      ThreadPageForumInfoTagsList>? tagsList = (json['tags_list'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<ThreadPageForumInfoTagsList>(
          e) as ThreadPageForumInfoTagsList).toList();
  if (tagsList != null) {
    threadPageForumInfo.tagsList = tagsList;
  }
  final bool? showChildrenForum = jsonConvert.convert<bool>(
      json['show_children_forum']);
  if (showChildrenForum != null) {
    threadPageForumInfo.showChildrenForum = showChildrenForum;
  }
  final List<
      ThreadPageForumInfoRecursionForumList>? recursionForumList = (json['recursion_forum_list'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<ThreadPageForumInfoRecursionForumList>(
          e) as ThreadPageForumInfoRecursionForumList).toList();
  if (recursionForumList != null) {
    threadPageForumInfo.recursionForumList = recursionForumList;
  }
  final bool? fav = jsonConvert.convert<bool>(json['fav']);
  if (fav != null) {
    threadPageForumInfo.fav = fav;
  }
  final String? seoDescription = jsonConvert.convert<String>(
      json['seo_description']);
  if (seoDescription != null) {
    threadPageForumInfo.seoDescription = seoDescription;
  }
  final String? defaultSortBy = jsonConvert.convert<String>(
      json['default_sort_by']);
  if (defaultSortBy != null) {
    threadPageForumInfo.defaultSortBy = defaultSortBy;
  }
  final ThreadPageForumInfoCircleCategory? circleCategory = jsonConvert.convert<
      ThreadPageForumInfoCircleCategory>(json['circle_category']);
  if (circleCategory != null) {
    threadPageForumInfo.circleCategory = circleCategory;
  }
  return threadPageForumInfo;
}

Map<String, dynamic> $ThreadPageForumInfoToJson(ThreadPageForumInfo entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['fid'] = entity.fid;
  data['category'] = entity.category;
  data['fup'] = entity.fup;
  data['name'] = entity.name;
  data['location'] = entity.location;
  data['icon'] = entity.icon;
  data['url'] = entity.url;
  data['is_mobile_forum'] = entity.isMobileForum;
  data['mobile_threadlist_style'] = entity.mobileThreadlistStyle;
  data['mobile_recommend_threadlist_style'] =
      entity.mobileRecommendThreadlistStyle;
  data['mobile_thread_theme'] = entity.mobileThreadTheme;
  data['status'] = entity.status;
  data['password'] = entity.password;
  data['today_post'] = entity.todayPost;
  data['total_post'] = entity.totalPost;
  data['today_thread'] = entity.todayThread;
  data['total_thread'] = entity.totalThread;
  data['rss_count'] = entity.rssCount;
  data['is_pic_show'] = entity.isPicShow;
  data['verify'] = entity.verify;
  data['description'] = entity.description;
  data['tags_list'] = entity.tagsList.map((v) => v.toJson()).toList();
  data['show_children_forum'] = entity.showChildrenForum;
  data['recursion_forum_list'] =
      entity.recursionForumList.map((v) => v.toJson()).toList();
  data['fav'] = entity.fav;
  data['seo_description'] = entity.seoDescription;
  data['default_sort_by'] = entity.defaultSortBy;
  data['circle_category'] = entity.circleCategory.toJson();
  return data;
}

extension ThreadPageForumInfoExtension on ThreadPageForumInfo {
  ThreadPageForumInfo copyWith({
    String? fid,
    String? category,
    String? fup,
    String? name,
    String? location,
    String? icon,
    String? url,
    bool? isMobileForum,
    String? mobileThreadlistStyle,
    String? mobileRecommendThreadlistStyle,
    bool? mobileThreadTheme,
    String? status,
    bool? password,
    String? todayPost,
    String? totalPost,
    String? todayThread,
    String? totalThread,
    String? rssCount,
    bool? isPicShow,
    String? verify,
    String? description,
    List<ThreadPageForumInfoTagsList>? tagsList,
    bool? showChildrenForum,
    List<ThreadPageForumInfoRecursionForumList>? recursionForumList,
    bool? fav,
    String? seoDescription,
    String? defaultSortBy,
    ThreadPageForumInfoCircleCategory? circleCategory,
  }) {
    return ThreadPageForumInfo()
      ..fid = fid ?? this.fid
      ..category = category ?? this.category
      ..fup = fup ?? this.fup
      ..name = name ?? this.name
      ..location = location ?? this.location
      ..icon = icon ?? this.icon
      ..url = url ?? this.url
      ..isMobileForum = isMobileForum ?? this.isMobileForum
      ..mobileThreadlistStyle = mobileThreadlistStyle ??
          this.mobileThreadlistStyle
      ..mobileRecommendThreadlistStyle = mobileRecommendThreadlistStyle ??
          this.mobileRecommendThreadlistStyle
      ..mobileThreadTheme = mobileThreadTheme ?? this.mobileThreadTheme
      ..status = status ?? this.status
      ..password = password ?? this.password
      ..todayPost = todayPost ?? this.todayPost
      ..totalPost = totalPost ?? this.totalPost
      ..todayThread = todayThread ?? this.todayThread
      ..totalThread = totalThread ?? this.totalThread
      ..rssCount = rssCount ?? this.rssCount
      ..isPicShow = isPicShow ?? this.isPicShow
      ..verify = verify ?? this.verify
      ..description = description ?? this.description
      ..tagsList = tagsList ?? this.tagsList
      ..showChildrenForum = showChildrenForum ?? this.showChildrenForum
      ..recursionForumList = recursionForumList ?? this.recursionForumList
      ..fav = fav ?? this.fav
      ..seoDescription = seoDescription ?? this.seoDescription
      ..defaultSortBy = defaultSortBy ?? this.defaultSortBy
      ..circleCategory = circleCategory ?? this.circleCategory;
  }
}

ThreadPageForumInfoTagsList $ThreadPageForumInfoTagsListFromJson(
    Map<String, dynamic> json) {
  final ThreadPageForumInfoTagsList threadPageForumInfoTagsList = ThreadPageForumInfoTagsList();
  final String? id = jsonConvert.convert<String>(json['id']);
  if (id != null) {
    threadPageForumInfoTagsList.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    threadPageForumInfoTagsList.name = name;
  }
  final String? canBusiness = jsonConvert.convert<String>(json['can_business']);
  if (canBusiness != null) {
    threadPageForumInfoTagsList.canBusiness = canBusiness;
  }
  final String? logoImgUrl = jsonConvert.convert<String>(json['logo_img_url']);
  if (logoImgUrl != null) {
    threadPageForumInfoTagsList.logoImgUrl = logoImgUrl;
  }
  return threadPageForumInfoTagsList;
}

Map<String, dynamic> $ThreadPageForumInfoTagsListToJson(
    ThreadPageForumInfoTagsList entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['name'] = entity.name;
  data['can_business'] = entity.canBusiness;
  data['logo_img_url'] = entity.logoImgUrl;
  return data;
}

extension ThreadPageForumInfoTagsListExtension on ThreadPageForumInfoTagsList {
  ThreadPageForumInfoTagsList copyWith({
    String? id,
    String? name,
    String? canBusiness,
    String? logoImgUrl,
  }) {
    return ThreadPageForumInfoTagsList()
      ..id = id ?? this.id
      ..name = name ?? this.name
      ..canBusiness = canBusiness ?? this.canBusiness
      ..logoImgUrl = logoImgUrl ?? this.logoImgUrl;
  }
}

ThreadPageForumInfoRecursionForumList $ThreadPageForumInfoRecursionForumListFromJson(
    Map<String, dynamic> json) {
  final ThreadPageForumInfoRecursionForumList threadPageForumInfoRecursionForumList = ThreadPageForumInfoRecursionForumList();
  final String? fid = jsonConvert.convert<String>(json['fid']);
  if (fid != null) {
    threadPageForumInfoRecursionForumList.fid = fid;
  }
  final String? category = jsonConvert.convert<String>(json['category']);
  if (category != null) {
    threadPageForumInfoRecursionForumList.category = category;
  }
  final String? fup = jsonConvert.convert<String>(json['fup']);
  if (fup != null) {
    threadPageForumInfoRecursionForumList.fup = fup;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    threadPageForumInfoRecursionForumList.name = name;
  }
  final String? kind = jsonConvert.convert<String>(json['kind']);
  if (kind != null) {
    threadPageForumInfoRecursionForumList.kind = kind;
  }
  final String? htmlTitle = jsonConvert.convert<String>(json['html_title']);
  if (htmlTitle != null) {
    threadPageForumInfoRecursionForumList.htmlTitle = htmlTitle;
  }
  final String? picListTitle = jsonConvert.convert<String>(
      json['pic_list_title']);
  if (picListTitle != null) {
    threadPageForumInfoRecursionForumList.picListTitle = picListTitle;
  }
  final String? seoDescription = jsonConvert.convert<String>(
      json['seo_description']);
  if (seoDescription != null) {
    threadPageForumInfoRecursionForumList.seoDescription = seoDescription;
  }
  final String? description = jsonConvert.convert<String>(json['description']);
  if (description != null) {
    threadPageForumInfoRecursionForumList.description = description;
  }
  final String? icon = jsonConvert.convert<String>(json['icon']);
  if (icon != null) {
    threadPageForumInfoRecursionForumList.icon = icon;
  }
  final String? location = jsonConvert.convert<String>(json['location']);
  if (location != null) {
    threadPageForumInfoRecursionForumList.location = location;
  }
  final String? iconUrl = jsonConvert.convert<String>(json['icon_url']);
  if (iconUrl != null) {
    threadPageForumInfoRecursionForumList.iconUrl = iconUrl;
  }
  final String? password = jsonConvert.convert<String>(json['password']);
  if (password != null) {
    threadPageForumInfoRecursionForumList.password = password;
  }
  final String? redirect = jsonConvert.convert<String>(json['redirect']);
  if (redirect != null) {
    threadPageForumInfoRecursionForumList.redirect = redirect;
  }
  final String? displayOrder = jsonConvert.convert<String>(
      json['display_order']);
  if (displayOrder != null) {
    threadPageForumInfoRecursionForumList.displayOrder = displayOrder;
  }
  final String? layoutType = jsonConvert.convert<String>(json['layout_type']);
  if (layoutType != null) {
    threadPageForumInfoRecursionForumList.layoutType = layoutType;
  }
  final String? layoutColumnType = jsonConvert.convert<String>(
      json['layout_column_type']);
  if (layoutColumnType != null) {
    threadPageForumInfoRecursionForumList.layoutColumnType = layoutColumnType;
  }
  final String? status = jsonConvert.convert<String>(json['status']);
  if (status != null) {
    threadPageForumInfoRecursionForumList.status = status;
  }
  final List<dynamic>? children = (json['children'] as List<dynamic>?)?.map(
          (e) => e).toList();
  if (children != null) {
    threadPageForumInfoRecursionForumList.children = children;
  }
  final List<dynamic>? moderatorList = (json['moderator_list'] as List<
      dynamic>?)?.map(
          (e) => e).toList();
  if (moderatorList != null) {
    threadPageForumInfoRecursionForumList.moderatorList = moderatorList;
  }
  final String? attachment = jsonConvert.convert<String>(json['attachment']);
  if (attachment != null) {
    threadPageForumInfoRecursionForumList.attachment = attachment;
  }
  final String? ruleUrl = jsonConvert.convert<String>(json['rule_url']);
  if (ruleUrl != null) {
    threadPageForumInfoRecursionForumList.ruleUrl = ruleUrl;
  }
  final String? tlSort = jsonConvert.convert<String>(json['tl_sort']);
  if (tlSort != null) {
    threadPageForumInfoRecursionForumList.tlSort = tlSort;
  }
  final String? recommend = jsonConvert.convert<String>(json['recommend']);
  if (recommend != null) {
    threadPageForumInfoRecursionForumList.recommend = recommend;
  }
  final bool? enableSecNav = jsonConvert.convert<bool>(json['enable_sec_nav']);
  if (enableSecNav != null) {
    threadPageForumInfoRecursionForumList.enableSecNav = enableSecNav;
  }
  final String? secNavBg = jsonConvert.convert<String>(json['sec_nav_bg']);
  if (secNavBg != null) {
    threadPageForumInfoRecursionForumList.secNavBg = secNavBg;
  }
  final String? secShow = jsonConvert.convert<String>(json['sec_show']);
  if (secShow != null) {
    threadPageForumInfoRecursionForumList.secShow = secShow;
  }
  final String? secLogo = jsonConvert.convert<String>(json['sec_logo']);
  if (secLogo != null) {
    threadPageForumInfoRecursionForumList.secLogo = secLogo;
  }
  final String? secIndexUrl = jsonConvert.convert<String>(
      json['sec_index_url']);
  if (secIndexUrl != null) {
    threadPageForumInfoRecursionForumList.secIndexUrl = secIndexUrl;
  }
  final String? bnThreadReady = jsonConvert.convert<String>(
      json['bn_thread_ready']);
  if (bnThreadReady != null) {
    threadPageForumInfoRecursionForumList.bnThreadReady = bnThreadReady;
  }
  final String? bnThreadOpen = jsonConvert.convert<String>(
      json['bn_thread_open']);
  if (bnThreadOpen != null) {
    threadPageForumInfoRecursionForumList.bnThreadOpen = bnThreadOpen;
  }
  final String? bnForumEntry = jsonConvert.convert<String>(
      json['bn_forum_entry']);
  if (bnForumEntry != null) {
    threadPageForumInfoRecursionForumList.bnForumEntry = bnForumEntry;
  }
  final String? bnForumRecommend = jsonConvert.convert<String>(
      json['bn_forum_recommend']);
  if (bnForumRecommend != null) {
    threadPageForumInfoRecursionForumList.bnForumRecommend = bnForumRecommend;
  }
  final String? bnKeywordDisplay = jsonConvert.convert<String>(
      json['bn_keyword_display']);
  if (bnKeywordDisplay != null) {
    threadPageForumInfoRecursionForumList.bnKeywordDisplay = bnKeywordDisplay;
  }
  final String? picWidth = jsonConvert.convert<String>(json['pic_width']);
  if (picWidth != null) {
    threadPageForumInfoRecursionForumList.picWidth = picWidth;
  }
  final String? picHigh = jsonConvert.convert<String>(json['pic_high']);
  if (picHigh != null) {
    threadPageForumInfoRecursionForumList.picHigh = picHigh;
  }
  final String? guessYouLike = jsonConvert.convert<String>(
      json['guess_you_like']);
  if (guessYouLike != null) {
    threadPageForumInfoRecursionForumList.guessYouLike = guessYouLike;
  }
  final String? threadTip = jsonConvert.convert<String>(json['thread_tip']);
  if (threadTip != null) {
    threadPageForumInfoRecursionForumList.threadTip = threadTip;
  }
  final String? threadTitle = jsonConvert.convert<String>(json['thread_title']);
  if (threadTitle != null) {
    threadPageForumInfoRecursionForumList.threadTitle = threadTitle;
  }
  final String? threadDescription = jsonConvert.convert<String>(
      json['thread_description']);
  if (threadDescription != null) {
    threadPageForumInfoRecursionForumList.threadDescription = threadDescription;
  }
  final String? verify = jsonConvert.convert<String>(json['verify']);
  if (verify != null) {
    threadPageForumInfoRecursionForumList.verify = verify;
  }
  final String? secPostType = jsonConvert.convert<String>(
      json['sec_post_type']);
  if (secPostType != null) {
    threadPageForumInfoRecursionForumList.secPostType = secPostType;
  }
  final String? createdAt = jsonConvert.convert<String>(json['created_at']);
  if (createdAt != null) {
    threadPageForumInfoRecursionForumList.createdAt = createdAt;
  }
  final String? updatedAt = jsonConvert.convert<String>(json['updated_at']);
  if (updatedAt != null) {
    threadPageForumInfoRecursionForumList.updatedAt = updatedAt;
  }
  return threadPageForumInfoRecursionForumList;
}

Map<String, dynamic> $ThreadPageForumInfoRecursionForumListToJson(
    ThreadPageForumInfoRecursionForumList entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['fid'] = entity.fid;
  data['category'] = entity.category;
  data['fup'] = entity.fup;
  data['name'] = entity.name;
  data['kind'] = entity.kind;
  data['html_title'] = entity.htmlTitle;
  data['pic_list_title'] = entity.picListTitle;
  data['seo_description'] = entity.seoDescription;
  data['description'] = entity.description;
  data['icon'] = entity.icon;
  data['location'] = entity.location;
  data['icon_url'] = entity.iconUrl;
  data['password'] = entity.password;
  data['redirect'] = entity.redirect;
  data['display_order'] = entity.displayOrder;
  data['layout_type'] = entity.layoutType;
  data['layout_column_type'] = entity.layoutColumnType;
  data['status'] = entity.status;
  data['children'] = entity.children;
  data['moderator_list'] = entity.moderatorList;
  data['attachment'] = entity.attachment;
  data['rule_url'] = entity.ruleUrl;
  data['tl_sort'] = entity.tlSort;
  data['recommend'] = entity.recommend;
  data['enable_sec_nav'] = entity.enableSecNav;
  data['sec_nav_bg'] = entity.secNavBg;
  data['sec_show'] = entity.secShow;
  data['sec_logo'] = entity.secLogo;
  data['sec_index_url'] = entity.secIndexUrl;
  data['bn_thread_ready'] = entity.bnThreadReady;
  data['bn_thread_open'] = entity.bnThreadOpen;
  data['bn_forum_entry'] = entity.bnForumEntry;
  data['bn_forum_recommend'] = entity.bnForumRecommend;
  data['bn_keyword_display'] = entity.bnKeywordDisplay;
  data['pic_width'] = entity.picWidth;
  data['pic_high'] = entity.picHigh;
  data['guess_you_like'] = entity.guessYouLike;
  data['thread_tip'] = entity.threadTip;
  data['thread_title'] = entity.threadTitle;
  data['thread_description'] = entity.threadDescription;
  data['verify'] = entity.verify;
  data['sec_post_type'] = entity.secPostType;
  data['created_at'] = entity.createdAt;
  data['updated_at'] = entity.updatedAt;
  return data;
}

extension ThreadPageForumInfoRecursionForumListExtension on ThreadPageForumInfoRecursionForumList {
  ThreadPageForumInfoRecursionForumList copyWith({
    String? fid,
    String? category,
    String? fup,
    String? name,
    String? kind,
    String? htmlTitle,
    String? picListTitle,
    String? seoDescription,
    String? description,
    String? icon,
    String? location,
    String? iconUrl,
    String? password,
    String? redirect,
    String? displayOrder,
    String? layoutType,
    String? layoutColumnType,
    String? status,
    List<dynamic>? children,
    List<dynamic>? moderatorList,
    String? attachment,
    String? ruleUrl,
    String? tlSort,
    String? recommend,
    bool? enableSecNav,
    String? secNavBg,
    String? secShow,
    String? secLogo,
    String? secIndexUrl,
    String? bnThreadReady,
    String? bnThreadOpen,
    String? bnForumEntry,
    String? bnForumRecommend,
    String? bnKeywordDisplay,
    String? picWidth,
    String? picHigh,
    String? guessYouLike,
    String? threadTip,
    String? threadTitle,
    String? threadDescription,
    String? verify,
    String? secPostType,
    String? createdAt,
    String? updatedAt,
  }) {
    return ThreadPageForumInfoRecursionForumList()
      ..fid = fid ?? this.fid
      ..category = category ?? this.category
      ..fup = fup ?? this.fup
      ..name = name ?? this.name
      ..kind = kind ?? this.kind
      ..htmlTitle = htmlTitle ?? this.htmlTitle
      ..picListTitle = picListTitle ?? this.picListTitle
      ..seoDescription = seoDescription ?? this.seoDescription
      ..description = description ?? this.description
      ..icon = icon ?? this.icon
      ..location = location ?? this.location
      ..iconUrl = iconUrl ?? this.iconUrl
      ..password = password ?? this.password
      ..redirect = redirect ?? this.redirect
      ..displayOrder = displayOrder ?? this.displayOrder
      ..layoutType = layoutType ?? this.layoutType
      ..layoutColumnType = layoutColumnType ?? this.layoutColumnType
      ..status = status ?? this.status
      ..children = children ?? this.children
      ..moderatorList = moderatorList ?? this.moderatorList
      ..attachment = attachment ?? this.attachment
      ..ruleUrl = ruleUrl ?? this.ruleUrl
      ..tlSort = tlSort ?? this.tlSort
      ..recommend = recommend ?? this.recommend
      ..enableSecNav = enableSecNav ?? this.enableSecNav
      ..secNavBg = secNavBg ?? this.secNavBg
      ..secShow = secShow ?? this.secShow
      ..secLogo = secLogo ?? this.secLogo
      ..secIndexUrl = secIndexUrl ?? this.secIndexUrl
      ..bnThreadReady = bnThreadReady ?? this.bnThreadReady
      ..bnThreadOpen = bnThreadOpen ?? this.bnThreadOpen
      ..bnForumEntry = bnForumEntry ?? this.bnForumEntry
      ..bnForumRecommend = bnForumRecommend ?? this.bnForumRecommend
      ..bnKeywordDisplay = bnKeywordDisplay ?? this.bnKeywordDisplay
      ..picWidth = picWidth ?? this.picWidth
      ..picHigh = picHigh ?? this.picHigh
      ..guessYouLike = guessYouLike ?? this.guessYouLike
      ..threadTip = threadTip ?? this.threadTip
      ..threadTitle = threadTitle ?? this.threadTitle
      ..threadDescription = threadDescription ?? this.threadDescription
      ..verify = verify ?? this.verify
      ..secPostType = secPostType ?? this.secPostType
      ..createdAt = createdAt ?? this.createdAt
      ..updatedAt = updatedAt ?? this.updatedAt;
  }
}

ThreadPageForumInfoCircleCategory $ThreadPageForumInfoCircleCategoryFromJson(
    Map<String, dynamic> json) {
  final ThreadPageForumInfoCircleCategory threadPageForumInfoCircleCategory = ThreadPageForumInfoCircleCategory();
  final String? id = jsonConvert.convert<String>(json['id']);
  if (id != null) {
    threadPageForumInfoCircleCategory.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    threadPageForumInfoCircleCategory.name = name;
  }
  return threadPageForumInfoCircleCategory;
}

Map<String, dynamic> $ThreadPageForumInfoCircleCategoryToJson(
    ThreadPageForumInfoCircleCategory entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['name'] = entity.name;
  return data;
}

extension ThreadPageForumInfoCircleCategoryExtension on ThreadPageForumInfoCircleCategory {
  ThreadPageForumInfoCircleCategory copyWith({
    String? id,
    String? name,
  }) {
    return ThreadPageForumInfoCircleCategory()
      ..id = id ?? this.id
      ..name = name ?? this.name;
  }
}

ThreadPageThreadList $ThreadPageThreadListFromJson(Map<String, dynamic> json) {
  final ThreadPageThreadList threadPageThreadList = ThreadPageThreadList();
  final ThreadPageThreadListAuthor? author = jsonConvert.convert<
      ThreadPageThreadListAuthor>(json['author']);
  if (author != null) {
    threadPageThreadList.author = author;
  }
  final String? url = jsonConvert.convert<String>(json['url']);
  if (url != null) {
    threadPageThreadList.url = url;
  }
  final ThreadPageThreadListFirstPost? firstPost = jsonConvert.convert<
      ThreadPageThreadListFirstPost>(json['first_post']);
  if (firstPost != null) {
    threadPageThreadList.firstPost = firstPost;
  }
  final String? isPrivate = jsonConvert.convert<String>(json['is_private']);
  if (isPrivate != null) {
    threadPageThreadList.isPrivate = isPrivate;
  }
  final String? cityId = jsonConvert.convert<String>(json['city_id']);
  if (cityId != null) {
    threadPageThreadList.cityId = cityId;
  }
  final String? fid = jsonConvert.convert<String>(json['fid']);
  if (fid != null) {
    threadPageThreadList.fid = fid;
  }
  final String? tid = jsonConvert.convert<String>(json['tid']);
  if (tid != null) {
    threadPageThreadList.tid = tid;
  }
  final String? pid = jsonConvert.convert<String>(json['pid']);
  if (pid != null) {
    threadPageThreadList.pid = pid;
  }
  final String? authorUid = jsonConvert.convert<String>(json['author_uid']);
  if (authorUid != null) {
    threadPageThreadList.authorUid = authorUid;
  }
  final String? category = jsonConvert.convert<String>(json['category']);
  if (category != null) {
    threadPageThreadList.category = category;
  }
  final String? subject = jsonConvert.convert<String>(json['subject']);
  if (subject != null) {
    threadPageThreadList.subject = subject;
  }
  final String? threadType = jsonConvert.convert<String>(json['thread_type']);
  if (threadType != null) {
    threadPageThreadList.threadType = threadType;
  }
  final ThreadPageThreadListTopicTag? topicTag = jsonConvert.convert<
      ThreadPageThreadListTopicTag>(json['topic_tag']);
  if (topicTag != null) {
    threadPageThreadList.topicTag = topicTag;
  }
  final String? hot = jsonConvert.convert<String>(json['hot']);
  if (hot != null) {
    threadPageThreadList.hot = hot;
  }
  final String? views = jsonConvert.convert<String>(json['views']);
  if (views != null) {
    threadPageThreadList.views = views;
  }
  final String? replies = jsonConvert.convert<String>(json['replies']);
  if (replies != null) {
    threadPageThreadList.replies = replies;
  }
  final String? forwards = jsonConvert.convert<String>(json['forwards']);
  if (forwards != null) {
    threadPageThreadList.forwards = forwards;
  }
  final bool? holdAttachment = jsonConvert.convert<bool>(
      json['hold_attachment']);
  if (holdAttachment != null) {
    threadPageThreadList.holdAttachment = holdAttachment;
  }
  final bool? holdVideo = jsonConvert.convert<bool>(json['hold_video']);
  if (holdVideo != null) {
    threadPageThreadList.holdVideo = holdVideo;
  }
  final bool? attendActivity = jsonConvert.convert<bool>(
      json['attend_activity']);
  if (attendActivity != null) {
    threadPageThreadList.attendActivity = attendActivity;
  }
  final String? lastPostTime = jsonConvert.convert<String>(
      json['last_post_time']);
  if (lastPostTime != null) {
    threadPageThreadList.lastPostTime = lastPostTime;
  }
  final String? stickLevel = jsonConvert.convert<String>(json['stick_level']);
  if (stickLevel != null) {
    threadPageThreadList.stickLevel = stickLevel;
  }
  final String? highlight = jsonConvert.convert<String>(json['highlight']);
  if (highlight != null) {
    threadPageThreadList.highlight = highlight;
  }
  final String? digestLevel = jsonConvert.convert<String>(json['digest_level']);
  if (digestLevel != null) {
    threadPageThreadList.digestLevel = digestLevel;
  }
  final String? createdAt = jsonConvert.convert<String>(json['created_at']);
  if (createdAt != null) {
    threadPageThreadList.createdAt = createdAt;
  }
  final String? updatedAt = jsonConvert.convert<String>(json['updated_at']);
  if (updatedAt != null) {
    threadPageThreadList.updatedAt = updatedAt;
  }
  final String? status = jsonConvert.convert<String>(json['status']);
  if (status != null) {
    threadPageThreadList.status = status;
  }
  final bool? boardSigned = jsonConvert.convert<bool>(json['board_signed']);
  if (boardSigned != null) {
    threadPageThreadList.boardSigned = boardSigned;
  }
  final String? readPerm = jsonConvert.convert<String>(json['read_perm']);
  if (readPerm != null) {
    threadPageThreadList.readPerm = readPerm;
  }
  final String? cityName = jsonConvert.convert<String>(json['city_name']);
  if (cityName != null) {
    threadPageThreadList.cityName = cityName;
  }
  final String? extra = jsonConvert.convert<String>(json['extra']);
  if (extra != null) {
    threadPageThreadList.extra = extra;
  }
  final bool? replyNeedVerify = jsonConvert.convert<bool>(
      json['reply_need_verify']);
  if (replyNeedVerify != null) {
    threadPageThreadList.replyNeedVerify = replyNeedVerify;
  }
  final bool? rateNeedVerify = jsonConvert.convert<bool>(
      json['rate_need_verify']);
  if (rateNeedVerify != null) {
    threadPageThreadList.rateNeedVerify = rateNeedVerify;
  }
  final bool? threadPk = jsonConvert.convert<bool>(json['thread_pk']);
  if (threadPk != null) {
    threadPageThreadList.threadPk = threadPk;
  }
  final bool? threadVote = jsonConvert.convert<bool>(json['thread_vote']);
  if (threadVote != null) {
    threadPageThreadList.threadVote = threadVote;
  }
  final String? source = jsonConvert.convert<String>(json['source']);
  if (source != null) {
    threadPageThreadList.source = source;
  }
  final bool? isLocked = jsonConvert.convert<bool>(json['is_locked']);
  if (isLocked != null) {
    threadPageThreadList.isLocked = isLocked;
  }
  final bool? threadOpenOriginal = jsonConvert.convert<bool>(
      json['thread_open_original']);
  if (threadOpenOriginal != null) {
    threadPageThreadList.threadOpenOriginal = threadOpenOriginal;
  }
  final ThreadPageThreadListBusinessTag? businessTag = jsonConvert.convert<
      ThreadPageThreadListBusinessTag>(json['business_tag']);
  if (businessTag != null) {
    threadPageThreadList.businessTag = businessTag;
  }
  final ThreadPageThreadListZanInfo? zanInfo = jsonConvert.convert<
      ThreadPageThreadListZanInfo>(json['zan_info']);
  if (zanInfo != null) {
    threadPageThreadList.zanInfo = zanInfo;
  }
  final String? searchSubject = jsonConvert.convert<String>(
      json['search_subject']);
  if (searchSubject != null) {
    threadPageThreadList.searchSubject = searchSubject;
  }
  final String? searchContent = jsonConvert.convert<String>(
      json['search_content']);
  if (searchContent != null) {
    threadPageThreadList.searchContent = searchContent;
  }
  final String? advStatus = jsonConvert.convert<String>(json['adv_status']);
  if (advStatus != null) {
    threadPageThreadList.advStatus = advStatus;
  }
  return threadPageThreadList;
}

Map<String, dynamic> $ThreadPageThreadListToJson(ThreadPageThreadList entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['author'] = entity.author.toJson();
  data['url'] = entity.url;
  data['first_post'] = entity.firstPost.toJson();
  data['is_private'] = entity.isPrivate;
  data['city_id'] = entity.cityId;
  data['fid'] = entity.fid;
  data['tid'] = entity.tid;
  data['pid'] = entity.pid;
  data['author_uid'] = entity.authorUid;
  data['category'] = entity.category;
  data['subject'] = entity.subject;
  data['thread_type'] = entity.threadType;
  data['topic_tag'] = entity.topicTag.toJson();
  data['hot'] = entity.hot;
  data['views'] = entity.views;
  data['replies'] = entity.replies;
  data['forwards'] = entity.forwards;
  data['hold_attachment'] = entity.holdAttachment;
  data['hold_video'] = entity.holdVideo;
  data['attend_activity'] = entity.attendActivity;
  data['last_post_time'] = entity.lastPostTime;
  data['stick_level'] = entity.stickLevel;
  data['highlight'] = entity.highlight;
  data['digest_level'] = entity.digestLevel;
  data['created_at'] = entity.createdAt;
  data['updated_at'] = entity.updatedAt;
  data['status'] = entity.status;
  data['board_signed'] = entity.boardSigned;
  data['read_perm'] = entity.readPerm;
  data['city_name'] = entity.cityName;
  data['extra'] = entity.extra;
  data['reply_need_verify'] = entity.replyNeedVerify;
  data['rate_need_verify'] = entity.rateNeedVerify;
  data['thread_pk'] = entity.threadPk;
  data['thread_vote'] = entity.threadVote;
  data['source'] = entity.source;
  data['is_locked'] = entity.isLocked;
  data['thread_open_original'] = entity.threadOpenOriginal;
  data['business_tag'] = entity.businessTag.toJson();
  data['zan_info'] = entity.zanInfo.toJson();
  data['search_subject'] = entity.searchSubject;
  data['search_content'] = entity.searchContent;
  data['adv_status'] = entity.advStatus;
  return data;
}

extension ThreadPageThreadListExtension on ThreadPageThreadList {
  ThreadPageThreadList copyWith({
    ThreadPageThreadListAuthor? author,
    String? url,
    ThreadPageThreadListFirstPost? firstPost,
    String? isPrivate,
    String? cityId,
    String? fid,
    String? tid,
    String? pid,
    String? authorUid,
    String? category,
    String? subject,
    String? threadType,
    ThreadPageThreadListTopicTag? topicTag,
    String? hot,
    String? views,
    String? replies,
    String? forwards,
    bool? holdAttachment,
    bool? holdVideo,
    bool? attendActivity,
    String? lastPostTime,
    String? stickLevel,
    String? highlight,
    String? digestLevel,
    String? createdAt,
    String? updatedAt,
    String? status,
    bool? boardSigned,
    String? readPerm,
    String? cityName,
    String? extra,
    bool? replyNeedVerify,
    bool? rateNeedVerify,
    bool? threadPk,
    bool? threadVote,
    String? source,
    bool? isLocked,
    bool? threadOpenOriginal,
    ThreadPageThreadListBusinessTag? businessTag,
    ThreadPageThreadListZanInfo? zanInfo,
    String? searchSubject,
    String? searchContent,
    String? advStatus,
  }) {
    return ThreadPageThreadList()
      ..author = author ?? this.author
      ..url = url ?? this.url
      ..firstPost = firstPost ?? this.firstPost
      ..isPrivate = isPrivate ?? this.isPrivate
      ..cityId = cityId ?? this.cityId
      ..fid = fid ?? this.fid
      ..tid = tid ?? this.tid
      ..pid = pid ?? this.pid
      ..authorUid = authorUid ?? this.authorUid
      ..category = category ?? this.category
      ..subject = subject ?? this.subject
      ..threadType = threadType ?? this.threadType
      ..topicTag = topicTag ?? this.topicTag
      ..hot = hot ?? this.hot
      ..views = views ?? this.views
      ..replies = replies ?? this.replies
      ..forwards = forwards ?? this.forwards
      ..holdAttachment = holdAttachment ?? this.holdAttachment
      ..holdVideo = holdVideo ?? this.holdVideo
      ..attendActivity = attendActivity ?? this.attendActivity
      ..lastPostTime = lastPostTime ?? this.lastPostTime
      ..stickLevel = stickLevel ?? this.stickLevel
      ..highlight = highlight ?? this.highlight
      ..digestLevel = digestLevel ?? this.digestLevel
      ..createdAt = createdAt ?? this.createdAt
      ..updatedAt = updatedAt ?? this.updatedAt
      ..status = status ?? this.status
      ..boardSigned = boardSigned ?? this.boardSigned
      ..readPerm = readPerm ?? this.readPerm
      ..cityName = cityName ?? this.cityName
      ..extra = extra ?? this.extra
      ..replyNeedVerify = replyNeedVerify ?? this.replyNeedVerify
      ..rateNeedVerify = rateNeedVerify ?? this.rateNeedVerify
      ..threadPk = threadPk ?? this.threadPk
      ..threadVote = threadVote ?? this.threadVote
      ..source = source ?? this.source
      ..isLocked = isLocked ?? this.isLocked
      ..threadOpenOriginal = threadOpenOriginal ?? this.threadOpenOriginal
      ..businessTag = businessTag ?? this.businessTag
      ..zanInfo = zanInfo ?? this.zanInfo
      ..searchSubject = searchSubject ?? this.searchSubject
      ..searchContent = searchContent ?? this.searchContent
      ..advStatus = advStatus ?? this.advStatus;
  }
}

ThreadPageThreadListAuthor $ThreadPageThreadListAuthorFromJson(
    Map<String, dynamic> json) {
  final ThreadPageThreadListAuthor threadPageThreadListAuthor = ThreadPageThreadListAuthor();
  final String? uid = jsonConvert.convert<String>(json['uid']);
  if (uid != null) {
    threadPageThreadListAuthor.uid = uid;
  }
  final String? userName = jsonConvert.convert<String>(json['user_name']);
  if (userName != null) {
    threadPageThreadListAuthor.userName = userName;
  }
  final String? searchUserName = jsonConvert.convert<String>(
      json['search_user_name']);
  if (searchUserName != null) {
    threadPageThreadListAuthor.searchUserName = searchUserName;
  }
  final String? oldUserName = jsonConvert.convert<String>(
      json['old_user_name']);
  if (oldUserName != null) {
    threadPageThreadListAuthor.oldUserName = oldUserName;
  }
  final ThreadPageThreadListAuthorGroup? group = jsonConvert.convert<
      ThreadPageThreadListAuthorGroup>(json['group']);
  if (group != null) {
    threadPageThreadListAuthor.group = group;
  }
  final String? avatar = jsonConvert.convert<String>(json['avatar']);
  if (avatar != null) {
    threadPageThreadListAuthor.avatar = avatar;
  }
  final String? verifyNew = jsonConvert.convert<String>(json['verify_new']);
  if (verifyNew != null) {
    threadPageThreadListAuthor.verifyNew = verifyNew;
  }
  final String? verifyDesc = jsonConvert.convert<String>(json['verify_desc']);
  if (verifyDesc != null) {
    threadPageThreadListAuthor.verifyDesc = verifyDesc;
  }
  final String? originalAvatar = jsonConvert.convert<String>(
      json['original_avatar']);
  if (originalAvatar != null) {
    threadPageThreadListAuthor.originalAvatar = originalAvatar;
  }
  final String? smallAvatar = jsonConvert.convert<String>(json['small_avatar']);
  if (smallAvatar != null) {
    threadPageThreadListAuthor.smallAvatar = smallAvatar;
  }
  final String? genderPrivate = jsonConvert.convert<String>(
      json['gender_private']);
  if (genderPrivate != null) {
    threadPageThreadListAuthor.genderPrivate = genderPrivate;
  }
  final String? address = jsonConvert.convert<String>(json['address']);
  if (address != null) {
    threadPageThreadListAuthor.address = address;
  }
  final String? birthday = jsonConvert.convert<String>(json['birthday']);
  if (birthday != null) {
    threadPageThreadListAuthor.birthday = birthday;
  }
  final String? mobile = jsonConvert.convert<String>(json['mobile']);
  if (mobile != null) {
    threadPageThreadListAuthor.mobile = mobile;
  }
  final List<dynamic>? medals = (json['medals'] as List<dynamic>?)?.map(
          (e) => e).toList();
  if (medals != null) {
    threadPageThreadListAuthor.medals = medals;
  }
  final String? location = jsonConvert.convert<String>(json['location']);
  if (location != null) {
    threadPageThreadListAuthor.location = location;
  }
  final String? verify = jsonConvert.convert<String>(json['verify']);
  if (verify != null) {
    threadPageThreadListAuthor.verify = verify;
  }
  final String? highVerify = jsonConvert.convert<String>(json['high_verify']);
  if (highVerify != null) {
    threadPageThreadListAuthor.highVerify = highVerify;
  }
  final String? highDesc = jsonConvert.convert<String>(json['high_desc']);
  if (highDesc != null) {
    threadPageThreadListAuthor.highDesc = highDesc;
  }
  final String? honourVerify = jsonConvert.convert<String>(
      json['honour_verify']);
  if (honourVerify != null) {
    threadPageThreadListAuthor.honourVerify = honourVerify;
  }
  final String? honourDesc = jsonConvert.convert<String>(json['honour_desc']);
  if (honourDesc != null) {
    threadPageThreadListAuthor.honourDesc = honourDesc;
  }
  final String? realVerify = jsonConvert.convert<String>(json['real_verify']);
  if (realVerify != null) {
    threadPageThreadListAuthor.realVerify = realVerify;
  }
  final String? atNum = jsonConvert.convert<String>(json['at_num']);
  if (atNum != null) {
    threadPageThreadListAuthor.atNum = atNum;
  }
  final bool? active = jsonConvert.convert<bool>(json['active']);
  if (active != null) {
    threadPageThreadListAuthor.active = active;
  }
  final bool? qqBind = jsonConvert.convert<bool>(json['qq_bind']);
  if (qqBind != null) {
    threadPageThreadListAuthor.qqBind = qqBind;
  }
  final bool? qihooBind = jsonConvert.convert<bool>(json['qihoo_bind']);
  if (qihooBind != null) {
    threadPageThreadListAuthor.qihooBind = qihooBind;
  }
  final bool? mobileBind = jsonConvert.convert<bool>(json['mobile_bind']);
  if (mobileBind != null) {
    threadPageThreadListAuthor.mobileBind = mobileBind;
  }
  final bool? emailBind = jsonConvert.convert<bool>(json['email_bind']);
  if (emailBind != null) {
    threadPageThreadListAuthor.emailBind = emailBind;
  }
  final bool? sinaBind = jsonConvert.convert<bool>(json['sina_bind']);
  if (sinaBind != null) {
    threadPageThreadListAuthor.sinaBind = sinaBind;
  }
  final bool? weixinBind = jsonConvert.convert<bool>(json['weixin_bind']);
  if (weixinBind != null) {
    threadPageThreadListAuthor.weixinBind = weixinBind;
  }
  final bool? isTenYear = jsonConvert.convert<bool>(json['is_ten_year']);
  if (isTenYear != null) {
    threadPageThreadListAuthor.isTenYear = isTenYear;
  }
  final bool? shiJiaShangJia = jsonConvert.convert<bool>(
      json['shi_jia_shang_jia']);
  if (shiJiaShangJia != null) {
    threadPageThreadListAuthor.shiJiaShangJia = shiJiaShangJia;
  }
  final String? shiJiaShangJiaDesc = jsonConvert.convert<String>(
      json['shi_jia_shang_jia_desc']);
  if (shiJiaShangJiaDesc != null) {
    threadPageThreadListAuthor.shiJiaShangJiaDesc = shiJiaShangJiaDesc;
  }
  final bool? isSecurity = jsonConvert.convert<bool>(json['is_security']);
  if (isSecurity != null) {
    threadPageThreadListAuthor.isSecurity = isSecurity;
  }
  final bool? isAbnormal = jsonConvert.convert<bool>(json['is_abnormal']);
  if (isAbnormal != null) {
    threadPageThreadListAuthor.isAbnormal = isAbnormal;
  }
  final bool? appUser = jsonConvert.convert<bool>(json['app_user']);
  if (appUser != null) {
    threadPageThreadListAuthor.appUser = appUser;
  }
  final String? infoProgress = jsonConvert.convert<String>(
      json['info_progress']);
  if (infoProgress != null) {
    threadPageThreadListAuthor.infoProgress = infoProgress;
  }
  final String? userType = jsonConvert.convert<String>(json['user_type']);
  if (userType != null) {
    threadPageThreadListAuthor.userType = userType;
  }
  return threadPageThreadListAuthor;
}

Map<String, dynamic> $ThreadPageThreadListAuthorToJson(
    ThreadPageThreadListAuthor entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['uid'] = entity.uid;
  data['user_name'] = entity.userName;
  data['search_user_name'] = entity.searchUserName;
  data['old_user_name'] = entity.oldUserName;
  data['group'] = entity.group.toJson();
  data['avatar'] = entity.avatar;
  data['verify_new'] = entity.verifyNew;
  data['verify_desc'] = entity.verifyDesc;
  data['original_avatar'] = entity.originalAvatar;
  data['small_avatar'] = entity.smallAvatar;
  data['gender_private'] = entity.genderPrivate;
  data['address'] = entity.address;
  data['birthday'] = entity.birthday;
  data['mobile'] = entity.mobile;
  data['medals'] = entity.medals;
  data['location'] = entity.location;
  data['verify'] = entity.verify;
  data['high_verify'] = entity.highVerify;
  data['high_desc'] = entity.highDesc;
  data['honour_verify'] = entity.honourVerify;
  data['honour_desc'] = entity.honourDesc;
  data['real_verify'] = entity.realVerify;
  data['at_num'] = entity.atNum;
  data['active'] = entity.active;
  data['qq_bind'] = entity.qqBind;
  data['qihoo_bind'] = entity.qihooBind;
  data['mobile_bind'] = entity.mobileBind;
  data['email_bind'] = entity.emailBind;
  data['sina_bind'] = entity.sinaBind;
  data['weixin_bind'] = entity.weixinBind;
  data['is_ten_year'] = entity.isTenYear;
  data['shi_jia_shang_jia'] = entity.shiJiaShangJia;
  data['shi_jia_shang_jia_desc'] = entity.shiJiaShangJiaDesc;
  data['is_security'] = entity.isSecurity;
  data['is_abnormal'] = entity.isAbnormal;
  data['app_user'] = entity.appUser;
  data['info_progress'] = entity.infoProgress;
  data['user_type'] = entity.userType;
  return data;
}

extension ThreadPageThreadListAuthorExtension on ThreadPageThreadListAuthor {
  ThreadPageThreadListAuthor copyWith({
    String? uid,
    String? userName,
    String? searchUserName,
    String? oldUserName,
    ThreadPageThreadListAuthorGroup? group,
    String? avatar,
    String? verifyNew,
    String? verifyDesc,
    String? originalAvatar,
    String? smallAvatar,
    String? genderPrivate,
    String? address,
    String? birthday,
    String? mobile,
    List<dynamic>? medals,
    String? location,
    String? verify,
    String? highVerify,
    String? highDesc,
    String? honourVerify,
    String? honourDesc,
    String? realVerify,
    String? atNum,
    bool? active,
    bool? qqBind,
    bool? qihooBind,
    bool? mobileBind,
    bool? emailBind,
    bool? sinaBind,
    bool? weixinBind,
    bool? isTenYear,
    bool? shiJiaShangJia,
    String? shiJiaShangJiaDesc,
    bool? isSecurity,
    bool? isAbnormal,
    bool? appUser,
    String? infoProgress,
    String? userType,
  }) {
    return ThreadPageThreadListAuthor()
      ..uid = uid ?? this.uid
      ..userName = userName ?? this.userName
      ..searchUserName = searchUserName ?? this.searchUserName
      ..oldUserName = oldUserName ?? this.oldUserName
      ..group = group ?? this.group
      ..avatar = avatar ?? this.avatar
      ..verifyNew = verifyNew ?? this.verifyNew
      ..verifyDesc = verifyDesc ?? this.verifyDesc
      ..originalAvatar = originalAvatar ?? this.originalAvatar
      ..smallAvatar = smallAvatar ?? this.smallAvatar
      ..genderPrivate = genderPrivate ?? this.genderPrivate
      ..address = address ?? this.address
      ..birthday = birthday ?? this.birthday
      ..mobile = mobile ?? this.mobile
      ..medals = medals ?? this.medals
      ..location = location ?? this.location
      ..verify = verify ?? this.verify
      ..highVerify = highVerify ?? this.highVerify
      ..highDesc = highDesc ?? this.highDesc
      ..honourVerify = honourVerify ?? this.honourVerify
      ..honourDesc = honourDesc ?? this.honourDesc
      ..realVerify = realVerify ?? this.realVerify
      ..atNum = atNum ?? this.atNum
      ..active = active ?? this.active
      ..qqBind = qqBind ?? this.qqBind
      ..qihooBind = qihooBind ?? this.qihooBind
      ..mobileBind = mobileBind ?? this.mobileBind
      ..emailBind = emailBind ?? this.emailBind
      ..sinaBind = sinaBind ?? this.sinaBind
      ..weixinBind = weixinBind ?? this.weixinBind
      ..isTenYear = isTenYear ?? this.isTenYear
      ..shiJiaShangJia = shiJiaShangJia ?? this.shiJiaShangJia
      ..shiJiaShangJiaDesc = shiJiaShangJiaDesc ?? this.shiJiaShangJiaDesc
      ..isSecurity = isSecurity ?? this.isSecurity
      ..isAbnormal = isAbnormal ?? this.isAbnormal
      ..appUser = appUser ?? this.appUser
      ..infoProgress = infoProgress ?? this.infoProgress
      ..userType = userType ?? this.userType;
  }
}

ThreadPageThreadListAuthorGroup $ThreadPageThreadListAuthorGroupFromJson(
    Map<String, dynamic> json) {
  final ThreadPageThreadListAuthorGroup threadPageThreadListAuthorGroup = ThreadPageThreadListAuthorGroup();
  final String? gid = jsonConvert.convert<String>(json['gid']);
  if (gid != null) {
    threadPageThreadListAuthorGroup.gid = gid;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    threadPageThreadListAuthorGroup.name = name;
  }
  final String? category = jsonConvert.convert<String>(json['category']);
  if (category != null) {
    threadPageThreadListAuthorGroup.category = category;
  }
  final String? rank = jsonConvert.convert<String>(json['rank']);
  if (rank != null) {
    threadPageThreadListAuthorGroup.rank = rank;
  }
  final String? picture = jsonConvert.convert<String>(json['picture']);
  if (picture != null) {
    threadPageThreadListAuthorGroup.picture = picture;
  }
  return threadPageThreadListAuthorGroup;
}

Map<String, dynamic> $ThreadPageThreadListAuthorGroupToJson(
    ThreadPageThreadListAuthorGroup entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['gid'] = entity.gid;
  data['name'] = entity.name;
  data['category'] = entity.category;
  data['rank'] = entity.rank;
  data['picture'] = entity.picture;
  return data;
}

extension ThreadPageThreadListAuthorGroupExtension on ThreadPageThreadListAuthorGroup {
  ThreadPageThreadListAuthorGroup copyWith({
    String? gid,
    String? name,
    String? category,
    String? rank,
    String? picture,
  }) {
    return ThreadPageThreadListAuthorGroup()
      ..gid = gid ?? this.gid
      ..name = name ?? this.name
      ..category = category ?? this.category
      ..rank = rank ?? this.rank
      ..picture = picture ?? this.picture;
  }
}

ThreadPageThreadListFirstPost $ThreadPageThreadListFirstPostFromJson(
    Map<String, dynamic> json) {
  final ThreadPageThreadListFirstPost threadPageThreadListFirstPost = ThreadPageThreadListFirstPost();
  final ThreadPageThreadListFirstPostAuthor? author = jsonConvert.convert<
      ThreadPageThreadListFirstPostAuthor>(json['author']);
  if (author != null) {
    threadPageThreadListFirstPost.author = author;
  }
  final String? pid = jsonConvert.convert<String>(json['pid']);
  if (pid != null) {
    threadPageThreadListFirstPost.pid = pid;
  }
  final bool? isFirst = jsonConvert.convert<bool>(json['is_first']);
  if (isFirst != null) {
    threadPageThreadListFirstPost.isFirst = isFirst;
  }
  final bool? isWater = jsonConvert.convert<bool>(json['is_water']);
  if (isWater != null) {
    threadPageThreadListFirstPost.isWater = isWater;
  }
  final String? subject = jsonConvert.convert<String>(json['subject']);
  if (subject != null) {
    threadPageThreadListFirstPost.subject = subject;
  }
  final String? message = jsonConvert.convert<String>(json['message']);
  if (message != null) {
    threadPageThreadListFirstPost.message = message;
  }
  final String? shareBbcodeMessage = jsonConvert.convert<String>(
      json['share_bbcode_message']);
  if (shareBbcodeMessage != null) {
    threadPageThreadListFirstPost.shareBbcodeMessage = shareBbcodeMessage;
  }
  final String? parentPid = jsonConvert.convert<String>(json['parent_pid']);
  if (parentPid != null) {
    threadPageThreadListFirstPost.parentPid = parentPid;
  }
  final String? replyPid = jsonConvert.convert<String>(json['reply_pid']);
  if (replyPid != null) {
    threadPageThreadListFirstPost.replyPid = replyPid;
  }
  final String? replyUid = jsonConvert.convert<String>(json['reply_uid']);
  if (replyUid != null) {
    threadPageThreadListFirstPost.replyUid = replyUid;
  }
  final String? replyUserName = jsonConvert.convert<String>(
      json['reply_user_name']);
  if (replyUserName != null) {
    threadPageThreadListFirstPost.replyUserName = replyUserName;
  }
  final String? warnMessage = jsonConvert.convert<String>(json['warn_message']);
  if (warnMessage != null) {
    threadPageThreadListFirstPost.warnMessage = warnMessage;
  }
  final String? editMessage = jsonConvert.convert<String>(json['edit_message']);
  if (editMessage != null) {
    threadPageThreadListFirstPost.editMessage = editMessage;
  }
  final bool? htmlon = jsonConvert.convert<bool>(json['htmlon']);
  if (htmlon != null) {
    threadPageThreadListFirstPost.htmlon = htmlon;
  }
  final bool? holdAttachment = jsonConvert.convert<bool>(
      json['hold_attachment']);
  if (holdAttachment != null) {
    threadPageThreadListFirstPost.holdAttachment = holdAttachment;
  }
  final bool? holdRefer = jsonConvert.convert<bool>(json['hold_refer']);
  if (holdRefer != null) {
    threadPageThreadListFirstPost.holdRefer = holdRefer;
  }
  final bool? goodReply = jsonConvert.convert<bool>(json['good_reply']);
  if (goodReply != null) {
    threadPageThreadListFirstPost.goodReply = goodReply;
  }
  final bool? holdRate = jsonConvert.convert<bool>(json['hold_rate']);
  if (holdRate != null) {
    threadPageThreadListFirstPost.holdRate = holdRate;
  }
  final bool? ratePk = jsonConvert.convert<bool>(json['rate_pk']);
  if (ratePk != null) {
    threadPageThreadListFirstPost.ratePk = ratePk;
  }
  final String? source = jsonConvert.convert<String>(json['source']);
  if (source != null) {
    threadPageThreadListFirstPost.source = source;
  }
  final String? createdAt = jsonConvert.convert<String>(json['created_at']);
  if (createdAt != null) {
    threadPageThreadListFirstPost.createdAt = createdAt;
  }
  final String? updatedAt = jsonConvert.convert<String>(json['updated_at']);
  if (updatedAt != null) {
    threadPageThreadListFirstPost.updatedAt = updatedAt;
  }
  final bool? hasRichText = jsonConvert.convert<bool>(json['has_rich_text']);
  if (hasRichText != null) {
    threadPageThreadListFirstPost.hasRichText = hasRichText;
  }
  final String? status = jsonConvert.convert<String>(json['status']);
  if (status != null) {
    threadPageThreadListFirstPost.status = status;
  }
  final bool? auditFirst = jsonConvert.convert<bool>(json['audit_first']);
  if (auditFirst != null) {
    threadPageThreadListFirstPost.auditFirst = auditFirst;
  }
  return threadPageThreadListFirstPost;
}

Map<String, dynamic> $ThreadPageThreadListFirstPostToJson(
    ThreadPageThreadListFirstPost entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['author'] = entity.author.toJson();
  data['pid'] = entity.pid;
  data['is_first'] = entity.isFirst;
  data['is_water'] = entity.isWater;
  data['subject'] = entity.subject;
  data['message'] = entity.message;
  data['share_bbcode_message'] = entity.shareBbcodeMessage;
  data['parent_pid'] = entity.parentPid;
  data['reply_pid'] = entity.replyPid;
  data['reply_uid'] = entity.replyUid;
  data['reply_user_name'] = entity.replyUserName;
  data['warn_message'] = entity.warnMessage;
  data['edit_message'] = entity.editMessage;
  data['htmlon'] = entity.htmlon;
  data['hold_attachment'] = entity.holdAttachment;
  data['hold_refer'] = entity.holdRefer;
  data['good_reply'] = entity.goodReply;
  data['hold_rate'] = entity.holdRate;
  data['rate_pk'] = entity.ratePk;
  data['source'] = entity.source;
  data['created_at'] = entity.createdAt;
  data['updated_at'] = entity.updatedAt;
  data['has_rich_text'] = entity.hasRichText;
  data['status'] = entity.status;
  data['audit_first'] = entity.auditFirst;
  return data;
}

extension ThreadPageThreadListFirstPostExtension on ThreadPageThreadListFirstPost {
  ThreadPageThreadListFirstPost copyWith({
    ThreadPageThreadListFirstPostAuthor? author,
    String? pid,
    bool? isFirst,
    bool? isWater,
    String? subject,
    String? message,
    String? shareBbcodeMessage,
    String? parentPid,
    String? replyPid,
    String? replyUid,
    String? replyUserName,
    String? warnMessage,
    String? editMessage,
    bool? htmlon,
    bool? holdAttachment,
    bool? holdRefer,
    bool? goodReply,
    bool? holdRate,
    bool? ratePk,
    String? source,
    String? createdAt,
    String? updatedAt,
    bool? hasRichText,
    String? status,
    bool? auditFirst,
  }) {
    return ThreadPageThreadListFirstPost()
      ..author = author ?? this.author
      ..pid = pid ?? this.pid
      ..isFirst = isFirst ?? this.isFirst
      ..isWater = isWater ?? this.isWater
      ..subject = subject ?? this.subject
      ..message = message ?? this.message
      ..shareBbcodeMessage = shareBbcodeMessage ?? this.shareBbcodeMessage
      ..parentPid = parentPid ?? this.parentPid
      ..replyPid = replyPid ?? this.replyPid
      ..replyUid = replyUid ?? this.replyUid
      ..replyUserName = replyUserName ?? this.replyUserName
      ..warnMessage = warnMessage ?? this.warnMessage
      ..editMessage = editMessage ?? this.editMessage
      ..htmlon = htmlon ?? this.htmlon
      ..holdAttachment = holdAttachment ?? this.holdAttachment
      ..holdRefer = holdRefer ?? this.holdRefer
      ..goodReply = goodReply ?? this.goodReply
      ..holdRate = holdRate ?? this.holdRate
      ..ratePk = ratePk ?? this.ratePk
      ..source = source ?? this.source
      ..createdAt = createdAt ?? this.createdAt
      ..updatedAt = updatedAt ?? this.updatedAt
      ..hasRichText = hasRichText ?? this.hasRichText
      ..status = status ?? this.status
      ..auditFirst = auditFirst ?? this.auditFirst;
  }
}

ThreadPageThreadListFirstPostAuthor $ThreadPageThreadListFirstPostAuthorFromJson(
    Map<String, dynamic> json) {
  final ThreadPageThreadListFirstPostAuthor threadPageThreadListFirstPostAuthor = ThreadPageThreadListFirstPostAuthor();
  final String? uid = jsonConvert.convert<String>(json['uid']);
  if (uid != null) {
    threadPageThreadListFirstPostAuthor.uid = uid;
  }
  final String? userName = jsonConvert.convert<String>(json['user_name']);
  if (userName != null) {
    threadPageThreadListFirstPostAuthor.userName = userName;
  }
  final String? searchUserName = jsonConvert.convert<String>(
      json['search_user_name']);
  if (searchUserName != null) {
    threadPageThreadListFirstPostAuthor.searchUserName = searchUserName;
  }
  final String? oldUserName = jsonConvert.convert<String>(
      json['old_user_name']);
  if (oldUserName != null) {
    threadPageThreadListFirstPostAuthor.oldUserName = oldUserName;
  }
  final ThreadPageThreadListFirstPostAuthorGroup? group = jsonConvert.convert<
      ThreadPageThreadListFirstPostAuthorGroup>(json['group']);
  if (group != null) {
    threadPageThreadListFirstPostAuthor.group = group;
  }
  final String? avatar = jsonConvert.convert<String>(json['avatar']);
  if (avatar != null) {
    threadPageThreadListFirstPostAuthor.avatar = avatar;
  }
  final String? verifyNew = jsonConvert.convert<String>(json['verify_new']);
  if (verifyNew != null) {
    threadPageThreadListFirstPostAuthor.verifyNew = verifyNew;
  }
  final String? verifyDesc = jsonConvert.convert<String>(json['verify_desc']);
  if (verifyDesc != null) {
    threadPageThreadListFirstPostAuthor.verifyDesc = verifyDesc;
  }
  final String? originalAvatar = jsonConvert.convert<String>(
      json['original_avatar']);
  if (originalAvatar != null) {
    threadPageThreadListFirstPostAuthor.originalAvatar = originalAvatar;
  }
  final String? smallAvatar = jsonConvert.convert<String>(json['small_avatar']);
  if (smallAvatar != null) {
    threadPageThreadListFirstPostAuthor.smallAvatar = smallAvatar;
  }
  final String? genderPrivate = jsonConvert.convert<String>(
      json['gender_private']);
  if (genderPrivate != null) {
    threadPageThreadListFirstPostAuthor.genderPrivate = genderPrivate;
  }
  final String? address = jsonConvert.convert<String>(json['address']);
  if (address != null) {
    threadPageThreadListFirstPostAuthor.address = address;
  }
  final String? birthday = jsonConvert.convert<String>(json['birthday']);
  if (birthday != null) {
    threadPageThreadListFirstPostAuthor.birthday = birthday;
  }
  final String? mobile = jsonConvert.convert<String>(json['mobile']);
  if (mobile != null) {
    threadPageThreadListFirstPostAuthor.mobile = mobile;
  }
  final List<dynamic>? medals = (json['medals'] as List<dynamic>?)?.map(
          (e) => e).toList();
  if (medals != null) {
    threadPageThreadListFirstPostAuthor.medals = medals;
  }
  final String? location = jsonConvert.convert<String>(json['location']);
  if (location != null) {
    threadPageThreadListFirstPostAuthor.location = location;
  }
  final String? verify = jsonConvert.convert<String>(json['verify']);
  if (verify != null) {
    threadPageThreadListFirstPostAuthor.verify = verify;
  }
  final String? highVerify = jsonConvert.convert<String>(json['high_verify']);
  if (highVerify != null) {
    threadPageThreadListFirstPostAuthor.highVerify = highVerify;
  }
  final String? highDesc = jsonConvert.convert<String>(json['high_desc']);
  if (highDesc != null) {
    threadPageThreadListFirstPostAuthor.highDesc = highDesc;
  }
  final String? honourVerify = jsonConvert.convert<String>(
      json['honour_verify']);
  if (honourVerify != null) {
    threadPageThreadListFirstPostAuthor.honourVerify = honourVerify;
  }
  final String? honourDesc = jsonConvert.convert<String>(json['honour_desc']);
  if (honourDesc != null) {
    threadPageThreadListFirstPostAuthor.honourDesc = honourDesc;
  }
  final String? realVerify = jsonConvert.convert<String>(json['real_verify']);
  if (realVerify != null) {
    threadPageThreadListFirstPostAuthor.realVerify = realVerify;
  }
  final String? atNum = jsonConvert.convert<String>(json['at_num']);
  if (atNum != null) {
    threadPageThreadListFirstPostAuthor.atNum = atNum;
  }
  final bool? active = jsonConvert.convert<bool>(json['active']);
  if (active != null) {
    threadPageThreadListFirstPostAuthor.active = active;
  }
  final bool? qqBind = jsonConvert.convert<bool>(json['qq_bind']);
  if (qqBind != null) {
    threadPageThreadListFirstPostAuthor.qqBind = qqBind;
  }
  final bool? qihooBind = jsonConvert.convert<bool>(json['qihoo_bind']);
  if (qihooBind != null) {
    threadPageThreadListFirstPostAuthor.qihooBind = qihooBind;
  }
  final bool? mobileBind = jsonConvert.convert<bool>(json['mobile_bind']);
  if (mobileBind != null) {
    threadPageThreadListFirstPostAuthor.mobileBind = mobileBind;
  }
  final bool? emailBind = jsonConvert.convert<bool>(json['email_bind']);
  if (emailBind != null) {
    threadPageThreadListFirstPostAuthor.emailBind = emailBind;
  }
  final bool? sinaBind = jsonConvert.convert<bool>(json['sina_bind']);
  if (sinaBind != null) {
    threadPageThreadListFirstPostAuthor.sinaBind = sinaBind;
  }
  final bool? weixinBind = jsonConvert.convert<bool>(json['weixin_bind']);
  if (weixinBind != null) {
    threadPageThreadListFirstPostAuthor.weixinBind = weixinBind;
  }
  final bool? isTenYear = jsonConvert.convert<bool>(json['is_ten_year']);
  if (isTenYear != null) {
    threadPageThreadListFirstPostAuthor.isTenYear = isTenYear;
  }
  final bool? shiJiaShangJia = jsonConvert.convert<bool>(
      json['shi_jia_shang_jia']);
  if (shiJiaShangJia != null) {
    threadPageThreadListFirstPostAuthor.shiJiaShangJia = shiJiaShangJia;
  }
  final String? shiJiaShangJiaDesc = jsonConvert.convert<String>(
      json['shi_jia_shang_jia_desc']);
  if (shiJiaShangJiaDesc != null) {
    threadPageThreadListFirstPostAuthor.shiJiaShangJiaDesc = shiJiaShangJiaDesc;
  }
  final bool? isSecurity = jsonConvert.convert<bool>(json['is_security']);
  if (isSecurity != null) {
    threadPageThreadListFirstPostAuthor.isSecurity = isSecurity;
  }
  final bool? isAbnormal = jsonConvert.convert<bool>(json['is_abnormal']);
  if (isAbnormal != null) {
    threadPageThreadListFirstPostAuthor.isAbnormal = isAbnormal;
  }
  final bool? appUser = jsonConvert.convert<bool>(json['app_user']);
  if (appUser != null) {
    threadPageThreadListFirstPostAuthor.appUser = appUser;
  }
  final String? infoProgress = jsonConvert.convert<String>(
      json['info_progress']);
  if (infoProgress != null) {
    threadPageThreadListFirstPostAuthor.infoProgress = infoProgress;
  }
  final String? userType = jsonConvert.convert<String>(json['user_type']);
  if (userType != null) {
    threadPageThreadListFirstPostAuthor.userType = userType;
  }
  return threadPageThreadListFirstPostAuthor;
}

Map<String, dynamic> $ThreadPageThreadListFirstPostAuthorToJson(
    ThreadPageThreadListFirstPostAuthor entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['uid'] = entity.uid;
  data['user_name'] = entity.userName;
  data['search_user_name'] = entity.searchUserName;
  data['old_user_name'] = entity.oldUserName;
  data['group'] = entity.group.toJson();
  data['avatar'] = entity.avatar;
  data['verify_new'] = entity.verifyNew;
  data['verify_desc'] = entity.verifyDesc;
  data['original_avatar'] = entity.originalAvatar;
  data['small_avatar'] = entity.smallAvatar;
  data['gender_private'] = entity.genderPrivate;
  data['address'] = entity.address;
  data['birthday'] = entity.birthday;
  data['mobile'] = entity.mobile;
  data['medals'] = entity.medals;
  data['location'] = entity.location;
  data['verify'] = entity.verify;
  data['high_verify'] = entity.highVerify;
  data['high_desc'] = entity.highDesc;
  data['honour_verify'] = entity.honourVerify;
  data['honour_desc'] = entity.honourDesc;
  data['real_verify'] = entity.realVerify;
  data['at_num'] = entity.atNum;
  data['active'] = entity.active;
  data['qq_bind'] = entity.qqBind;
  data['qihoo_bind'] = entity.qihooBind;
  data['mobile_bind'] = entity.mobileBind;
  data['email_bind'] = entity.emailBind;
  data['sina_bind'] = entity.sinaBind;
  data['weixin_bind'] = entity.weixinBind;
  data['is_ten_year'] = entity.isTenYear;
  data['shi_jia_shang_jia'] = entity.shiJiaShangJia;
  data['shi_jia_shang_jia_desc'] = entity.shiJiaShangJiaDesc;
  data['is_security'] = entity.isSecurity;
  data['is_abnormal'] = entity.isAbnormal;
  data['app_user'] = entity.appUser;
  data['info_progress'] = entity.infoProgress;
  data['user_type'] = entity.userType;
  return data;
}

extension ThreadPageThreadListFirstPostAuthorExtension on ThreadPageThreadListFirstPostAuthor {
  ThreadPageThreadListFirstPostAuthor copyWith({
    String? uid,
    String? userName,
    String? searchUserName,
    String? oldUserName,
    ThreadPageThreadListFirstPostAuthorGroup? group,
    String? avatar,
    String? verifyNew,
    String? verifyDesc,
    String? originalAvatar,
    String? smallAvatar,
    String? genderPrivate,
    String? address,
    String? birthday,
    String? mobile,
    List<dynamic>? medals,
    String? location,
    String? verify,
    String? highVerify,
    String? highDesc,
    String? honourVerify,
    String? honourDesc,
    String? realVerify,
    String? atNum,
    bool? active,
    bool? qqBind,
    bool? qihooBind,
    bool? mobileBind,
    bool? emailBind,
    bool? sinaBind,
    bool? weixinBind,
    bool? isTenYear,
    bool? shiJiaShangJia,
    String? shiJiaShangJiaDesc,
    bool? isSecurity,
    bool? isAbnormal,
    bool? appUser,
    String? infoProgress,
    String? userType,
  }) {
    return ThreadPageThreadListFirstPostAuthor()
      ..uid = uid ?? this.uid
      ..userName = userName ?? this.userName
      ..searchUserName = searchUserName ?? this.searchUserName
      ..oldUserName = oldUserName ?? this.oldUserName
      ..group = group ?? this.group
      ..avatar = avatar ?? this.avatar
      ..verifyNew = verifyNew ?? this.verifyNew
      ..verifyDesc = verifyDesc ?? this.verifyDesc
      ..originalAvatar = originalAvatar ?? this.originalAvatar
      ..smallAvatar = smallAvatar ?? this.smallAvatar
      ..genderPrivate = genderPrivate ?? this.genderPrivate
      ..address = address ?? this.address
      ..birthday = birthday ?? this.birthday
      ..mobile = mobile ?? this.mobile
      ..medals = medals ?? this.medals
      ..location = location ?? this.location
      ..verify = verify ?? this.verify
      ..highVerify = highVerify ?? this.highVerify
      ..highDesc = highDesc ?? this.highDesc
      ..honourVerify = honourVerify ?? this.honourVerify
      ..honourDesc = honourDesc ?? this.honourDesc
      ..realVerify = realVerify ?? this.realVerify
      ..atNum = atNum ?? this.atNum
      ..active = active ?? this.active
      ..qqBind = qqBind ?? this.qqBind
      ..qihooBind = qihooBind ?? this.qihooBind
      ..mobileBind = mobileBind ?? this.mobileBind
      ..emailBind = emailBind ?? this.emailBind
      ..sinaBind = sinaBind ?? this.sinaBind
      ..weixinBind = weixinBind ?? this.weixinBind
      ..isTenYear = isTenYear ?? this.isTenYear
      ..shiJiaShangJia = shiJiaShangJia ?? this.shiJiaShangJia
      ..shiJiaShangJiaDesc = shiJiaShangJiaDesc ?? this.shiJiaShangJiaDesc
      ..isSecurity = isSecurity ?? this.isSecurity
      ..isAbnormal = isAbnormal ?? this.isAbnormal
      ..appUser = appUser ?? this.appUser
      ..infoProgress = infoProgress ?? this.infoProgress
      ..userType = userType ?? this.userType;
  }
}

ThreadPageThreadListFirstPostAuthorGroup $ThreadPageThreadListFirstPostAuthorGroupFromJson(
    Map<String, dynamic> json) {
  final ThreadPageThreadListFirstPostAuthorGroup threadPageThreadListFirstPostAuthorGroup = ThreadPageThreadListFirstPostAuthorGroup();
  final String? gid = jsonConvert.convert<String>(json['gid']);
  if (gid != null) {
    threadPageThreadListFirstPostAuthorGroup.gid = gid;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    threadPageThreadListFirstPostAuthorGroup.name = name;
  }
  final String? category = jsonConvert.convert<String>(json['category']);
  if (category != null) {
    threadPageThreadListFirstPostAuthorGroup.category = category;
  }
  final String? rank = jsonConvert.convert<String>(json['rank']);
  if (rank != null) {
    threadPageThreadListFirstPostAuthorGroup.rank = rank;
  }
  final String? picture = jsonConvert.convert<String>(json['picture']);
  if (picture != null) {
    threadPageThreadListFirstPostAuthorGroup.picture = picture;
  }
  return threadPageThreadListFirstPostAuthorGroup;
}

Map<String, dynamic> $ThreadPageThreadListFirstPostAuthorGroupToJson(
    ThreadPageThreadListFirstPostAuthorGroup entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['gid'] = entity.gid;
  data['name'] = entity.name;
  data['category'] = entity.category;
  data['rank'] = entity.rank;
  data['picture'] = entity.picture;
  return data;
}

extension ThreadPageThreadListFirstPostAuthorGroupExtension on ThreadPageThreadListFirstPostAuthorGroup {
  ThreadPageThreadListFirstPostAuthorGroup copyWith({
    String? gid,
    String? name,
    String? category,
    String? rank,
    String? picture,
  }) {
    return ThreadPageThreadListFirstPostAuthorGroup()
      ..gid = gid ?? this.gid
      ..name = name ?? this.name
      ..category = category ?? this.category
      ..rank = rank ?? this.rank
      ..picture = picture ?? this.picture;
  }
}

ThreadPageThreadListTopicTag $ThreadPageThreadListTopicTagFromJson(
    Map<String, dynamic> json) {
  final ThreadPageThreadListTopicTag threadPageThreadListTopicTag = ThreadPageThreadListTopicTag();
  final String? id = jsonConvert.convert<String>(json['id']);
  if (id != null) {
    threadPageThreadListTopicTag.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    threadPageThreadListTopicTag.name = name;
  }
  final String? canBusiness = jsonConvert.convert<String>(json['can_business']);
  if (canBusiness != null) {
    threadPageThreadListTopicTag.canBusiness = canBusiness;
  }
  final String? logoImgUrl = jsonConvert.convert<String>(json['logo_img_url']);
  if (logoImgUrl != null) {
    threadPageThreadListTopicTag.logoImgUrl = logoImgUrl;
  }
  return threadPageThreadListTopicTag;
}

Map<String, dynamic> $ThreadPageThreadListTopicTagToJson(
    ThreadPageThreadListTopicTag entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['name'] = entity.name;
  data['can_business'] = entity.canBusiness;
  data['logo_img_url'] = entity.logoImgUrl;
  return data;
}

extension ThreadPageThreadListTopicTagExtension on ThreadPageThreadListTopicTag {
  ThreadPageThreadListTopicTag copyWith({
    String? id,
    String? name,
    String? canBusiness,
    String? logoImgUrl,
  }) {
    return ThreadPageThreadListTopicTag()
      ..id = id ?? this.id
      ..name = name ?? this.name
      ..canBusiness = canBusiness ?? this.canBusiness
      ..logoImgUrl = logoImgUrl ?? this.logoImgUrl;
  }
}

ThreadPageThreadListBusinessTag $ThreadPageThreadListBusinessTagFromJson(
    Map<String, dynamic> json) {
  final ThreadPageThreadListBusinessTag threadPageThreadListBusinessTag = ThreadPageThreadListBusinessTag();
  final String? id = jsonConvert.convert<String>(json['id']);
  if (id != null) {
    threadPageThreadListBusinessTag.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    threadPageThreadListBusinessTag.name = name;
  }
  final String? canBusiness = jsonConvert.convert<String>(json['can_business']);
  if (canBusiness != null) {
    threadPageThreadListBusinessTag.canBusiness = canBusiness;
  }
  final String? logoImgUrl = jsonConvert.convert<String>(json['logo_img_url']);
  if (logoImgUrl != null) {
    threadPageThreadListBusinessTag.logoImgUrl = logoImgUrl;
  }
  return threadPageThreadListBusinessTag;
}

Map<String, dynamic> $ThreadPageThreadListBusinessTagToJson(
    ThreadPageThreadListBusinessTag entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['name'] = entity.name;
  data['can_business'] = entity.canBusiness;
  data['logo_img_url'] = entity.logoImgUrl;
  return data;
}

extension ThreadPageThreadListBusinessTagExtension on ThreadPageThreadListBusinessTag {
  ThreadPageThreadListBusinessTag copyWith({
    String? id,
    String? name,
    String? canBusiness,
    String? logoImgUrl,
  }) {
    return ThreadPageThreadListBusinessTag()
      ..id = id ?? this.id
      ..name = name ?? this.name
      ..canBusiness = canBusiness ?? this.canBusiness
      ..logoImgUrl = logoImgUrl ?? this.logoImgUrl;
  }
}

ThreadPageThreadListZanInfo $ThreadPageThreadListZanInfoFromJson(
    Map<String, dynamic> json) {
  final ThreadPageThreadListZanInfo threadPageThreadListZanInfo = ThreadPageThreadListZanInfo();
  final String? uid = jsonConvert.convert<String>(json['uid']);
  if (uid != null) {
    threadPageThreadListZanInfo.uid = uid;
  }
  final String? category = jsonConvert.convert<String>(json['category']);
  if (category != null) {
    threadPageThreadListZanInfo.category = category;
  }
  final String? objectId = jsonConvert.convert<String>(json['object_id']);
  if (objectId != null) {
    threadPageThreadListZanInfo.objectId = objectId;
  }
  final String? relationObjectIds = jsonConvert.convert<String>(
      json['relation_object_ids']);
  if (relationObjectIds != null) {
    threadPageThreadListZanInfo.relationObjectIds = relationObjectIds;
  }
  final String? timeStamp = jsonConvert.convert<String>(json['time_stamp']);
  if (timeStamp != null) {
    threadPageThreadListZanInfo.timeStamp = timeStamp;
  }
  final String? sign = jsonConvert.convert<String>(json['sign']);
  if (sign != null) {
    threadPageThreadListZanInfo.sign = sign;
  }
  return threadPageThreadListZanInfo;
}

Map<String, dynamic> $ThreadPageThreadListZanInfoToJson(
    ThreadPageThreadListZanInfo entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['uid'] = entity.uid;
  data['category'] = entity.category;
  data['object_id'] = entity.objectId;
  data['relation_object_ids'] = entity.relationObjectIds;
  data['time_stamp'] = entity.timeStamp;
  data['sign'] = entity.sign;
  return data;
}

extension ThreadPageThreadListZanInfoExtension on ThreadPageThreadListZanInfo {
  ThreadPageThreadListZanInfo copyWith({
    String? uid,
    String? category,
    String? objectId,
    String? relationObjectIds,
    String? timeStamp,
    String? sign,
  }) {
    return ThreadPageThreadListZanInfo()
      ..uid = uid ?? this.uid
      ..category = category ?? this.category
      ..objectId = objectId ?? this.objectId
      ..relationObjectIds = relationObjectIds ?? this.relationObjectIds
      ..timeStamp = timeStamp ?? this.timeStamp
      ..sign = sign ?? this.sign;
  }
}

ThreadPageStickThreadList $ThreadPageStickThreadListFromJson(
    Map<String, dynamic> json) {
  final ThreadPageStickThreadList threadPageStickThreadList = ThreadPageStickThreadList();
  final ThreadPageStickThreadListAuthor? author = jsonConvert.convert<
      ThreadPageStickThreadListAuthor>(json['author']);
  if (author != null) {
    threadPageStickThreadList.author = author;
  }
  final String? url = jsonConvert.convert<String>(json['url']);
  if (url != null) {
    threadPageStickThreadList.url = url;
  }
  final ThreadPageStickThreadListFirstPost? firstPost = jsonConvert.convert<
      ThreadPageStickThreadListFirstPost>(json['first_post']);
  if (firstPost != null) {
    threadPageStickThreadList.firstPost = firstPost;
  }
  final String? isPrivate = jsonConvert.convert<String>(json['is_private']);
  if (isPrivate != null) {
    threadPageStickThreadList.isPrivate = isPrivate;
  }
  final String? cityId = jsonConvert.convert<String>(json['city_id']);
  if (cityId != null) {
    threadPageStickThreadList.cityId = cityId;
  }
  final String? fid = jsonConvert.convert<String>(json['fid']);
  if (fid != null) {
    threadPageStickThreadList.fid = fid;
  }
  final String? tid = jsonConvert.convert<String>(json['tid']);
  if (tid != null) {
    threadPageStickThreadList.tid = tid;
  }
  final String? pid = jsonConvert.convert<String>(json['pid']);
  if (pid != null) {
    threadPageStickThreadList.pid = pid;
  }
  final String? authorUid = jsonConvert.convert<String>(json['author_uid']);
  if (authorUid != null) {
    threadPageStickThreadList.authorUid = authorUid;
  }
  final String? category = jsonConvert.convert<String>(json['category']);
  if (category != null) {
    threadPageStickThreadList.category = category;
  }
  final String? subject = jsonConvert.convert<String>(json['subject']);
  if (subject != null) {
    threadPageStickThreadList.subject = subject;
  }
  final String? threadType = jsonConvert.convert<String>(json['thread_type']);
  if (threadType != null) {
    threadPageStickThreadList.threadType = threadType;
  }
  final ThreadPageStickThreadListTopicTag? topicTag = jsonConvert.convert<
      ThreadPageStickThreadListTopicTag>(json['topic_tag']);
  if (topicTag != null) {
    threadPageStickThreadList.topicTag = topicTag;
  }
  final String? hot = jsonConvert.convert<String>(json['hot']);
  if (hot != null) {
    threadPageStickThreadList.hot = hot;
  }
  final String? views = jsonConvert.convert<String>(json['views']);
  if (views != null) {
    threadPageStickThreadList.views = views;
  }
  final String? replies = jsonConvert.convert<String>(json['replies']);
  if (replies != null) {
    threadPageStickThreadList.replies = replies;
  }
  final String? forwards = jsonConvert.convert<String>(json['forwards']);
  if (forwards != null) {
    threadPageStickThreadList.forwards = forwards;
  }
  final bool? holdAttachment = jsonConvert.convert<bool>(
      json['hold_attachment']);
  if (holdAttachment != null) {
    threadPageStickThreadList.holdAttachment = holdAttachment;
  }
  final bool? holdVideo = jsonConvert.convert<bool>(json['hold_video']);
  if (holdVideo != null) {
    threadPageStickThreadList.holdVideo = holdVideo;
  }
  final bool? attendActivity = jsonConvert.convert<bool>(
      json['attend_activity']);
  if (attendActivity != null) {
    threadPageStickThreadList.attendActivity = attendActivity;
  }
  final String? lastPostTime = jsonConvert.convert<String>(
      json['last_post_time']);
  if (lastPostTime != null) {
    threadPageStickThreadList.lastPostTime = lastPostTime;
  }
  final String? stickLevel = jsonConvert.convert<String>(json['stick_level']);
  if (stickLevel != null) {
    threadPageStickThreadList.stickLevel = stickLevel;
  }
  final String? highlight = jsonConvert.convert<String>(json['highlight']);
  if (highlight != null) {
    threadPageStickThreadList.highlight = highlight;
  }
  final String? digestLevel = jsonConvert.convert<String>(json['digest_level']);
  if (digestLevel != null) {
    threadPageStickThreadList.digestLevel = digestLevel;
  }
  final String? createdAt = jsonConvert.convert<String>(json['created_at']);
  if (createdAt != null) {
    threadPageStickThreadList.createdAt = createdAt;
  }
  final String? updatedAt = jsonConvert.convert<String>(json['updated_at']);
  if (updatedAt != null) {
    threadPageStickThreadList.updatedAt = updatedAt;
  }
  final String? status = jsonConvert.convert<String>(json['status']);
  if (status != null) {
    threadPageStickThreadList.status = status;
  }
  final bool? boardSigned = jsonConvert.convert<bool>(json['board_signed']);
  if (boardSigned != null) {
    threadPageStickThreadList.boardSigned = boardSigned;
  }
  final String? readPerm = jsonConvert.convert<String>(json['read_perm']);
  if (readPerm != null) {
    threadPageStickThreadList.readPerm = readPerm;
  }
  final String? cityName = jsonConvert.convert<String>(json['city_name']);
  if (cityName != null) {
    threadPageStickThreadList.cityName = cityName;
  }
  final String? extra = jsonConvert.convert<String>(json['extra']);
  if (extra != null) {
    threadPageStickThreadList.extra = extra;
  }
  final bool? replyNeedVerify = jsonConvert.convert<bool>(
      json['reply_need_verify']);
  if (replyNeedVerify != null) {
    threadPageStickThreadList.replyNeedVerify = replyNeedVerify;
  }
  final bool? rateNeedVerify = jsonConvert.convert<bool>(
      json['rate_need_verify']);
  if (rateNeedVerify != null) {
    threadPageStickThreadList.rateNeedVerify = rateNeedVerify;
  }
  final bool? threadPk = jsonConvert.convert<bool>(json['thread_pk']);
  if (threadPk != null) {
    threadPageStickThreadList.threadPk = threadPk;
  }
  final bool? threadVote = jsonConvert.convert<bool>(json['thread_vote']);
  if (threadVote != null) {
    threadPageStickThreadList.threadVote = threadVote;
  }
  final String? source = jsonConvert.convert<String>(json['source']);
  if (source != null) {
    threadPageStickThreadList.source = source;
  }
  final bool? isLocked = jsonConvert.convert<bool>(json['is_locked']);
  if (isLocked != null) {
    threadPageStickThreadList.isLocked = isLocked;
  }
  final bool? threadOpenOriginal = jsonConvert.convert<bool>(
      json['thread_open_original']);
  if (threadOpenOriginal != null) {
    threadPageStickThreadList.threadOpenOriginal = threadOpenOriginal;
  }
  final ThreadPageStickThreadListZanInfo? zanInfo = jsonConvert.convert<
      ThreadPageStickThreadListZanInfo>(json['zan_info']);
  if (zanInfo != null) {
    threadPageStickThreadList.zanInfo = zanInfo;
  }
  final String? searchSubject = jsonConvert.convert<String>(
      json['search_subject']);
  if (searchSubject != null) {
    threadPageStickThreadList.searchSubject = searchSubject;
  }
  final String? searchContent = jsonConvert.convert<String>(
      json['search_content']);
  if (searchContent != null) {
    threadPageStickThreadList.searchContent = searchContent;
  }
  final String? advStatus = jsonConvert.convert<String>(json['adv_status']);
  if (advStatus != null) {
    threadPageStickThreadList.advStatus = advStatus;
  }
  return threadPageStickThreadList;
}

Map<String, dynamic> $ThreadPageStickThreadListToJson(
    ThreadPageStickThreadList entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['author'] = entity.author.toJson();
  data['url'] = entity.url;
  data['first_post'] = entity.firstPost.toJson();
  data['is_private'] = entity.isPrivate;
  data['city_id'] = entity.cityId;
  data['fid'] = entity.fid;
  data['tid'] = entity.tid;
  data['pid'] = entity.pid;
  data['author_uid'] = entity.authorUid;
  data['category'] = entity.category;
  data['subject'] = entity.subject;
  data['thread_type'] = entity.threadType;
  data['topic_tag'] = entity.topicTag.toJson();
  data['hot'] = entity.hot;
  data['views'] = entity.views;
  data['replies'] = entity.replies;
  data['forwards'] = entity.forwards;
  data['hold_attachment'] = entity.holdAttachment;
  data['hold_video'] = entity.holdVideo;
  data['attend_activity'] = entity.attendActivity;
  data['last_post_time'] = entity.lastPostTime;
  data['stick_level'] = entity.stickLevel;
  data['highlight'] = entity.highlight;
  data['digest_level'] = entity.digestLevel;
  data['created_at'] = entity.createdAt;
  data['updated_at'] = entity.updatedAt;
  data['status'] = entity.status;
  data['board_signed'] = entity.boardSigned;
  data['read_perm'] = entity.readPerm;
  data['city_name'] = entity.cityName;
  data['extra'] = entity.extra;
  data['reply_need_verify'] = entity.replyNeedVerify;
  data['rate_need_verify'] = entity.rateNeedVerify;
  data['thread_pk'] = entity.threadPk;
  data['thread_vote'] = entity.threadVote;
  data['source'] = entity.source;
  data['is_locked'] = entity.isLocked;
  data['thread_open_original'] = entity.threadOpenOriginal;
  data['zan_info'] = entity.zanInfo.toJson();
  data['search_subject'] = entity.searchSubject;
  data['search_content'] = entity.searchContent;
  data['adv_status'] = entity.advStatus;
  return data;
}

extension ThreadPageStickThreadListExtension on ThreadPageStickThreadList {
  ThreadPageStickThreadList copyWith({
    ThreadPageStickThreadListAuthor? author,
    String? url,
    ThreadPageStickThreadListFirstPost? firstPost,
    String? isPrivate,
    String? cityId,
    String? fid,
    String? tid,
    String? pid,
    String? authorUid,
    String? category,
    String? subject,
    String? threadType,
    ThreadPageStickThreadListTopicTag? topicTag,
    String? hot,
    String? views,
    String? replies,
    String? forwards,
    bool? holdAttachment,
    bool? holdVideo,
    bool? attendActivity,
    String? lastPostTime,
    String? stickLevel,
    String? highlight,
    String? digestLevel,
    String? createdAt,
    String? updatedAt,
    String? status,
    bool? boardSigned,
    String? readPerm,
    String? cityName,
    String? extra,
    bool? replyNeedVerify,
    bool? rateNeedVerify,
    bool? threadPk,
    bool? threadVote,
    String? source,
    bool? isLocked,
    bool? threadOpenOriginal,
    ThreadPageStickThreadListZanInfo? zanInfo,
    String? searchSubject,
    String? searchContent,
    String? advStatus,
  }) {
    return ThreadPageStickThreadList()
      ..author = author ?? this.author
      ..url = url ?? this.url
      ..firstPost = firstPost ?? this.firstPost
      ..isPrivate = isPrivate ?? this.isPrivate
      ..cityId = cityId ?? this.cityId
      ..fid = fid ?? this.fid
      ..tid = tid ?? this.tid
      ..pid = pid ?? this.pid
      ..authorUid = authorUid ?? this.authorUid
      ..category = category ?? this.category
      ..subject = subject ?? this.subject
      ..threadType = threadType ?? this.threadType
      ..topicTag = topicTag ?? this.topicTag
      ..hot = hot ?? this.hot
      ..views = views ?? this.views
      ..replies = replies ?? this.replies
      ..forwards = forwards ?? this.forwards
      ..holdAttachment = holdAttachment ?? this.holdAttachment
      ..holdVideo = holdVideo ?? this.holdVideo
      ..attendActivity = attendActivity ?? this.attendActivity
      ..lastPostTime = lastPostTime ?? this.lastPostTime
      ..stickLevel = stickLevel ?? this.stickLevel
      ..highlight = highlight ?? this.highlight
      ..digestLevel = digestLevel ?? this.digestLevel
      ..createdAt = createdAt ?? this.createdAt
      ..updatedAt = updatedAt ?? this.updatedAt
      ..status = status ?? this.status
      ..boardSigned = boardSigned ?? this.boardSigned
      ..readPerm = readPerm ?? this.readPerm
      ..cityName = cityName ?? this.cityName
      ..extra = extra ?? this.extra
      ..replyNeedVerify = replyNeedVerify ?? this.replyNeedVerify
      ..rateNeedVerify = rateNeedVerify ?? this.rateNeedVerify
      ..threadPk = threadPk ?? this.threadPk
      ..threadVote = threadVote ?? this.threadVote
      ..source = source ?? this.source
      ..isLocked = isLocked ?? this.isLocked
      ..threadOpenOriginal = threadOpenOriginal ?? this.threadOpenOriginal
      ..zanInfo = zanInfo ?? this.zanInfo
      ..searchSubject = searchSubject ?? this.searchSubject
      ..searchContent = searchContent ?? this.searchContent
      ..advStatus = advStatus ?? this.advStatus;
  }
}

ThreadPageStickThreadListAuthor $ThreadPageStickThreadListAuthorFromJson(
    Map<String, dynamic> json) {
  final ThreadPageStickThreadListAuthor threadPageStickThreadListAuthor = ThreadPageStickThreadListAuthor();
  final String? uid = jsonConvert.convert<String>(json['uid']);
  if (uid != null) {
    threadPageStickThreadListAuthor.uid = uid;
  }
  final String? userName = jsonConvert.convert<String>(json['user_name']);
  if (userName != null) {
    threadPageStickThreadListAuthor.userName = userName;
  }
  final String? searchUserName = jsonConvert.convert<String>(
      json['search_user_name']);
  if (searchUserName != null) {
    threadPageStickThreadListAuthor.searchUserName = searchUserName;
  }
  final String? oldUserName = jsonConvert.convert<String>(
      json['old_user_name']);
  if (oldUserName != null) {
    threadPageStickThreadListAuthor.oldUserName = oldUserName;
  }
  final ThreadPageStickThreadListAuthorGroup? group = jsonConvert.convert<
      ThreadPageStickThreadListAuthorGroup>(json['group']);
  if (group != null) {
    threadPageStickThreadListAuthor.group = group;
  }
  final String? avatar = jsonConvert.convert<String>(json['avatar']);
  if (avatar != null) {
    threadPageStickThreadListAuthor.avatar = avatar;
  }
  final String? verifyNew = jsonConvert.convert<String>(json['verify_new']);
  if (verifyNew != null) {
    threadPageStickThreadListAuthor.verifyNew = verifyNew;
  }
  final String? verifyDesc = jsonConvert.convert<String>(json['verify_desc']);
  if (verifyDesc != null) {
    threadPageStickThreadListAuthor.verifyDesc = verifyDesc;
  }
  final String? originalAvatar = jsonConvert.convert<String>(
      json['original_avatar']);
  if (originalAvatar != null) {
    threadPageStickThreadListAuthor.originalAvatar = originalAvatar;
  }
  final String? smallAvatar = jsonConvert.convert<String>(json['small_avatar']);
  if (smallAvatar != null) {
    threadPageStickThreadListAuthor.smallAvatar = smallAvatar;
  }
  final String? genderPrivate = jsonConvert.convert<String>(
      json['gender_private']);
  if (genderPrivate != null) {
    threadPageStickThreadListAuthor.genderPrivate = genderPrivate;
  }
  final String? address = jsonConvert.convert<String>(json['address']);
  if (address != null) {
    threadPageStickThreadListAuthor.address = address;
  }
  final String? birthday = jsonConvert.convert<String>(json['birthday']);
  if (birthday != null) {
    threadPageStickThreadListAuthor.birthday = birthday;
  }
  final String? mobile = jsonConvert.convert<String>(json['mobile']);
  if (mobile != null) {
    threadPageStickThreadListAuthor.mobile = mobile;
  }
  final List<dynamic>? medals = (json['medals'] as List<dynamic>?)?.map(
          (e) => e).toList();
  if (medals != null) {
    threadPageStickThreadListAuthor.medals = medals;
  }
  final String? location = jsonConvert.convert<String>(json['location']);
  if (location != null) {
    threadPageStickThreadListAuthor.location = location;
  }
  final String? verify = jsonConvert.convert<String>(json['verify']);
  if (verify != null) {
    threadPageStickThreadListAuthor.verify = verify;
  }
  final String? highVerify = jsonConvert.convert<String>(json['high_verify']);
  if (highVerify != null) {
    threadPageStickThreadListAuthor.highVerify = highVerify;
  }
  final String? highDesc = jsonConvert.convert<String>(json['high_desc']);
  if (highDesc != null) {
    threadPageStickThreadListAuthor.highDesc = highDesc;
  }
  final String? honourVerify = jsonConvert.convert<String>(
      json['honour_verify']);
  if (honourVerify != null) {
    threadPageStickThreadListAuthor.honourVerify = honourVerify;
  }
  final String? honourDesc = jsonConvert.convert<String>(json['honour_desc']);
  if (honourDesc != null) {
    threadPageStickThreadListAuthor.honourDesc = honourDesc;
  }
  final String? realVerify = jsonConvert.convert<String>(json['real_verify']);
  if (realVerify != null) {
    threadPageStickThreadListAuthor.realVerify = realVerify;
  }
  final String? atNum = jsonConvert.convert<String>(json['at_num']);
  if (atNum != null) {
    threadPageStickThreadListAuthor.atNum = atNum;
  }
  final bool? active = jsonConvert.convert<bool>(json['active']);
  if (active != null) {
    threadPageStickThreadListAuthor.active = active;
  }
  final bool? qqBind = jsonConvert.convert<bool>(json['qq_bind']);
  if (qqBind != null) {
    threadPageStickThreadListAuthor.qqBind = qqBind;
  }
  final bool? qihooBind = jsonConvert.convert<bool>(json['qihoo_bind']);
  if (qihooBind != null) {
    threadPageStickThreadListAuthor.qihooBind = qihooBind;
  }
  final bool? mobileBind = jsonConvert.convert<bool>(json['mobile_bind']);
  if (mobileBind != null) {
    threadPageStickThreadListAuthor.mobileBind = mobileBind;
  }
  final bool? emailBind = jsonConvert.convert<bool>(json['email_bind']);
  if (emailBind != null) {
    threadPageStickThreadListAuthor.emailBind = emailBind;
  }
  final bool? sinaBind = jsonConvert.convert<bool>(json['sina_bind']);
  if (sinaBind != null) {
    threadPageStickThreadListAuthor.sinaBind = sinaBind;
  }
  final bool? weixinBind = jsonConvert.convert<bool>(json['weixin_bind']);
  if (weixinBind != null) {
    threadPageStickThreadListAuthor.weixinBind = weixinBind;
  }
  final bool? isTenYear = jsonConvert.convert<bool>(json['is_ten_year']);
  if (isTenYear != null) {
    threadPageStickThreadListAuthor.isTenYear = isTenYear;
  }
  final bool? shiJiaShangJia = jsonConvert.convert<bool>(
      json['shi_jia_shang_jia']);
  if (shiJiaShangJia != null) {
    threadPageStickThreadListAuthor.shiJiaShangJia = shiJiaShangJia;
  }
  final String? shiJiaShangJiaDesc = jsonConvert.convert<String>(
      json['shi_jia_shang_jia_desc']);
  if (shiJiaShangJiaDesc != null) {
    threadPageStickThreadListAuthor.shiJiaShangJiaDesc = shiJiaShangJiaDesc;
  }
  final bool? isSecurity = jsonConvert.convert<bool>(json['is_security']);
  if (isSecurity != null) {
    threadPageStickThreadListAuthor.isSecurity = isSecurity;
  }
  final bool? isAbnormal = jsonConvert.convert<bool>(json['is_abnormal']);
  if (isAbnormal != null) {
    threadPageStickThreadListAuthor.isAbnormal = isAbnormal;
  }
  final bool? appUser = jsonConvert.convert<bool>(json['app_user']);
  if (appUser != null) {
    threadPageStickThreadListAuthor.appUser = appUser;
  }
  final String? infoProgress = jsonConvert.convert<String>(
      json['info_progress']);
  if (infoProgress != null) {
    threadPageStickThreadListAuthor.infoProgress = infoProgress;
  }
  final String? userType = jsonConvert.convert<String>(json['user_type']);
  if (userType != null) {
    threadPageStickThreadListAuthor.userType = userType;
  }
  return threadPageStickThreadListAuthor;
}

Map<String, dynamic> $ThreadPageStickThreadListAuthorToJson(
    ThreadPageStickThreadListAuthor entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['uid'] = entity.uid;
  data['user_name'] = entity.userName;
  data['search_user_name'] = entity.searchUserName;
  data['old_user_name'] = entity.oldUserName;
  data['group'] = entity.group.toJson();
  data['avatar'] = entity.avatar;
  data['verify_new'] = entity.verifyNew;
  data['verify_desc'] = entity.verifyDesc;
  data['original_avatar'] = entity.originalAvatar;
  data['small_avatar'] = entity.smallAvatar;
  data['gender_private'] = entity.genderPrivate;
  data['address'] = entity.address;
  data['birthday'] = entity.birthday;
  data['mobile'] = entity.mobile;
  data['medals'] = entity.medals;
  data['location'] = entity.location;
  data['verify'] = entity.verify;
  data['high_verify'] = entity.highVerify;
  data['high_desc'] = entity.highDesc;
  data['honour_verify'] = entity.honourVerify;
  data['honour_desc'] = entity.honourDesc;
  data['real_verify'] = entity.realVerify;
  data['at_num'] = entity.atNum;
  data['active'] = entity.active;
  data['qq_bind'] = entity.qqBind;
  data['qihoo_bind'] = entity.qihooBind;
  data['mobile_bind'] = entity.mobileBind;
  data['email_bind'] = entity.emailBind;
  data['sina_bind'] = entity.sinaBind;
  data['weixin_bind'] = entity.weixinBind;
  data['is_ten_year'] = entity.isTenYear;
  data['shi_jia_shang_jia'] = entity.shiJiaShangJia;
  data['shi_jia_shang_jia_desc'] = entity.shiJiaShangJiaDesc;
  data['is_security'] = entity.isSecurity;
  data['is_abnormal'] = entity.isAbnormal;
  data['app_user'] = entity.appUser;
  data['info_progress'] = entity.infoProgress;
  data['user_type'] = entity.userType;
  return data;
}

extension ThreadPageStickThreadListAuthorExtension on ThreadPageStickThreadListAuthor {
  ThreadPageStickThreadListAuthor copyWith({
    String? uid,
    String? userName,
    String? searchUserName,
    String? oldUserName,
    ThreadPageStickThreadListAuthorGroup? group,
    String? avatar,
    String? verifyNew,
    String? verifyDesc,
    String? originalAvatar,
    String? smallAvatar,
    String? genderPrivate,
    String? address,
    String? birthday,
    String? mobile,
    List<dynamic>? medals,
    String? location,
    String? verify,
    String? highVerify,
    String? highDesc,
    String? honourVerify,
    String? honourDesc,
    String? realVerify,
    String? atNum,
    bool? active,
    bool? qqBind,
    bool? qihooBind,
    bool? mobileBind,
    bool? emailBind,
    bool? sinaBind,
    bool? weixinBind,
    bool? isTenYear,
    bool? shiJiaShangJia,
    String? shiJiaShangJiaDesc,
    bool? isSecurity,
    bool? isAbnormal,
    bool? appUser,
    String? infoProgress,
    String? userType,
  }) {
    return ThreadPageStickThreadListAuthor()
      ..uid = uid ?? this.uid
      ..userName = userName ?? this.userName
      ..searchUserName = searchUserName ?? this.searchUserName
      ..oldUserName = oldUserName ?? this.oldUserName
      ..group = group ?? this.group
      ..avatar = avatar ?? this.avatar
      ..verifyNew = verifyNew ?? this.verifyNew
      ..verifyDesc = verifyDesc ?? this.verifyDesc
      ..originalAvatar = originalAvatar ?? this.originalAvatar
      ..smallAvatar = smallAvatar ?? this.smallAvatar
      ..genderPrivate = genderPrivate ?? this.genderPrivate
      ..address = address ?? this.address
      ..birthday = birthday ?? this.birthday
      ..mobile = mobile ?? this.mobile
      ..medals = medals ?? this.medals
      ..location = location ?? this.location
      ..verify = verify ?? this.verify
      ..highVerify = highVerify ?? this.highVerify
      ..highDesc = highDesc ?? this.highDesc
      ..honourVerify = honourVerify ?? this.honourVerify
      ..honourDesc = honourDesc ?? this.honourDesc
      ..realVerify = realVerify ?? this.realVerify
      ..atNum = atNum ?? this.atNum
      ..active = active ?? this.active
      ..qqBind = qqBind ?? this.qqBind
      ..qihooBind = qihooBind ?? this.qihooBind
      ..mobileBind = mobileBind ?? this.mobileBind
      ..emailBind = emailBind ?? this.emailBind
      ..sinaBind = sinaBind ?? this.sinaBind
      ..weixinBind = weixinBind ?? this.weixinBind
      ..isTenYear = isTenYear ?? this.isTenYear
      ..shiJiaShangJia = shiJiaShangJia ?? this.shiJiaShangJia
      ..shiJiaShangJiaDesc = shiJiaShangJiaDesc ?? this.shiJiaShangJiaDesc
      ..isSecurity = isSecurity ?? this.isSecurity
      ..isAbnormal = isAbnormal ?? this.isAbnormal
      ..appUser = appUser ?? this.appUser
      ..infoProgress = infoProgress ?? this.infoProgress
      ..userType = userType ?? this.userType;
  }
}

ThreadPageStickThreadListAuthorGroup $ThreadPageStickThreadListAuthorGroupFromJson(
    Map<String, dynamic> json) {
  final ThreadPageStickThreadListAuthorGroup threadPageStickThreadListAuthorGroup = ThreadPageStickThreadListAuthorGroup();
  final String? gid = jsonConvert.convert<String>(json['gid']);
  if (gid != null) {
    threadPageStickThreadListAuthorGroup.gid = gid;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    threadPageStickThreadListAuthorGroup.name = name;
  }
  final String? category = jsonConvert.convert<String>(json['category']);
  if (category != null) {
    threadPageStickThreadListAuthorGroup.category = category;
  }
  final String? rank = jsonConvert.convert<String>(json['rank']);
  if (rank != null) {
    threadPageStickThreadListAuthorGroup.rank = rank;
  }
  final String? picture = jsonConvert.convert<String>(json['picture']);
  if (picture != null) {
    threadPageStickThreadListAuthorGroup.picture = picture;
  }
  return threadPageStickThreadListAuthorGroup;
}

Map<String, dynamic> $ThreadPageStickThreadListAuthorGroupToJson(
    ThreadPageStickThreadListAuthorGroup entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['gid'] = entity.gid;
  data['name'] = entity.name;
  data['category'] = entity.category;
  data['rank'] = entity.rank;
  data['picture'] = entity.picture;
  return data;
}

extension ThreadPageStickThreadListAuthorGroupExtension on ThreadPageStickThreadListAuthorGroup {
  ThreadPageStickThreadListAuthorGroup copyWith({
    String? gid,
    String? name,
    String? category,
    String? rank,
    String? picture,
  }) {
    return ThreadPageStickThreadListAuthorGroup()
      ..gid = gid ?? this.gid
      ..name = name ?? this.name
      ..category = category ?? this.category
      ..rank = rank ?? this.rank
      ..picture = picture ?? this.picture;
  }
}

ThreadPageStickThreadListFirstPost $ThreadPageStickThreadListFirstPostFromJson(
    Map<String, dynamic> json) {
  final ThreadPageStickThreadListFirstPost threadPageStickThreadListFirstPost = ThreadPageStickThreadListFirstPost();
  final ThreadPageStickThreadListFirstPostAuthor? author = jsonConvert.convert<
      ThreadPageStickThreadListFirstPostAuthor>(json['author']);
  if (author != null) {
    threadPageStickThreadListFirstPost.author = author;
  }
  final String? pid = jsonConvert.convert<String>(json['pid']);
  if (pid != null) {
    threadPageStickThreadListFirstPost.pid = pid;
  }
  final bool? isFirst = jsonConvert.convert<bool>(json['is_first']);
  if (isFirst != null) {
    threadPageStickThreadListFirstPost.isFirst = isFirst;
  }
  final bool? isWater = jsonConvert.convert<bool>(json['is_water']);
  if (isWater != null) {
    threadPageStickThreadListFirstPost.isWater = isWater;
  }
  final String? subject = jsonConvert.convert<String>(json['subject']);
  if (subject != null) {
    threadPageStickThreadListFirstPost.subject = subject;
  }
  final String? message = jsonConvert.convert<String>(json['message']);
  if (message != null) {
    threadPageStickThreadListFirstPost.message = message;
  }
  final String? shareBbcodeMessage = jsonConvert.convert<String>(
      json['share_bbcode_message']);
  if (shareBbcodeMessage != null) {
    threadPageStickThreadListFirstPost.shareBbcodeMessage = shareBbcodeMessage;
  }
  final String? parentPid = jsonConvert.convert<String>(json['parent_pid']);
  if (parentPid != null) {
    threadPageStickThreadListFirstPost.parentPid = parentPid;
  }
  final String? replyPid = jsonConvert.convert<String>(json['reply_pid']);
  if (replyPid != null) {
    threadPageStickThreadListFirstPost.replyPid = replyPid;
  }
  final String? replyUid = jsonConvert.convert<String>(json['reply_uid']);
  if (replyUid != null) {
    threadPageStickThreadListFirstPost.replyUid = replyUid;
  }
  final String? replyUserName = jsonConvert.convert<String>(
      json['reply_user_name']);
  if (replyUserName != null) {
    threadPageStickThreadListFirstPost.replyUserName = replyUserName;
  }
  final String? warnMessage = jsonConvert.convert<String>(json['warn_message']);
  if (warnMessage != null) {
    threadPageStickThreadListFirstPost.warnMessage = warnMessage;
  }
  final String? editMessage = jsonConvert.convert<String>(json['edit_message']);
  if (editMessage != null) {
    threadPageStickThreadListFirstPost.editMessage = editMessage;
  }
  final bool? htmlon = jsonConvert.convert<bool>(json['htmlon']);
  if (htmlon != null) {
    threadPageStickThreadListFirstPost.htmlon = htmlon;
  }
  final bool? holdAttachment = jsonConvert.convert<bool>(
      json['hold_attachment']);
  if (holdAttachment != null) {
    threadPageStickThreadListFirstPost.holdAttachment = holdAttachment;
  }
  final bool? holdRefer = jsonConvert.convert<bool>(json['hold_refer']);
  if (holdRefer != null) {
    threadPageStickThreadListFirstPost.holdRefer = holdRefer;
  }
  final bool? goodReply = jsonConvert.convert<bool>(json['good_reply']);
  if (goodReply != null) {
    threadPageStickThreadListFirstPost.goodReply = goodReply;
  }
  final bool? holdRate = jsonConvert.convert<bool>(json['hold_rate']);
  if (holdRate != null) {
    threadPageStickThreadListFirstPost.holdRate = holdRate;
  }
  final bool? ratePk = jsonConvert.convert<bool>(json['rate_pk']);
  if (ratePk != null) {
    threadPageStickThreadListFirstPost.ratePk = ratePk;
  }
  final List<
      ThreadPageStickThreadListFirstPostRateInfo>? rateInfo = (json['rate_info'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<ThreadPageStickThreadListFirstPostRateInfo>(
          e) as ThreadPageStickThreadListFirstPostRateInfo).toList();
  if (rateInfo != null) {
    threadPageStickThreadListFirstPost.rateInfo = rateInfo;
  }
  final String? source = jsonConvert.convert<String>(json['source']);
  if (source != null) {
    threadPageStickThreadListFirstPost.source = source;
  }
  final String? createdAt = jsonConvert.convert<String>(json['created_at']);
  if (createdAt != null) {
    threadPageStickThreadListFirstPost.createdAt = createdAt;
  }
  final String? updatedAt = jsonConvert.convert<String>(json['updated_at']);
  if (updatedAt != null) {
    threadPageStickThreadListFirstPost.updatedAt = updatedAt;
  }
  final bool? hasRichText = jsonConvert.convert<bool>(json['has_rich_text']);
  if (hasRichText != null) {
    threadPageStickThreadListFirstPost.hasRichText = hasRichText;
  }
  final String? status = jsonConvert.convert<String>(json['status']);
  if (status != null) {
    threadPageStickThreadListFirstPost.status = status;
  }
  final bool? auditFirst = jsonConvert.convert<bool>(json['audit_first']);
  if (auditFirst != null) {
    threadPageStickThreadListFirstPost.auditFirst = auditFirst;
  }
  return threadPageStickThreadListFirstPost;
}

Map<String, dynamic> $ThreadPageStickThreadListFirstPostToJson(
    ThreadPageStickThreadListFirstPost entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['author'] = entity.author.toJson();
  data['pid'] = entity.pid;
  data['is_first'] = entity.isFirst;
  data['is_water'] = entity.isWater;
  data['subject'] = entity.subject;
  data['message'] = entity.message;
  data['share_bbcode_message'] = entity.shareBbcodeMessage;
  data['parent_pid'] = entity.parentPid;
  data['reply_pid'] = entity.replyPid;
  data['reply_uid'] = entity.replyUid;
  data['reply_user_name'] = entity.replyUserName;
  data['warn_message'] = entity.warnMessage;
  data['edit_message'] = entity.editMessage;
  data['htmlon'] = entity.htmlon;
  data['hold_attachment'] = entity.holdAttachment;
  data['hold_refer'] = entity.holdRefer;
  data['good_reply'] = entity.goodReply;
  data['hold_rate'] = entity.holdRate;
  data['rate_pk'] = entity.ratePk;
  data['rate_info'] = entity.rateInfo.map((v) => v.toJson()).toList();
  data['source'] = entity.source;
  data['created_at'] = entity.createdAt;
  data['updated_at'] = entity.updatedAt;
  data['has_rich_text'] = entity.hasRichText;
  data['status'] = entity.status;
  data['audit_first'] = entity.auditFirst;
  return data;
}

extension ThreadPageStickThreadListFirstPostExtension on ThreadPageStickThreadListFirstPost {
  ThreadPageStickThreadListFirstPost copyWith({
    ThreadPageStickThreadListFirstPostAuthor? author,
    String? pid,
    bool? isFirst,
    bool? isWater,
    String? subject,
    String? message,
    String? shareBbcodeMessage,
    String? parentPid,
    String? replyPid,
    String? replyUid,
    String? replyUserName,
    String? warnMessage,
    String? editMessage,
    bool? htmlon,
    bool? holdAttachment,
    bool? holdRefer,
    bool? goodReply,
    bool? holdRate,
    bool? ratePk,
    List<ThreadPageStickThreadListFirstPostRateInfo>? rateInfo,
    String? source,
    String? createdAt,
    String? updatedAt,
    bool? hasRichText,
    String? status,
    bool? auditFirst,
  }) {
    return ThreadPageStickThreadListFirstPost()
      ..author = author ?? this.author
      ..pid = pid ?? this.pid
      ..isFirst = isFirst ?? this.isFirst
      ..isWater = isWater ?? this.isWater
      ..subject = subject ?? this.subject
      ..message = message ?? this.message
      ..shareBbcodeMessage = shareBbcodeMessage ?? this.shareBbcodeMessage
      ..parentPid = parentPid ?? this.parentPid
      ..replyPid = replyPid ?? this.replyPid
      ..replyUid = replyUid ?? this.replyUid
      ..replyUserName = replyUserName ?? this.replyUserName
      ..warnMessage = warnMessage ?? this.warnMessage
      ..editMessage = editMessage ?? this.editMessage
      ..htmlon = htmlon ?? this.htmlon
      ..holdAttachment = holdAttachment ?? this.holdAttachment
      ..holdRefer = holdRefer ?? this.holdRefer
      ..goodReply = goodReply ?? this.goodReply
      ..holdRate = holdRate ?? this.holdRate
      ..ratePk = ratePk ?? this.ratePk
      ..rateInfo = rateInfo ?? this.rateInfo
      ..source = source ?? this.source
      ..createdAt = createdAt ?? this.createdAt
      ..updatedAt = updatedAt ?? this.updatedAt
      ..hasRichText = hasRichText ?? this.hasRichText
      ..status = status ?? this.status
      ..auditFirst = auditFirst ?? this.auditFirst;
  }
}

ThreadPageStickThreadListFirstPostAuthor $ThreadPageStickThreadListFirstPostAuthorFromJson(
    Map<String, dynamic> json) {
  final ThreadPageStickThreadListFirstPostAuthor threadPageStickThreadListFirstPostAuthor = ThreadPageStickThreadListFirstPostAuthor();
  final String? uid = jsonConvert.convert<String>(json['uid']);
  if (uid != null) {
    threadPageStickThreadListFirstPostAuthor.uid = uid;
  }
  final String? userName = jsonConvert.convert<String>(json['user_name']);
  if (userName != null) {
    threadPageStickThreadListFirstPostAuthor.userName = userName;
  }
  final String? searchUserName = jsonConvert.convert<String>(
      json['search_user_name']);
  if (searchUserName != null) {
    threadPageStickThreadListFirstPostAuthor.searchUserName = searchUserName;
  }
  final String? oldUserName = jsonConvert.convert<String>(
      json['old_user_name']);
  if (oldUserName != null) {
    threadPageStickThreadListFirstPostAuthor.oldUserName = oldUserName;
  }
  final ThreadPageStickThreadListFirstPostAuthorGroup? group = jsonConvert
      .convert<ThreadPageStickThreadListFirstPostAuthorGroup>(json['group']);
  if (group != null) {
    threadPageStickThreadListFirstPostAuthor.group = group;
  }
  final String? avatar = jsonConvert.convert<String>(json['avatar']);
  if (avatar != null) {
    threadPageStickThreadListFirstPostAuthor.avatar = avatar;
  }
  final String? verifyNew = jsonConvert.convert<String>(json['verify_new']);
  if (verifyNew != null) {
    threadPageStickThreadListFirstPostAuthor.verifyNew = verifyNew;
  }
  final String? verifyDesc = jsonConvert.convert<String>(json['verify_desc']);
  if (verifyDesc != null) {
    threadPageStickThreadListFirstPostAuthor.verifyDesc = verifyDesc;
  }
  final String? originalAvatar = jsonConvert.convert<String>(
      json['original_avatar']);
  if (originalAvatar != null) {
    threadPageStickThreadListFirstPostAuthor.originalAvatar = originalAvatar;
  }
  final String? smallAvatar = jsonConvert.convert<String>(json['small_avatar']);
  if (smallAvatar != null) {
    threadPageStickThreadListFirstPostAuthor.smallAvatar = smallAvatar;
  }
  final String? genderPrivate = jsonConvert.convert<String>(
      json['gender_private']);
  if (genderPrivate != null) {
    threadPageStickThreadListFirstPostAuthor.genderPrivate = genderPrivate;
  }
  final String? address = jsonConvert.convert<String>(json['address']);
  if (address != null) {
    threadPageStickThreadListFirstPostAuthor.address = address;
  }
  final String? birthday = jsonConvert.convert<String>(json['birthday']);
  if (birthday != null) {
    threadPageStickThreadListFirstPostAuthor.birthday = birthday;
  }
  final String? mobile = jsonConvert.convert<String>(json['mobile']);
  if (mobile != null) {
    threadPageStickThreadListFirstPostAuthor.mobile = mobile;
  }
  final List<dynamic>? medals = (json['medals'] as List<dynamic>?)?.map(
          (e) => e).toList();
  if (medals != null) {
    threadPageStickThreadListFirstPostAuthor.medals = medals;
  }
  final String? location = jsonConvert.convert<String>(json['location']);
  if (location != null) {
    threadPageStickThreadListFirstPostAuthor.location = location;
  }
  final String? verify = jsonConvert.convert<String>(json['verify']);
  if (verify != null) {
    threadPageStickThreadListFirstPostAuthor.verify = verify;
  }
  final String? highVerify = jsonConvert.convert<String>(json['high_verify']);
  if (highVerify != null) {
    threadPageStickThreadListFirstPostAuthor.highVerify = highVerify;
  }
  final String? highDesc = jsonConvert.convert<String>(json['high_desc']);
  if (highDesc != null) {
    threadPageStickThreadListFirstPostAuthor.highDesc = highDesc;
  }
  final String? honourVerify = jsonConvert.convert<String>(
      json['honour_verify']);
  if (honourVerify != null) {
    threadPageStickThreadListFirstPostAuthor.honourVerify = honourVerify;
  }
  final String? honourDesc = jsonConvert.convert<String>(json['honour_desc']);
  if (honourDesc != null) {
    threadPageStickThreadListFirstPostAuthor.honourDesc = honourDesc;
  }
  final String? realVerify = jsonConvert.convert<String>(json['real_verify']);
  if (realVerify != null) {
    threadPageStickThreadListFirstPostAuthor.realVerify = realVerify;
  }
  final String? atNum = jsonConvert.convert<String>(json['at_num']);
  if (atNum != null) {
    threadPageStickThreadListFirstPostAuthor.atNum = atNum;
  }
  final bool? active = jsonConvert.convert<bool>(json['active']);
  if (active != null) {
    threadPageStickThreadListFirstPostAuthor.active = active;
  }
  final bool? qqBind = jsonConvert.convert<bool>(json['qq_bind']);
  if (qqBind != null) {
    threadPageStickThreadListFirstPostAuthor.qqBind = qqBind;
  }
  final bool? qihooBind = jsonConvert.convert<bool>(json['qihoo_bind']);
  if (qihooBind != null) {
    threadPageStickThreadListFirstPostAuthor.qihooBind = qihooBind;
  }
  final bool? mobileBind = jsonConvert.convert<bool>(json['mobile_bind']);
  if (mobileBind != null) {
    threadPageStickThreadListFirstPostAuthor.mobileBind = mobileBind;
  }
  final bool? emailBind = jsonConvert.convert<bool>(json['email_bind']);
  if (emailBind != null) {
    threadPageStickThreadListFirstPostAuthor.emailBind = emailBind;
  }
  final bool? sinaBind = jsonConvert.convert<bool>(json['sina_bind']);
  if (sinaBind != null) {
    threadPageStickThreadListFirstPostAuthor.sinaBind = sinaBind;
  }
  final bool? weixinBind = jsonConvert.convert<bool>(json['weixin_bind']);
  if (weixinBind != null) {
    threadPageStickThreadListFirstPostAuthor.weixinBind = weixinBind;
  }
  final bool? isTenYear = jsonConvert.convert<bool>(json['is_ten_year']);
  if (isTenYear != null) {
    threadPageStickThreadListFirstPostAuthor.isTenYear = isTenYear;
  }
  final bool? shiJiaShangJia = jsonConvert.convert<bool>(
      json['shi_jia_shang_jia']);
  if (shiJiaShangJia != null) {
    threadPageStickThreadListFirstPostAuthor.shiJiaShangJia = shiJiaShangJia;
  }
  final String? shiJiaShangJiaDesc = jsonConvert.convert<String>(
      json['shi_jia_shang_jia_desc']);
  if (shiJiaShangJiaDesc != null) {
    threadPageStickThreadListFirstPostAuthor.shiJiaShangJiaDesc =
        shiJiaShangJiaDesc;
  }
  final bool? isSecurity = jsonConvert.convert<bool>(json['is_security']);
  if (isSecurity != null) {
    threadPageStickThreadListFirstPostAuthor.isSecurity = isSecurity;
  }
  final bool? isAbnormal = jsonConvert.convert<bool>(json['is_abnormal']);
  if (isAbnormal != null) {
    threadPageStickThreadListFirstPostAuthor.isAbnormal = isAbnormal;
  }
  final bool? appUser = jsonConvert.convert<bool>(json['app_user']);
  if (appUser != null) {
    threadPageStickThreadListFirstPostAuthor.appUser = appUser;
  }
  final String? infoProgress = jsonConvert.convert<String>(
      json['info_progress']);
  if (infoProgress != null) {
    threadPageStickThreadListFirstPostAuthor.infoProgress = infoProgress;
  }
  final String? userType = jsonConvert.convert<String>(json['user_type']);
  if (userType != null) {
    threadPageStickThreadListFirstPostAuthor.userType = userType;
  }
  return threadPageStickThreadListFirstPostAuthor;
}

Map<String, dynamic> $ThreadPageStickThreadListFirstPostAuthorToJson(
    ThreadPageStickThreadListFirstPostAuthor entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['uid'] = entity.uid;
  data['user_name'] = entity.userName;
  data['search_user_name'] = entity.searchUserName;
  data['old_user_name'] = entity.oldUserName;
  data['group'] = entity.group.toJson();
  data['avatar'] = entity.avatar;
  data['verify_new'] = entity.verifyNew;
  data['verify_desc'] = entity.verifyDesc;
  data['original_avatar'] = entity.originalAvatar;
  data['small_avatar'] = entity.smallAvatar;
  data['gender_private'] = entity.genderPrivate;
  data['address'] = entity.address;
  data['birthday'] = entity.birthday;
  data['mobile'] = entity.mobile;
  data['medals'] = entity.medals;
  data['location'] = entity.location;
  data['verify'] = entity.verify;
  data['high_verify'] = entity.highVerify;
  data['high_desc'] = entity.highDesc;
  data['honour_verify'] = entity.honourVerify;
  data['honour_desc'] = entity.honourDesc;
  data['real_verify'] = entity.realVerify;
  data['at_num'] = entity.atNum;
  data['active'] = entity.active;
  data['qq_bind'] = entity.qqBind;
  data['qihoo_bind'] = entity.qihooBind;
  data['mobile_bind'] = entity.mobileBind;
  data['email_bind'] = entity.emailBind;
  data['sina_bind'] = entity.sinaBind;
  data['weixin_bind'] = entity.weixinBind;
  data['is_ten_year'] = entity.isTenYear;
  data['shi_jia_shang_jia'] = entity.shiJiaShangJia;
  data['shi_jia_shang_jia_desc'] = entity.shiJiaShangJiaDesc;
  data['is_security'] = entity.isSecurity;
  data['is_abnormal'] = entity.isAbnormal;
  data['app_user'] = entity.appUser;
  data['info_progress'] = entity.infoProgress;
  data['user_type'] = entity.userType;
  return data;
}

extension ThreadPageStickThreadListFirstPostAuthorExtension on ThreadPageStickThreadListFirstPostAuthor {
  ThreadPageStickThreadListFirstPostAuthor copyWith({
    String? uid,
    String? userName,
    String? searchUserName,
    String? oldUserName,
    ThreadPageStickThreadListFirstPostAuthorGroup? group,
    String? avatar,
    String? verifyNew,
    String? verifyDesc,
    String? originalAvatar,
    String? smallAvatar,
    String? genderPrivate,
    String? address,
    String? birthday,
    String? mobile,
    List<dynamic>? medals,
    String? location,
    String? verify,
    String? highVerify,
    String? highDesc,
    String? honourVerify,
    String? honourDesc,
    String? realVerify,
    String? atNum,
    bool? active,
    bool? qqBind,
    bool? qihooBind,
    bool? mobileBind,
    bool? emailBind,
    bool? sinaBind,
    bool? weixinBind,
    bool? isTenYear,
    bool? shiJiaShangJia,
    String? shiJiaShangJiaDesc,
    bool? isSecurity,
    bool? isAbnormal,
    bool? appUser,
    String? infoProgress,
    String? userType,
  }) {
    return ThreadPageStickThreadListFirstPostAuthor()
      ..uid = uid ?? this.uid
      ..userName = userName ?? this.userName
      ..searchUserName = searchUserName ?? this.searchUserName
      ..oldUserName = oldUserName ?? this.oldUserName
      ..group = group ?? this.group
      ..avatar = avatar ?? this.avatar
      ..verifyNew = verifyNew ?? this.verifyNew
      ..verifyDesc = verifyDesc ?? this.verifyDesc
      ..originalAvatar = originalAvatar ?? this.originalAvatar
      ..smallAvatar = smallAvatar ?? this.smallAvatar
      ..genderPrivate = genderPrivate ?? this.genderPrivate
      ..address = address ?? this.address
      ..birthday = birthday ?? this.birthday
      ..mobile = mobile ?? this.mobile
      ..medals = medals ?? this.medals
      ..location = location ?? this.location
      ..verify = verify ?? this.verify
      ..highVerify = highVerify ?? this.highVerify
      ..highDesc = highDesc ?? this.highDesc
      ..honourVerify = honourVerify ?? this.honourVerify
      ..honourDesc = honourDesc ?? this.honourDesc
      ..realVerify = realVerify ?? this.realVerify
      ..atNum = atNum ?? this.atNum
      ..active = active ?? this.active
      ..qqBind = qqBind ?? this.qqBind
      ..qihooBind = qihooBind ?? this.qihooBind
      ..mobileBind = mobileBind ?? this.mobileBind
      ..emailBind = emailBind ?? this.emailBind
      ..sinaBind = sinaBind ?? this.sinaBind
      ..weixinBind = weixinBind ?? this.weixinBind
      ..isTenYear = isTenYear ?? this.isTenYear
      ..shiJiaShangJia = shiJiaShangJia ?? this.shiJiaShangJia
      ..shiJiaShangJiaDesc = shiJiaShangJiaDesc ?? this.shiJiaShangJiaDesc
      ..isSecurity = isSecurity ?? this.isSecurity
      ..isAbnormal = isAbnormal ?? this.isAbnormal
      ..appUser = appUser ?? this.appUser
      ..infoProgress = infoProgress ?? this.infoProgress
      ..userType = userType ?? this.userType;
  }
}

ThreadPageStickThreadListFirstPostAuthorGroup $ThreadPageStickThreadListFirstPostAuthorGroupFromJson(
    Map<String, dynamic> json) {
  final ThreadPageStickThreadListFirstPostAuthorGroup threadPageStickThreadListFirstPostAuthorGroup = ThreadPageStickThreadListFirstPostAuthorGroup();
  final String? gid = jsonConvert.convert<String>(json['gid']);
  if (gid != null) {
    threadPageStickThreadListFirstPostAuthorGroup.gid = gid;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    threadPageStickThreadListFirstPostAuthorGroup.name = name;
  }
  final String? category = jsonConvert.convert<String>(json['category']);
  if (category != null) {
    threadPageStickThreadListFirstPostAuthorGroup.category = category;
  }
  final String? rank = jsonConvert.convert<String>(json['rank']);
  if (rank != null) {
    threadPageStickThreadListFirstPostAuthorGroup.rank = rank;
  }
  final String? picture = jsonConvert.convert<String>(json['picture']);
  if (picture != null) {
    threadPageStickThreadListFirstPostAuthorGroup.picture = picture;
  }
  return threadPageStickThreadListFirstPostAuthorGroup;
}

Map<String, dynamic> $ThreadPageStickThreadListFirstPostAuthorGroupToJson(
    ThreadPageStickThreadListFirstPostAuthorGroup entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['gid'] = entity.gid;
  data['name'] = entity.name;
  data['category'] = entity.category;
  data['rank'] = entity.rank;
  data['picture'] = entity.picture;
  return data;
}

extension ThreadPageStickThreadListFirstPostAuthorGroupExtension on ThreadPageStickThreadListFirstPostAuthorGroup {
  ThreadPageStickThreadListFirstPostAuthorGroup copyWith({
    String? gid,
    String? name,
    String? category,
    String? rank,
    String? picture,
  }) {
    return ThreadPageStickThreadListFirstPostAuthorGroup()
      ..gid = gid ?? this.gid
      ..name = name ?? this.name
      ..category = category ?? this.category
      ..rank = rank ?? this.rank
      ..picture = picture ?? this.picture;
  }
}

ThreadPageStickThreadListFirstPostRateInfo $ThreadPageStickThreadListFirstPostRateInfoFromJson(
    Map<String, dynamic> json) {
  final ThreadPageStickThreadListFirstPostRateInfo threadPageStickThreadListFirstPostRateInfo = ThreadPageStickThreadListFirstPostRateInfo();
  final String? incentiveId = jsonConvert.convert<String>(json['incentive_id']);
  if (incentiveId != null) {
    threadPageStickThreadListFirstPostRateInfo.incentiveId = incentiveId;
  }
  final String? plusNumber = jsonConvert.convert<String>(json['plus_number']);
  if (plusNumber != null) {
    threadPageStickThreadListFirstPostRateInfo.plusNumber = plusNumber;
  }
  final String? minusNumber = jsonConvert.convert<String>(json['minus_number']);
  if (minusNumber != null) {
    threadPageStickThreadListFirstPostRateInfo.minusNumber = minusNumber;
  }
  final String? count = jsonConvert.convert<String>(json['count']);
  if (count != null) {
    threadPageStickThreadListFirstPostRateInfo.count = count;
  }
  return threadPageStickThreadListFirstPostRateInfo;
}

Map<String, dynamic> $ThreadPageStickThreadListFirstPostRateInfoToJson(
    ThreadPageStickThreadListFirstPostRateInfo entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['incentive_id'] = entity.incentiveId;
  data['plus_number'] = entity.plusNumber;
  data['minus_number'] = entity.minusNumber;
  data['count'] = entity.count;
  return data;
}

extension ThreadPageStickThreadListFirstPostRateInfoExtension on ThreadPageStickThreadListFirstPostRateInfo {
  ThreadPageStickThreadListFirstPostRateInfo copyWith({
    String? incentiveId,
    String? plusNumber,
    String? minusNumber,
    String? count,
  }) {
    return ThreadPageStickThreadListFirstPostRateInfo()
      ..incentiveId = incentiveId ?? this.incentiveId
      ..plusNumber = plusNumber ?? this.plusNumber
      ..minusNumber = minusNumber ?? this.minusNumber
      ..count = count ?? this.count;
  }
}

ThreadPageStickThreadListTopicTag $ThreadPageStickThreadListTopicTagFromJson(
    Map<String, dynamic> json) {
  final ThreadPageStickThreadListTopicTag threadPageStickThreadListTopicTag = ThreadPageStickThreadListTopicTag();
  final String? id = jsonConvert.convert<String>(json['id']);
  if (id != null) {
    threadPageStickThreadListTopicTag.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    threadPageStickThreadListTopicTag.name = name;
  }
  final String? canBusiness = jsonConvert.convert<String>(json['can_business']);
  if (canBusiness != null) {
    threadPageStickThreadListTopicTag.canBusiness = canBusiness;
  }
  final String? logoImgUrl = jsonConvert.convert<String>(json['logo_img_url']);
  if (logoImgUrl != null) {
    threadPageStickThreadListTopicTag.logoImgUrl = logoImgUrl;
  }
  return threadPageStickThreadListTopicTag;
}

Map<String, dynamic> $ThreadPageStickThreadListTopicTagToJson(
    ThreadPageStickThreadListTopicTag entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['name'] = entity.name;
  data['can_business'] = entity.canBusiness;
  data['logo_img_url'] = entity.logoImgUrl;
  return data;
}

extension ThreadPageStickThreadListTopicTagExtension on ThreadPageStickThreadListTopicTag {
  ThreadPageStickThreadListTopicTag copyWith({
    String? id,
    String? name,
    String? canBusiness,
    String? logoImgUrl,
  }) {
    return ThreadPageStickThreadListTopicTag()
      ..id = id ?? this.id
      ..name = name ?? this.name
      ..canBusiness = canBusiness ?? this.canBusiness
      ..logoImgUrl = logoImgUrl ?? this.logoImgUrl;
  }
}

ThreadPageStickThreadListZanInfo $ThreadPageStickThreadListZanInfoFromJson(
    Map<String, dynamic> json) {
  final ThreadPageStickThreadListZanInfo threadPageStickThreadListZanInfo = ThreadPageStickThreadListZanInfo();
  final String? uid = jsonConvert.convert<String>(json['uid']);
  if (uid != null) {
    threadPageStickThreadListZanInfo.uid = uid;
  }
  final String? category = jsonConvert.convert<String>(json['category']);
  if (category != null) {
    threadPageStickThreadListZanInfo.category = category;
  }
  final String? objectId = jsonConvert.convert<String>(json['object_id']);
  if (objectId != null) {
    threadPageStickThreadListZanInfo.objectId = objectId;
  }
  final String? relationObjectIds = jsonConvert.convert<String>(
      json['relation_object_ids']);
  if (relationObjectIds != null) {
    threadPageStickThreadListZanInfo.relationObjectIds = relationObjectIds;
  }
  final String? timeStamp = jsonConvert.convert<String>(json['time_stamp']);
  if (timeStamp != null) {
    threadPageStickThreadListZanInfo.timeStamp = timeStamp;
  }
  final String? sign = jsonConvert.convert<String>(json['sign']);
  if (sign != null) {
    threadPageStickThreadListZanInfo.sign = sign;
  }
  return threadPageStickThreadListZanInfo;
}

Map<String, dynamic> $ThreadPageStickThreadListZanInfoToJson(
    ThreadPageStickThreadListZanInfo entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['uid'] = entity.uid;
  data['category'] = entity.category;
  data['object_id'] = entity.objectId;
  data['relation_object_ids'] = entity.relationObjectIds;
  data['time_stamp'] = entity.timeStamp;
  data['sign'] = entity.sign;
  return data;
}

extension ThreadPageStickThreadListZanInfoExtension on ThreadPageStickThreadListZanInfo {
  ThreadPageStickThreadListZanInfo copyWith({
    String? uid,
    String? category,
    String? objectId,
    String? relationObjectIds,
    String? timeStamp,
    String? sign,
  }) {
    return ThreadPageStickThreadListZanInfo()
      ..uid = uid ?? this.uid
      ..category = category ?? this.category
      ..objectId = objectId ?? this.objectId
      ..relationObjectIds = relationObjectIds ?? this.relationObjectIds
      ..timeStamp = timeStamp ?? this.timeStamp
      ..sign = sign ?? this.sign;
  }
}