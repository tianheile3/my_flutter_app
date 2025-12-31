import 'dart:convert';

import 'package:flutter_study/api/response/common/business_tag_entity.dart';
import 'package:flutter_study/api/response/common/topic_tag_entity.dart';
import 'package:flutter_study/api/response/common/zan_info_entity.dart';
import 'package:flutter_study/generated/json/base/json_field.dart';
import 'package:flutter_study/generated/json/thread_page_entity.g.dart';

import 'common/author_entity.dart';

export 'package:flutter_study/generated/json/thread_page_entity.g.dart';

@JsonSerializable()
class ThreadPageEntity {
  late int code;
  late String message;
  @JSONField(name: 'forum_info')
  late ThreadPageForumInfo forumInfo;
  @JSONField(name: 'thread_list')
  List<ThreadPageThreadList>? threadList;
  @JSONField(name: 'stick_thread_list')
  List<ThreadPageThreadList>? stickThreadList;
  @JSONField(name: 'total_count')
  late int totalCount;
  late int page;
  @JSONField(name: 'per_page')
  late int perPage;

  ThreadPageEntity();

  factory ThreadPageEntity.fromJson(Map<String, dynamic> json) =>
      $ThreadPageEntityFromJson(json);

  Map<String, dynamic> toJson() => $ThreadPageEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class ThreadPageForumInfo {
  late String fid;
  late String category;
  late String fup;
  late String name;
  late String location;
  late String icon;
  late String url;
  @JSONField(name: 'is_mobile_forum')
  late bool isMobileForum;
  @JSONField(name: 'mobile_threadlist_style')
  late String mobileThreadlistStyle;
  @JSONField(name: 'mobile_recommend_threadlist_style')
  late String mobileRecommendThreadlistStyle;
  @JSONField(name: 'mobile_thread_theme')
  late bool mobileThreadTheme;
  late String status;
  late bool password;
  @JSONField(name: 'today_post')
  late String todayPost;
  @JSONField(name: 'total_post')
  late String totalPost;
  @JSONField(name: 'today_thread')
  late String todayThread;
  @JSONField(name: 'total_thread')
  late String totalThread;
  @JSONField(name: 'rss_count')
  late String rssCount;
  @JSONField(name: 'is_pic_show')
  late bool isPicShow;
  late String verify;
  late String description;
  @JSONField(name: 'tags_list')
  late List<TopicTagEntity> tagsList;
  @JSONField(name: 'show_children_forum')
  late bool showChildrenForum;
  @JSONField(name: 'recursion_forum_list')
  late List<ThreadPageForumInfoRecursionForumList> recursionForumList;
  late bool fav;
  @JSONField(name: 'seo_description')
  late String seoDescription;
  @JSONField(name: 'default_sort_by')
  late String defaultSortBy;
  @JSONField(name: 'circle_category')
  late ThreadPageForumInfoCircleCategory circleCategory;

  ThreadPageForumInfo();

  factory ThreadPageForumInfo.fromJson(Map<String, dynamic> json) =>
      $ThreadPageForumInfoFromJson(json);

  Map<String, dynamic> toJson() => $ThreadPageForumInfoToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class ThreadPageForumInfoRecursionForumList {
  late String fid;
  late String category;
  late String fup;
  late String name;
  late String kind;
  @JSONField(name: 'html_title')
  late String htmlTitle;
  @JSONField(name: 'pic_list_title')
  late String picListTitle;
  @JSONField(name: 'seo_description')
  late String seoDescription;
  late String description;
  late String icon;
  late String location;
  @JSONField(name: 'icon_url')
  late String iconUrl;
  late String password;
  late String redirect;
  @JSONField(name: 'display_order')
  late String displayOrder;
  @JSONField(name: 'layout_type')
  late String layoutType;
  @JSONField(name: 'layout_column_type')
  late String layoutColumnType;
  late String status;
  late List<dynamic> children;
  @JSONField(name: 'moderator_list')
  late List<dynamic> moderatorList;
  late String attachment;
  @JSONField(name: 'rule_url')
  late String ruleUrl;
  @JSONField(name: 'tl_sort')
  late String tlSort;
  late String recommend;
  @JSONField(name: 'enable_sec_nav')
  late bool enableSecNav;
  @JSONField(name: 'sec_nav_bg')
  late String secNavBg;
  @JSONField(name: 'sec_show')
  late String secShow;
  @JSONField(name: 'sec_logo')
  late String secLogo;
  @JSONField(name: 'sec_index_url')
  late String secIndexUrl;
  @JSONField(name: 'bn_thread_ready')
  late String bnThreadReady;
  @JSONField(name: 'bn_thread_open')
  late String bnThreadOpen;
  @JSONField(name: 'bn_forum_entry')
  late String bnForumEntry;
  @JSONField(name: 'bn_forum_recommend')
  late String bnForumRecommend;
  @JSONField(name: 'bn_keyword_display')
  late String bnKeywordDisplay;
  @JSONField(name: 'pic_width')
  late String picWidth;
  @JSONField(name: 'pic_high')
  late String picHigh;
  @JSONField(name: 'guess_you_like')
  late String guessYouLike;
  @JSONField(name: 'thread_tip')
  late String threadTip;
  @JSONField(name: 'thread_title')
  late String threadTitle;
  @JSONField(name: 'thread_description')
  late String threadDescription;
  late String verify;
  @JSONField(name: 'sec_post_type')
  late String secPostType;
  @JSONField(name: 'created_at')
  late String createdAt;
  @JSONField(name: 'updated_at')
  late String updatedAt;

  ThreadPageForumInfoRecursionForumList();

  factory ThreadPageForumInfoRecursionForumList.fromJson(
    Map<String, dynamic> json,
  ) => $ThreadPageForumInfoRecursionForumListFromJson(json);

  Map<String, dynamic> toJson() =>
      $ThreadPageForumInfoRecursionForumListToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class ThreadPageForumInfoCircleCategory {
  late String id;
  late String name;

  ThreadPageForumInfoCircleCategory();

  factory ThreadPageForumInfoCircleCategory.fromJson(
    Map<String, dynamic> json,
  ) => $ThreadPageForumInfoCircleCategoryFromJson(json);

  Map<String, dynamic> toJson() =>
      $ThreadPageForumInfoCircleCategoryToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class ThreadPageThreadList {
  late AuthorEntity author;
  late String url;
  @JSONField(name: 'first_post')
  late ThreadPageThreadListFirstPost firstPost;
  @JSONField(name: 'is_private')
  late String isPrivate;
  @JSONField(name: 'city_id')
  late String cityId;
  late String fid;
  late String tid;
  late String pid;
  @JSONField(name: 'author_uid')
  late String authorUid;
  late String category;
  late String subject;
  @JSONField(name: 'thread_type')
  late String threadType;
  @JSONField(name: 'topic_tag')
  late TopicTagEntity topicTag;
  late String hot;
  late String views;
  late String replies;
  late String forwards;
  @JSONField(name: 'hold_attachment')
  late bool holdAttachment;
  @JSONField(name: 'hold_video')
  late bool holdVideo;
  @JSONField(name: 'attend_activity')
  late bool attendActivity;
  @JSONField(name: 'last_post_time')
  late String lastPostTime;
  @JSONField(name: 'stick_level')
  late String stickLevel;
  late String highlight;
  @JSONField(name: 'digest_level')
  late String digestLevel;
  @JSONField(name: 'created_at')
  late String createdAt;
  @JSONField(name: 'updated_at')
  late String updatedAt;
  late String status;
  @JSONField(name: 'board_signed')
  late bool boardSigned;
  @JSONField(name: 'read_perm')
  late String readPerm;
  @JSONField(name: 'city_name')
  late String cityName;
  late String extra;
  @JSONField(name: 'reply_need_verify')
  late bool replyNeedVerify;
  @JSONField(name: 'rate_need_verify')
  late bool rateNeedVerify;
  @JSONField(name: 'thread_pk')
  late bool threadPk;
  @JSONField(name: 'thread_vote')
  late bool threadVote;
  late String source;
  @JSONField(name: 'is_locked')
  late bool isLocked;
  @JSONField(name: 'thread_open_original')
  late bool threadOpenOriginal;
  @JSONField(name: 'business_tag')
  late BusinessTagEntity businessTag;
  @JSONField(name: 'zan_info')
  late ZanInfoEntity zanInfo;
  @JSONField(name: 'search_subject')
  late String searchSubject;
  @JSONField(name: 'search_content')
  late String searchContent;
  @JSONField(name: 'adv_status')
  late String advStatus;

  List<String> images = [];

  ThreadPageThreadList();

  factory ThreadPageThreadList.fromJson(Map<String, dynamic> json) =>
      $ThreadPageThreadListFromJson(json);

  Map<String, dynamic> toJson() => $ThreadPageThreadListToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class ThreadPageThreadListFirstPost {
  late AuthorEntity author;
  late String pid;
  @JSONField(name: 'is_first')
  late bool isFirst;
  @JSONField(name: 'is_water')
  late bool isWater;
  late String subject;
  late String message;
  @JSONField(name: 'share_bbcode_message')
  late String shareBbcodeMessage;
  @JSONField(name: 'parent_pid')
  late String parentPid;
  @JSONField(name: 'reply_pid')
  late String replyPid;
  @JSONField(name: 'reply_uid')
  late String replyUid;
  @JSONField(name: 'reply_user_name')
  late String replyUserName;
  @JSONField(name: 'warn_message')
  late String warnMessage;
  @JSONField(name: 'edit_message')
  late String editMessage;
  late bool htmlon;
  @JSONField(name: 'hold_attachment')
  late bool holdAttachment;
  @JSONField(name: 'hold_refer')
  late bool holdRefer;
  @JSONField(name: 'good_reply')
  late bool goodReply;
  @JSONField(name: 'hold_rate')
  late bool holdRate;
  @JSONField(name: 'rate_pk')
  late bool ratePk;
  late String source;
  @JSONField(name: 'created_at')
  late String createdAt;
  @JSONField(name: 'updated_at')
  late String updatedAt;
  @JSONField(name: 'has_rich_text')
  late bool hasRichText;
  late String status;
  @JSONField(name: 'audit_first')
  late bool auditFirst;

  ThreadPageThreadListFirstPost();

  factory ThreadPageThreadListFirstPost.fromJson(Map<String, dynamic> json) =>
      $ThreadPageThreadListFirstPostFromJson(json);

  Map<String, dynamic> toJson() => $ThreadPageThreadListFirstPostToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}
