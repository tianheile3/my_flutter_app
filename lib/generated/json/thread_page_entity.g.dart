import 'package:flutter_study/api/response/common/author_entity.dart';
import 'package:flutter_study/api/response/common/business_tag_entity.dart';
import 'package:flutter_study/api/response/common/topic_tag_entity.dart';
import 'package:flutter_study/api/response/common/zan_info_entity.dart';
import 'package:flutter_study/api/response/thread_page_entity.dart';
import 'package:flutter_study/generated/json/base/json_convert_content.dart';

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
  final ThreadPageForumInfo? forumInfo = jsonConvert
      .convert<ThreadPageForumInfo>(json['forum_info']);
  if (forumInfo != null) {
    threadPageEntity.forumInfo = forumInfo;
  }
  final List<ThreadPageThreadList>? threadList =
      (json['thread_list'] as List<dynamic>?)
          ?.map(
            (e) =>
                jsonConvert.convert<ThreadPageThreadList>(e)
                    as ThreadPageThreadList,
          )
          .toList();
  if (threadList != null) {
    threadPageEntity.threadList = threadList;
  }
  final List<ThreadPageThreadList>? stickThreadList =
      (json['stick_thread_list'] as List<dynamic>?)
          ?.map(
            (e) =>
                jsonConvert.convert<ThreadPageThreadList>(e)
                    as ThreadPageThreadList,
          )
          .toList();
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
  data['thread_list'] = entity.threadList?.map((v) => v.toJson()).toList();
  data['stick_thread_list'] = entity.stickThreadList
      ?.map((v) => v.toJson())
      .toList();
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
    List<ThreadPageThreadList>? stickThreadList,
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
    json['is_mobile_forum'],
  );
  if (isMobileForum != null) {
    threadPageForumInfo.isMobileForum = isMobileForum;
  }
  final String? mobileThreadlistStyle = jsonConvert.convert<String>(
    json['mobile_threadlist_style'],
  );
  if (mobileThreadlistStyle != null) {
    threadPageForumInfo.mobileThreadlistStyle = mobileThreadlistStyle;
  }
  final String? mobileRecommendThreadlistStyle = jsonConvert.convert<String>(
    json['mobile_recommend_threadlist_style'],
  );
  if (mobileRecommendThreadlistStyle != null) {
    threadPageForumInfo.mobileRecommendThreadlistStyle =
        mobileRecommendThreadlistStyle;
  }
  final bool? mobileThreadTheme = jsonConvert.convert<bool>(
    json['mobile_thread_theme'],
  );
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
  final List<TopicTagEntity>? tagsList = (json['tags_list'] as List<dynamic>?)
      ?.map((e) => jsonConvert.convert<TopicTagEntity>(e) as TopicTagEntity)
      .toList();
  if (tagsList != null) {
    threadPageForumInfo.tagsList = tagsList;
  }
  final bool? showChildrenForum = jsonConvert.convert<bool>(
    json['show_children_forum'],
  );
  if (showChildrenForum != null) {
    threadPageForumInfo.showChildrenForum = showChildrenForum;
  }
  final List<ThreadPageForumInfoRecursionForumList>? recursionForumList =
      (json['recursion_forum_list'] as List<dynamic>?)
          ?.map(
            (e) =>
                jsonConvert.convert<ThreadPageForumInfoRecursionForumList>(e)
                    as ThreadPageForumInfoRecursionForumList,
          )
          .toList();
  if (recursionForumList != null) {
    threadPageForumInfo.recursionForumList = recursionForumList;
  }
  final bool? fav = jsonConvert.convert<bool>(json['fav']);
  if (fav != null) {
    threadPageForumInfo.fav = fav;
  }
  final String? seoDescription = jsonConvert.convert<String>(
    json['seo_description'],
  );
  if (seoDescription != null) {
    threadPageForumInfo.seoDescription = seoDescription;
  }
  final String? defaultSortBy = jsonConvert.convert<String>(
    json['default_sort_by'],
  );
  if (defaultSortBy != null) {
    threadPageForumInfo.defaultSortBy = defaultSortBy;
  }
  final ThreadPageForumInfoCircleCategory? circleCategory = jsonConvert
      .convert<ThreadPageForumInfoCircleCategory>(json['circle_category']);
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
  data['recursion_forum_list'] = entity.recursionForumList
      .map((v) => v.toJson())
      .toList();
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
    List<TopicTagEntity>? tagsList,
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
      ..mobileThreadlistStyle =
          mobileThreadlistStyle ?? this.mobileThreadlistStyle
      ..mobileRecommendThreadlistStyle =
          mobileRecommendThreadlistStyle ?? this.mobileRecommendThreadlistStyle
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

ThreadPageForumInfoRecursionForumList
$ThreadPageForumInfoRecursionForumListFromJson(Map<String, dynamic> json) {
  final ThreadPageForumInfoRecursionForumList
  threadPageForumInfoRecursionForumList =
      ThreadPageForumInfoRecursionForumList();
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
    json['pic_list_title'],
  );
  if (picListTitle != null) {
    threadPageForumInfoRecursionForumList.picListTitle = picListTitle;
  }
  final String? seoDescription = jsonConvert.convert<String>(
    json['seo_description'],
  );
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
    json['display_order'],
  );
  if (displayOrder != null) {
    threadPageForumInfoRecursionForumList.displayOrder = displayOrder;
  }
  final String? layoutType = jsonConvert.convert<String>(json['layout_type']);
  if (layoutType != null) {
    threadPageForumInfoRecursionForumList.layoutType = layoutType;
  }
  final String? layoutColumnType = jsonConvert.convert<String>(
    json['layout_column_type'],
  );
  if (layoutColumnType != null) {
    threadPageForumInfoRecursionForumList.layoutColumnType = layoutColumnType;
  }
  final String? status = jsonConvert.convert<String>(json['status']);
  if (status != null) {
    threadPageForumInfoRecursionForumList.status = status;
  }
  final List<dynamic>? children = (json['children'] as List<dynamic>?)
      ?.map((e) => e)
      .toList();
  if (children != null) {
    threadPageForumInfoRecursionForumList.children = children;
  }
  final List<dynamic>? moderatorList =
      (json['moderator_list'] as List<dynamic>?)?.map((e) => e).toList();
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
    json['sec_index_url'],
  );
  if (secIndexUrl != null) {
    threadPageForumInfoRecursionForumList.secIndexUrl = secIndexUrl;
  }
  final String? bnThreadReady = jsonConvert.convert<String>(
    json['bn_thread_ready'],
  );
  if (bnThreadReady != null) {
    threadPageForumInfoRecursionForumList.bnThreadReady = bnThreadReady;
  }
  final String? bnThreadOpen = jsonConvert.convert<String>(
    json['bn_thread_open'],
  );
  if (bnThreadOpen != null) {
    threadPageForumInfoRecursionForumList.bnThreadOpen = bnThreadOpen;
  }
  final String? bnForumEntry = jsonConvert.convert<String>(
    json['bn_forum_entry'],
  );
  if (bnForumEntry != null) {
    threadPageForumInfoRecursionForumList.bnForumEntry = bnForumEntry;
  }
  final String? bnForumRecommend = jsonConvert.convert<String>(
    json['bn_forum_recommend'],
  );
  if (bnForumRecommend != null) {
    threadPageForumInfoRecursionForumList.bnForumRecommend = bnForumRecommend;
  }
  final String? bnKeywordDisplay = jsonConvert.convert<String>(
    json['bn_keyword_display'],
  );
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
    json['guess_you_like'],
  );
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
    json['thread_description'],
  );
  if (threadDescription != null) {
    threadPageForumInfoRecursionForumList.threadDescription = threadDescription;
  }
  final String? verify = jsonConvert.convert<String>(json['verify']);
  if (verify != null) {
    threadPageForumInfoRecursionForumList.verify = verify;
  }
  final String? secPostType = jsonConvert.convert<String>(
    json['sec_post_type'],
  );
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
  ThreadPageForumInfoRecursionForumList entity,
) {
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

extension ThreadPageForumInfoRecursionForumListExtension
    on ThreadPageForumInfoRecursionForumList {
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
  Map<String, dynamic> json,
) {
  final ThreadPageForumInfoCircleCategory threadPageForumInfoCircleCategory =
      ThreadPageForumInfoCircleCategory();
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
  ThreadPageForumInfoCircleCategory entity,
) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['name'] = entity.name;
  return data;
}

extension ThreadPageForumInfoCircleCategoryExtension
    on ThreadPageForumInfoCircleCategory {
  ThreadPageForumInfoCircleCategory copyWith({String? id, String? name}) {
    return ThreadPageForumInfoCircleCategory()
      ..id = id ?? this.id
      ..name = name ?? this.name;
  }
}

ThreadPageThreadList $ThreadPageThreadListFromJson(Map<String, dynamic> json) {
  final ThreadPageThreadList threadPageThreadList = ThreadPageThreadList();
  final AuthorEntity? author = jsonConvert.convert<AuthorEntity>(
    json['author'],
  );
  if (author != null) {
    threadPageThreadList.author = author;
  }
  final String? url = jsonConvert.convert<String>(json['url']);
  if (url != null) {
    threadPageThreadList.url = url;
  }
  final ThreadPageThreadListFirstPost? firstPost = jsonConvert
      .convert<ThreadPageThreadListFirstPost>(json['first_post']);
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
  final TopicTagEntity? topicTag = jsonConvert.convert<TopicTagEntity>(
    json['topic_tag'],
  );
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
    json['hold_attachment'],
  );
  if (holdAttachment != null) {
    threadPageThreadList.holdAttachment = holdAttachment;
  }
  final bool? holdVideo = jsonConvert.convert<bool>(json['hold_video']);
  if (holdVideo != null) {
    threadPageThreadList.holdVideo = holdVideo;
  }
  final bool? attendActivity = jsonConvert.convert<bool>(
    json['attend_activity'],
  );
  if (attendActivity != null) {
    threadPageThreadList.attendActivity = attendActivity;
  }
  final String? lastPostTime = jsonConvert.convert<String>(
    json['last_post_time'],
  );
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
    json['reply_need_verify'],
  );
  if (replyNeedVerify != null) {
    threadPageThreadList.replyNeedVerify = replyNeedVerify;
  }
  final bool? rateNeedVerify = jsonConvert.convert<bool>(
    json['rate_need_verify'],
  );
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
    json['thread_open_original'],
  );
  if (threadOpenOriginal != null) {
    threadPageThreadList.threadOpenOriginal = threadOpenOriginal;
  }
  final BusinessTagEntity? businessTag = jsonConvert.convert<BusinessTagEntity>(
    json['business_tag'],
  );
  if (businessTag != null) {
    threadPageThreadList.businessTag = businessTag;
  }
  final ZanInfoEntity? zanInfo = jsonConvert.convert<ZanInfoEntity>(
    json['zan_info'],
  );
  if (zanInfo != null) {
    threadPageThreadList.zanInfo = zanInfo;
  }
  final String? searchSubject = jsonConvert.convert<String>(
    json['search_subject'],
  );
  if (searchSubject != null) {
    threadPageThreadList.searchSubject = searchSubject;
  }
  final String? searchContent = jsonConvert.convert<String>(
    json['search_content'],
  );
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
    AuthorEntity? author,
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
    TopicTagEntity? topicTag,
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
    BusinessTagEntity? businessTag,
    ZanInfoEntity? zanInfo,
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

ThreadPageThreadListFirstPost $ThreadPageThreadListFirstPostFromJson(
  Map<String, dynamic> json,
) {
  final ThreadPageThreadListFirstPost threadPageThreadListFirstPost =
      ThreadPageThreadListFirstPost();
  final AuthorEntity? author = jsonConvert.convert<AuthorEntity>(
    json['author'],
  );
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
    json['share_bbcode_message'],
  );
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
    json['reply_user_name'],
  );
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
    json['hold_attachment'],
  );
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
  ThreadPageThreadListFirstPost entity,
) {
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

extension ThreadPageThreadListFirstPostExtension
    on ThreadPageThreadListFirstPost {
  ThreadPageThreadListFirstPost copyWith({
    AuthorEntity? author,
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
