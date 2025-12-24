import 'package:flutter_study/generated/json/base/json_convert_content.dart';
import 'package:flutter_study/api/response/publish_thread_entity.dart';

PublishThreadEntity $PublishThreadEntityFromJson(Map<String, dynamic> json) {
  final PublishThreadEntity publishThreadEntity = PublishThreadEntity();
  final PublishThreadThread? thread = jsonConvert.convert<PublishThreadThread>(
      json['thread']);
  if (thread != null) {
    publishThreadEntity.thread = thread;
  }
  final PublishThreadPost? post = jsonConvert.convert<PublishThreadPost>(
      json['post']);
  if (post != null) {
    publishThreadEntity.post = post;
  }
  final bool? canShare = jsonConvert.convert<bool>(json['can_share']);
  if (canShare != null) {
    publishThreadEntity.canShare = canShare;
  }
  final int? code = jsonConvert.convert<int>(json['code']);
  if (code != null) {
    publishThreadEntity.code = code;
  }
  final String? message = jsonConvert.convert<String>(json['message']);
  if (message != null) {
    publishThreadEntity.message = message;
  }
  final bool? auth = jsonConvert.convert<bool>(json['auth']);
  if (auth != null) {
    publishThreadEntity.auth = auth;
  }
  final PublishThreadCoinScore? coinScore = jsonConvert.convert<
      PublishThreadCoinScore>(json['coin_score']);
  if (coinScore != null) {
    publishThreadEntity.coinScore = coinScore;
  }
  final int? error = jsonConvert.convert<int>(json['error']);
  if (error != null) {
    publishThreadEntity.error = error;
  }
  return publishThreadEntity;
}

Map<String, dynamic> $PublishThreadEntityToJson(PublishThreadEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['thread'] = entity.thread.toJson();
  data['post'] = entity.post.toJson();
  data['can_share'] = entity.canShare;
  data['code'] = entity.code;
  data['message'] = entity.message;
  data['auth'] = entity.auth;
  data['coin_score'] = entity.coinScore.toJson();
  data['error'] = entity.error;
  return data;
}

extension PublishThreadEntityExtension on PublishThreadEntity {
  PublishThreadEntity copyWith({
    PublishThreadThread? thread,
    PublishThreadPost? post,
    bool? canShare,
    int? code,
    String? message,
    bool? auth,
    PublishThreadCoinScore? coinScore,
    int? error,
  }) {
    return PublishThreadEntity()
      ..thread = thread ?? this.thread
      ..post = post ?? this.post
      ..canShare = canShare ?? this.canShare
      ..code = code ?? this.code
      ..message = message ?? this.message
      ..auth = auth ?? this.auth
      ..coinScore = coinScore ?? this.coinScore
      ..error = error ?? this.error;
  }
}

PublishThreadThread $PublishThreadThreadFromJson(Map<String, dynamic> json) {
  final PublishThreadThread publishThreadThread = PublishThreadThread();
  final PublishThreadThreadAuthor? author = jsonConvert.convert<
      PublishThreadThreadAuthor>(json['author']);
  if (author != null) {
    publishThreadThread.author = author;
  }
  final PublishThreadThreadTopicTag? topicTag = jsonConvert.convert<
      PublishThreadThreadTopicTag>(json['topic_tag']);
  if (topicTag != null) {
    publishThreadThread.topicTag = topicTag;
  }
  final String? isPrivate = jsonConvert.convert<String>(json['is_private']);
  if (isPrivate != null) {
    publishThreadThread.isPrivate = isPrivate;
  }
  final String? cityId = jsonConvert.convert<String>(json['city_id']);
  if (cityId != null) {
    publishThreadThread.cityId = cityId;
  }
  final String? fid = jsonConvert.convert<String>(json['fid']);
  if (fid != null) {
    publishThreadThread.fid = fid;
  }
  final String? tid = jsonConvert.convert<String>(json['tid']);
  if (tid != null) {
    publishThreadThread.tid = tid;
  }
  final String? pid = jsonConvert.convert<String>(json['pid']);
  if (pid != null) {
    publishThreadThread.pid = pid;
  }
  final String? authorUid = jsonConvert.convert<String>(json['author_uid']);
  if (authorUid != null) {
    publishThreadThread.authorUid = authorUid;
  }
  final String? category = jsonConvert.convert<String>(json['category']);
  if (category != null) {
    publishThreadThread.category = category;
  }
  final String? subject = jsonConvert.convert<String>(json['subject']);
  if (subject != null) {
    publishThreadThread.subject = subject;
  }
  final String? threadType = jsonConvert.convert<String>(json['thread_type']);
  if (threadType != null) {
    publishThreadThread.threadType = threadType;
  }
  final String? hot = jsonConvert.convert<String>(json['hot']);
  if (hot != null) {
    publishThreadThread.hot = hot;
  }
  final String? views = jsonConvert.convert<String>(json['views']);
  if (views != null) {
    publishThreadThread.views = views;
  }
  final String? replies = jsonConvert.convert<String>(json['replies']);
  if (replies != null) {
    publishThreadThread.replies = replies;
  }
  final String? forwards = jsonConvert.convert<String>(json['forwards']);
  if (forwards != null) {
    publishThreadThread.forwards = forwards;
  }
  final bool? holdAttachment = jsonConvert.convert<bool>(
      json['hold_attachment']);
  if (holdAttachment != null) {
    publishThreadThread.holdAttachment = holdAttachment;
  }
  final bool? holdVideo = jsonConvert.convert<bool>(json['hold_video']);
  if (holdVideo != null) {
    publishThreadThread.holdVideo = holdVideo;
  }
  final bool? attendActivity = jsonConvert.convert<bool>(
      json['attend_activity']);
  if (attendActivity != null) {
    publishThreadThread.attendActivity = attendActivity;
  }
  final PublishThreadThreadFirstPost? firstPost = jsonConvert.convert<
      PublishThreadThreadFirstPost>(json['first_post']);
  if (firstPost != null) {
    publishThreadThread.firstPost = firstPost;
  }
  final PublishThreadThreadLastPost? lastPost = jsonConvert.convert<
      PublishThreadThreadLastPost>(json['last_post']);
  if (lastPost != null) {
    publishThreadThread.lastPost = lastPost;
  }
  final String? lastPostTime = jsonConvert.convert<String>(
      json['last_post_time']);
  if (lastPostTime != null) {
    publishThreadThread.lastPostTime = lastPostTime;
  }
  final String? stickLevel = jsonConvert.convert<String>(json['stick_level']);
  if (stickLevel != null) {
    publishThreadThread.stickLevel = stickLevel;
  }
  final String? highlight = jsonConvert.convert<String>(json['highlight']);
  if (highlight != null) {
    publishThreadThread.highlight = highlight;
  }
  final String? digestLevel = jsonConvert.convert<String>(json['digest_level']);
  if (digestLevel != null) {
    publishThreadThread.digestLevel = digestLevel;
  }
  final String? createdAt = jsonConvert.convert<String>(json['created_at']);
  if (createdAt != null) {
    publishThreadThread.createdAt = createdAt;
  }
  final String? url = jsonConvert.convert<String>(json['url']);
  if (url != null) {
    publishThreadThread.url = url;
  }
  final String? status = jsonConvert.convert<String>(json['status']);
  if (status != null) {
    publishThreadThread.status = status;
  }
  final bool? boardSigned = jsonConvert.convert<bool>(json['board_signed']);
  if (boardSigned != null) {
    publishThreadThread.boardSigned = boardSigned;
  }
  final String? readPerm = jsonConvert.convert<String>(json['read_perm']);
  if (readPerm != null) {
    publishThreadThread.readPerm = readPerm;
  }
  final String? cityName = jsonConvert.convert<String>(json['city_name']);
  if (cityName != null) {
    publishThreadThread.cityName = cityName;
  }
  final String? extra = jsonConvert.convert<String>(json['extra']);
  if (extra != null) {
    publishThreadThread.extra = extra;
  }
  final bool? replyNeedVerify = jsonConvert.convert<bool>(
      json['reply_need_verify']);
  if (replyNeedVerify != null) {
    publishThreadThread.replyNeedVerify = replyNeedVerify;
  }
  final bool? rateNeedVerify = jsonConvert.convert<bool>(
      json['rate_need_verify']);
  if (rateNeedVerify != null) {
    publishThreadThread.rateNeedVerify = rateNeedVerify;
  }
  final bool? threadPk = jsonConvert.convert<bool>(json['thread_pk']);
  if (threadPk != null) {
    publishThreadThread.threadPk = threadPk;
  }
  final bool? threadVote = jsonConvert.convert<bool>(json['thread_vote']);
  if (threadVote != null) {
    publishThreadThread.threadVote = threadVote;
  }
  final String? source = jsonConvert.convert<String>(json['source']);
  if (source != null) {
    publishThreadThread.source = source;
  }
  final bool? isLocked = jsonConvert.convert<bool>(json['is_locked']);
  if (isLocked != null) {
    publishThreadThread.isLocked = isLocked;
  }
  final bool? threadOpenOriginal = jsonConvert.convert<bool>(
      json['thread_open_original']);
  if (threadOpenOriginal != null) {
    publishThreadThread.threadOpenOriginal = threadOpenOriginal;
  }
  final String? searchSubject = jsonConvert.convert<String>(
      json['search_subject']);
  if (searchSubject != null) {
    publishThreadThread.searchSubject = searchSubject;
  }
  final String? searchContent = jsonConvert.convert<String>(
      json['search_content']);
  if (searchContent != null) {
    publishThreadThread.searchContent = searchContent;
  }
  final String? advStatus = jsonConvert.convert<String>(json['adv_status']);
  if (advStatus != null) {
    publishThreadThread.advStatus = advStatus;
  }
  final bool? openCaptcha = jsonConvert.convert<bool>(json['open_captcha']);
  if (openCaptcha != null) {
    publishThreadThread.openCaptcha = openCaptcha;
  }
  final String? favorites = jsonConvert.convert<String>(json['favorites']);
  if (favorites != null) {
    publishThreadThread.favorites = favorites;
  }
  final String? coins = jsonConvert.convert<String>(json['coins']);
  if (coins != null) {
    publishThreadThread.coins = coins;
  }
  final List<dynamic>? tags = (json['tags'] as List<dynamic>?)?.map(
          (e) => e).toList();
  if (tags != null) {
    publishThreadThread.tags = tags;
  }
  return publishThreadThread;
}

Map<String, dynamic> $PublishThreadThreadToJson(PublishThreadThread entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['author'] = entity.author.toJson();
  data['topic_tag'] = entity.topicTag.toJson();
  data['is_private'] = entity.isPrivate;
  data['city_id'] = entity.cityId;
  data['fid'] = entity.fid;
  data['tid'] = entity.tid;
  data['pid'] = entity.pid;
  data['author_uid'] = entity.authorUid;
  data['category'] = entity.category;
  data['subject'] = entity.subject;
  data['thread_type'] = entity.threadType;
  data['hot'] = entity.hot;
  data['views'] = entity.views;
  data['replies'] = entity.replies;
  data['forwards'] = entity.forwards;
  data['hold_attachment'] = entity.holdAttachment;
  data['hold_video'] = entity.holdVideo;
  data['attend_activity'] = entity.attendActivity;
  data['first_post'] = entity.firstPost.toJson();
  data['last_post'] = entity.lastPost.toJson();
  data['last_post_time'] = entity.lastPostTime;
  data['stick_level'] = entity.stickLevel;
  data['highlight'] = entity.highlight;
  data['digest_level'] = entity.digestLevel;
  data['created_at'] = entity.createdAt;
  data['url'] = entity.url;
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
  data['search_subject'] = entity.searchSubject;
  data['search_content'] = entity.searchContent;
  data['adv_status'] = entity.advStatus;
  data['open_captcha'] = entity.openCaptcha;
  data['favorites'] = entity.favorites;
  data['coins'] = entity.coins;
  data['tags'] = entity.tags;
  return data;
}

extension PublishThreadThreadExtension on PublishThreadThread {
  PublishThreadThread copyWith({
    PublishThreadThreadAuthor? author,
    PublishThreadThreadTopicTag? topicTag,
    String? isPrivate,
    String? cityId,
    String? fid,
    String? tid,
    String? pid,
    String? authorUid,
    String? category,
    String? subject,
    String? threadType,
    String? hot,
    String? views,
    String? replies,
    String? forwards,
    bool? holdAttachment,
    bool? holdVideo,
    bool? attendActivity,
    PublishThreadThreadFirstPost? firstPost,
    PublishThreadThreadLastPost? lastPost,
    String? lastPostTime,
    String? stickLevel,
    String? highlight,
    String? digestLevel,
    String? createdAt,
    String? url,
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
    String? searchSubject,
    String? searchContent,
    String? advStatus,
    bool? openCaptcha,
    String? favorites,
    String? coins,
    List<dynamic>? tags,
  }) {
    return PublishThreadThread()
      ..author = author ?? this.author
      ..topicTag = topicTag ?? this.topicTag
      ..isPrivate = isPrivate ?? this.isPrivate
      ..cityId = cityId ?? this.cityId
      ..fid = fid ?? this.fid
      ..tid = tid ?? this.tid
      ..pid = pid ?? this.pid
      ..authorUid = authorUid ?? this.authorUid
      ..category = category ?? this.category
      ..subject = subject ?? this.subject
      ..threadType = threadType ?? this.threadType
      ..hot = hot ?? this.hot
      ..views = views ?? this.views
      ..replies = replies ?? this.replies
      ..forwards = forwards ?? this.forwards
      ..holdAttachment = holdAttachment ?? this.holdAttachment
      ..holdVideo = holdVideo ?? this.holdVideo
      ..attendActivity = attendActivity ?? this.attendActivity
      ..firstPost = firstPost ?? this.firstPost
      ..lastPost = lastPost ?? this.lastPost
      ..lastPostTime = lastPostTime ?? this.lastPostTime
      ..stickLevel = stickLevel ?? this.stickLevel
      ..highlight = highlight ?? this.highlight
      ..digestLevel = digestLevel ?? this.digestLevel
      ..createdAt = createdAt ?? this.createdAt
      ..url = url ?? this.url
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
      ..searchSubject = searchSubject ?? this.searchSubject
      ..searchContent = searchContent ?? this.searchContent
      ..advStatus = advStatus ?? this.advStatus
      ..openCaptcha = openCaptcha ?? this.openCaptcha
      ..favorites = favorites ?? this.favorites
      ..coins = coins ?? this.coins
      ..tags = tags ?? this.tags;
  }
}

PublishThreadThreadAuthor $PublishThreadThreadAuthorFromJson(
    Map<String, dynamic> json) {
  final PublishThreadThreadAuthor publishThreadThreadAuthor = PublishThreadThreadAuthor();
  final String? uid = jsonConvert.convert<String>(json['uid']);
  if (uid != null) {
    publishThreadThreadAuthor.uid = uid;
  }
  final String? userName = jsonConvert.convert<String>(json['user_name']);
  if (userName != null) {
    publishThreadThreadAuthor.userName = userName;
  }
  final String? searchUserName = jsonConvert.convert<String>(
      json['search_user_name']);
  if (searchUserName != null) {
    publishThreadThreadAuthor.searchUserName = searchUserName;
  }
  final String? oldUserName = jsonConvert.convert<String>(
      json['old_user_name']);
  if (oldUserName != null) {
    publishThreadThreadAuthor.oldUserName = oldUserName;
  }
  final PublishThreadThreadAuthorGroup? group = jsonConvert.convert<
      PublishThreadThreadAuthorGroup>(json['group']);
  if (group != null) {
    publishThreadThreadAuthor.group = group;
  }
  final String? avatar = jsonConvert.convert<String>(json['avatar']);
  if (avatar != null) {
    publishThreadThreadAuthor.avatar = avatar;
  }
  final String? verifyNew = jsonConvert.convert<String>(json['verify_new']);
  if (verifyNew != null) {
    publishThreadThreadAuthor.verifyNew = verifyNew;
  }
  final String? verifyDesc = jsonConvert.convert<String>(json['verify_desc']);
  if (verifyDesc != null) {
    publishThreadThreadAuthor.verifyDesc = verifyDesc;
  }
  final String? originalAvatar = jsonConvert.convert<String>(
      json['original_avatar']);
  if (originalAvatar != null) {
    publishThreadThreadAuthor.originalAvatar = originalAvatar;
  }
  final String? smallAvatar = jsonConvert.convert<String>(json['small_avatar']);
  if (smallAvatar != null) {
    publishThreadThreadAuthor.smallAvatar = smallAvatar;
  }
  final String? gender = jsonConvert.convert<String>(json['gender']);
  if (gender != null) {
    publishThreadThreadAuthor.gender = gender;
  }
  final String? genderPrivate = jsonConvert.convert<String>(
      json['gender_private']);
  if (genderPrivate != null) {
    publishThreadThreadAuthor.genderPrivate = genderPrivate;
  }
  final String? lifeStage = jsonConvert.convert<String>(json['life_stage']);
  if (lifeStage != null) {
    publishThreadThreadAuthor.lifeStage = lifeStage;
  }
  final String? sign = jsonConvert.convert<String>(json['sign']);
  if (sign != null) {
    publishThreadThreadAuthor.sign = sign;
  }
  final String? address = jsonConvert.convert<String>(json['address']);
  if (address != null) {
    publishThreadThreadAuthor.address = address;
  }
  final String? birthday = jsonConvert.convert<String>(json['birthday']);
  if (birthday != null) {
    publishThreadThreadAuthor.birthday = birthday;
  }
  final String? threads = jsonConvert.convert<String>(json['threads']);
  if (threads != null) {
    publishThreadThreadAuthor.threads = threads;
  }
  final String? posts = jsonConvert.convert<String>(json['posts']);
  if (posts != null) {
    publishThreadThreadAuthor.posts = posts;
  }
  final String? attendCount = jsonConvert.convert<String>(json['attend_count']);
  if (attendCount != null) {
    publishThreadThreadAuthor.attendCount = attendCount;
  }
  final String? fansCount = jsonConvert.convert<String>(json['fans_count']);
  if (fansCount != null) {
    publishThreadThreadAuthor.fansCount = fansCount;
  }
  final String? rateNum = jsonConvert.convert<String>(json['rate_num']);
  if (rateNum != null) {
    publishThreadThreadAuthor.rateNum = rateNum;
  }
  final String? mobile = jsonConvert.convert<String>(json['mobile']);
  if (mobile != null) {
    publishThreadThreadAuthor.mobile = mobile;
  }
  final String? color = jsonConvert.convert<String>(json['color']);
  if (color != null) {
    publishThreadThreadAuthor.color = color;
  }
  final List<PublishThreadThreadAuthorMedals>? medals = (json['medals'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<PublishThreadThreadAuthorMedals>(
          e) as PublishThreadThreadAuthorMedals).toList();
  if (medals != null) {
    publishThreadThreadAuthor.medals = medals;
  }
  final String? prestige = jsonConvert.convert<String>(json['prestige']);
  if (prestige != null) {
    publishThreadThreadAuthor.prestige = prestige;
  }
  final String? regTime = jsonConvert.convert<String>(json['reg_time']);
  if (regTime != null) {
    publishThreadThreadAuthor.regTime = regTime;
  }
  final String? location = jsonConvert.convert<String>(json['location']);
  if (location != null) {
    publishThreadThreadAuthor.location = location;
  }
  final String? verify = jsonConvert.convert<String>(json['verify']);
  if (verify != null) {
    publishThreadThreadAuthor.verify = verify;
  }
  final String? highVerify = jsonConvert.convert<String>(json['high_verify']);
  if (highVerify != null) {
    publishThreadThreadAuthor.highVerify = highVerify;
  }
  final String? highDesc = jsonConvert.convert<String>(json['high_desc']);
  if (highDesc != null) {
    publishThreadThreadAuthor.highDesc = highDesc;
  }
  final String? honourVerify = jsonConvert.convert<String>(
      json['honour_verify']);
  if (honourVerify != null) {
    publishThreadThreadAuthor.honourVerify = honourVerify;
  }
  final String? honourDesc = jsonConvert.convert<String>(json['honour_desc']);
  if (honourDesc != null) {
    publishThreadThreadAuthor.honourDesc = honourDesc;
  }
  final String? realVerify = jsonConvert.convert<String>(json['real_verify']);
  if (realVerify != null) {
    publishThreadThreadAuthor.realVerify = realVerify;
  }
  final String? atNum = jsonConvert.convert<String>(json['at_num']);
  if (atNum != null) {
    publishThreadThreadAuthor.atNum = atNum;
  }
  final bool? active = jsonConvert.convert<bool>(json['active']);
  if (active != null) {
    publishThreadThreadAuthor.active = active;
  }
  final bool? qqBind = jsonConvert.convert<bool>(json['qq_bind']);
  if (qqBind != null) {
    publishThreadThreadAuthor.qqBind = qqBind;
  }
  final bool? qihooBind = jsonConvert.convert<bool>(json['qihoo_bind']);
  if (qihooBind != null) {
    publishThreadThreadAuthor.qihooBind = qihooBind;
  }
  final bool? mobileBind = jsonConvert.convert<bool>(json['mobile_bind']);
  if (mobileBind != null) {
    publishThreadThreadAuthor.mobileBind = mobileBind;
  }
  final bool? emailBind = jsonConvert.convert<bool>(json['email_bind']);
  if (emailBind != null) {
    publishThreadThreadAuthor.emailBind = emailBind;
  }
  final bool? sinaBind = jsonConvert.convert<bool>(json['sina_bind']);
  if (sinaBind != null) {
    publishThreadThreadAuthor.sinaBind = sinaBind;
  }
  final bool? weixinBind = jsonConvert.convert<bool>(json['weixin_bind']);
  if (weixinBind != null) {
    publishThreadThreadAuthor.weixinBind = weixinBind;
  }
  final bool? isTenYear = jsonConvert.convert<bool>(json['is_ten_year']);
  if (isTenYear != null) {
    publishThreadThreadAuthor.isTenYear = isTenYear;
  }
  final bool? shiJiaShangJia = jsonConvert.convert<bool>(
      json['shi_jia_shang_jia']);
  if (shiJiaShangJia != null) {
    publishThreadThreadAuthor.shiJiaShangJia = shiJiaShangJia;
  }
  final String? shiJiaShangJiaDesc = jsonConvert.convert<String>(
      json['shi_jia_shang_jia_desc']);
  if (shiJiaShangJiaDesc != null) {
    publishThreadThreadAuthor.shiJiaShangJiaDesc = shiJiaShangJiaDesc;
  }
  final bool? isSecurity = jsonConvert.convert<bool>(json['is_security']);
  if (isSecurity != null) {
    publishThreadThreadAuthor.isSecurity = isSecurity;
  }
  final bool? isAbnormal = jsonConvert.convert<bool>(json['is_abnormal']);
  if (isAbnormal != null) {
    publishThreadThreadAuthor.isAbnormal = isAbnormal;
  }
  final bool? appUser = jsonConvert.convert<bool>(json['app_user']);
  if (appUser != null) {
    publishThreadThreadAuthor.appUser = appUser;
  }
  final String? infoProgress = jsonConvert.convert<String>(
      json['info_progress']);
  if (infoProgress != null) {
    publishThreadThreadAuthor.infoProgress = infoProgress;
  }
  final String? userType = jsonConvert.convert<String>(json['user_type']);
  if (userType != null) {
    publishThreadThreadAuthor.userType = userType;
  }
  return publishThreadThreadAuthor;
}

Map<String, dynamic> $PublishThreadThreadAuthorToJson(
    PublishThreadThreadAuthor entity) {
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
  data['gender'] = entity.gender;
  data['gender_private'] = entity.genderPrivate;
  data['life_stage'] = entity.lifeStage;
  data['sign'] = entity.sign;
  data['address'] = entity.address;
  data['birthday'] = entity.birthday;
  data['threads'] = entity.threads;
  data['posts'] = entity.posts;
  data['attend_count'] = entity.attendCount;
  data['fans_count'] = entity.fansCount;
  data['rate_num'] = entity.rateNum;
  data['mobile'] = entity.mobile;
  data['color'] = entity.color;
  data['medals'] = entity.medals.map((v) => v.toJson()).toList();
  data['prestige'] = entity.prestige;
  data['reg_time'] = entity.regTime;
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

extension PublishThreadThreadAuthorExtension on PublishThreadThreadAuthor {
  PublishThreadThreadAuthor copyWith({
    String? uid,
    String? userName,
    String? searchUserName,
    String? oldUserName,
    PublishThreadThreadAuthorGroup? group,
    String? avatar,
    String? verifyNew,
    String? verifyDesc,
    String? originalAvatar,
    String? smallAvatar,
    String? gender,
    String? genderPrivate,
    String? lifeStage,
    String? sign,
    String? address,
    String? birthday,
    String? threads,
    String? posts,
    String? attendCount,
    String? fansCount,
    String? rateNum,
    String? mobile,
    String? color,
    List<PublishThreadThreadAuthorMedals>? medals,
    String? prestige,
    String? regTime,
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
    return PublishThreadThreadAuthor()
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
      ..gender = gender ?? this.gender
      ..genderPrivate = genderPrivate ?? this.genderPrivate
      ..lifeStage = lifeStage ?? this.lifeStage
      ..sign = sign ?? this.sign
      ..address = address ?? this.address
      ..birthday = birthday ?? this.birthday
      ..threads = threads ?? this.threads
      ..posts = posts ?? this.posts
      ..attendCount = attendCount ?? this.attendCount
      ..fansCount = fansCount ?? this.fansCount
      ..rateNum = rateNum ?? this.rateNum
      ..mobile = mobile ?? this.mobile
      ..color = color ?? this.color
      ..medals = medals ?? this.medals
      ..prestige = prestige ?? this.prestige
      ..regTime = regTime ?? this.regTime
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

PublishThreadThreadAuthorGroup $PublishThreadThreadAuthorGroupFromJson(
    Map<String, dynamic> json) {
  final PublishThreadThreadAuthorGroup publishThreadThreadAuthorGroup = PublishThreadThreadAuthorGroup();
  final String? gid = jsonConvert.convert<String>(json['gid']);
  if (gid != null) {
    publishThreadThreadAuthorGroup.gid = gid;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    publishThreadThreadAuthorGroup.name = name;
  }
  final String? category = jsonConvert.convert<String>(json['category']);
  if (category != null) {
    publishThreadThreadAuthorGroup.category = category;
  }
  final String? rank = jsonConvert.convert<String>(json['rank']);
  if (rank != null) {
    publishThreadThreadAuthorGroup.rank = rank;
  }
  final String? picture = jsonConvert.convert<String>(json['picture']);
  if (picture != null) {
    publishThreadThreadAuthorGroup.picture = picture;
  }
  return publishThreadThreadAuthorGroup;
}

Map<String, dynamic> $PublishThreadThreadAuthorGroupToJson(
    PublishThreadThreadAuthorGroup entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['gid'] = entity.gid;
  data['name'] = entity.name;
  data['category'] = entity.category;
  data['rank'] = entity.rank;
  data['picture'] = entity.picture;
  return data;
}

extension PublishThreadThreadAuthorGroupExtension on PublishThreadThreadAuthorGroup {
  PublishThreadThreadAuthorGroup copyWith({
    String? gid,
    String? name,
    String? category,
    String? rank,
    String? picture,
  }) {
    return PublishThreadThreadAuthorGroup()
      ..gid = gid ?? this.gid
      ..name = name ?? this.name
      ..category = category ?? this.category
      ..rank = rank ?? this.rank
      ..picture = picture ?? this.picture;
  }
}

PublishThreadThreadAuthorMedals $PublishThreadThreadAuthorMedalsFromJson(
    Map<String, dynamic> json) {
  final PublishThreadThreadAuthorMedals publishThreadThreadAuthorMedals = PublishThreadThreadAuthorMedals();
  final String? id = jsonConvert.convert<String>(json['id']);
  if (id != null) {
    publishThreadThreadAuthorMedals.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    publishThreadThreadAuthorMedals.name = name;
  }
  final String? requireValue = jsonConvert.convert<String>(
      json['require_value']);
  if (requireValue != null) {
    publishThreadThreadAuthorMedals.requireValue = requireValue;
  }
  final String? requireDays = jsonConvert.convert<String>(json['require_days']);
  if (requireDays != null) {
    publishThreadThreadAuthorMedals.requireDays = requireDays;
  }
  final String? iconUrl = jsonConvert.convert<String>(json['icon_url']);
  if (iconUrl != null) {
    publishThreadThreadAuthorMedals.iconUrl = iconUrl;
  }
  final String? colorIconUrl = jsonConvert.convert<String>(
      json['color_icon_url']);
  if (colorIconUrl != null) {
    publishThreadThreadAuthorMedals.colorIconUrl = colorIconUrl;
  }
  final String? tuwenIconUrl = jsonConvert.convert<String>(
      json['tuwen_icon_url']);
  if (tuwenIconUrl != null) {
    publishThreadThreadAuthorMedals.tuwenIconUrl = tuwenIconUrl;
  }
  final String? description = jsonConvert.convert<String>(json['description']);
  if (description != null) {
    publishThreadThreadAuthorMedals.description = description;
  }
  final String? cityId = jsonConvert.convert<String>(json['city_id']);
  if (cityId != null) {
    publishThreadThreadAuthorMedals.cityId = cityId;
  }
  final String? groupId = jsonConvert.convert<String>(json['group_id']);
  if (groupId != null) {
    publishThreadThreadAuthorMedals.groupId = groupId;
  }
  final String? sortId = jsonConvert.convert<String>(json['sort_id']);
  if (sortId != null) {
    publishThreadThreadAuthorMedals.sortId = sortId;
  }
  final bool? awarded = jsonConvert.convert<bool>(json['awarded']);
  if (awarded != null) {
    publishThreadThreadAuthorMedals.awarded = awarded;
  }
  final bool? isNew = jsonConvert.convert<bool>(json['is_new']);
  if (isNew != null) {
    publishThreadThreadAuthorMedals.isNew = isNew;
  }
  final bool? online = jsonConvert.convert<bool>(json['online']);
  if (online != null) {
    publishThreadThreadAuthorMedals.online = online;
  }
  final String? groupName = jsonConvert.convert<String>(json['group_name']);
  if (groupName != null) {
    publishThreadThreadAuthorMedals.groupName = groupName;
  }
  final bool? wearing = jsonConvert.convert<bool>(json['wearing']);
  if (wearing != null) {
    publishThreadThreadAuthorMedals.wearing = wearing;
  }
  final bool? growing = jsonConvert.convert<bool>(json['growing']);
  if (growing != null) {
    publishThreadThreadAuthorMedals.growing = growing;
  }
  final String? createdAt = jsonConvert.convert<String>(json['created_at']);
  if (createdAt != null) {
    publishThreadThreadAuthorMedals.createdAt = createdAt;
  }
  final String? updatedAt = jsonConvert.convert<String>(json['updated_at']);
  if (updatedAt != null) {
    publishThreadThreadAuthorMedals.updatedAt = updatedAt;
  }
  final String? actionId = jsonConvert.convert<String>(json['action_id']);
  if (actionId != null) {
    publishThreadThreadAuthorMedals.actionId = actionId;
  }
  final String? statisticsType = jsonConvert.convert<String>(
      json['statistics_type']);
  if (statisticsType != null) {
    publishThreadThreadAuthorMedals.statisticsType = statisticsType;
  }
  final String? buttonName = jsonConvert.convert<String>(json['button_name']);
  if (buttonName != null) {
    publishThreadThreadAuthorMedals.buttonName = buttonName;
  }
  final bool? buttonDisplay = jsonConvert.convert<bool>(json['button_display']);
  if (buttonDisplay != null) {
    publishThreadThreadAuthorMedals.buttonDisplay = buttonDisplay;
  }
  final String? linkUrl = jsonConvert.convert<String>(json['link_url']);
  if (linkUrl != null) {
    publishThreadThreadAuthorMedals.linkUrl = linkUrl;
  }
  final String? value = jsonConvert.convert<String>(json['value']);
  if (value != null) {
    publishThreadThreadAuthorMedals.value = value;
  }
  final String? sourceId = jsonConvert.convert<String>(json['source_id']);
  if (sourceId != null) {
    publishThreadThreadAuthorMedals.sourceId = sourceId;
  }
  final String? fid = jsonConvert.convert<String>(json['fid']);
  if (fid != null) {
    publishThreadThreadAuthorMedals.fid = fid;
  }
  final String? groupStatus = jsonConvert.convert<String>(json['group_status']);
  if (groupStatus != null) {
    publishThreadThreadAuthorMedals.groupStatus = groupStatus;
  }
  final bool? autoWearing = jsonConvert.convert<bool>(json['auto_wearing']);
  if (autoWearing != null) {
    publishThreadThreadAuthorMedals.autoWearing = autoWearing;
  }
  final bool? linkDisplay = jsonConvert.convert<bool>(json['link_display']);
  if (linkDisplay != null) {
    publishThreadThreadAuthorMedals.linkDisplay = linkDisplay;
  }
  return publishThreadThreadAuthorMedals;
}

Map<String, dynamic> $PublishThreadThreadAuthorMedalsToJson(
    PublishThreadThreadAuthorMedals entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['name'] = entity.name;
  data['require_value'] = entity.requireValue;
  data['require_days'] = entity.requireDays;
  data['icon_url'] = entity.iconUrl;
  data['color_icon_url'] = entity.colorIconUrl;
  data['tuwen_icon_url'] = entity.tuwenIconUrl;
  data['description'] = entity.description;
  data['city_id'] = entity.cityId;
  data['group_id'] = entity.groupId;
  data['sort_id'] = entity.sortId;
  data['awarded'] = entity.awarded;
  data['is_new'] = entity.isNew;
  data['online'] = entity.online;
  data['group_name'] = entity.groupName;
  data['wearing'] = entity.wearing;
  data['growing'] = entity.growing;
  data['created_at'] = entity.createdAt;
  data['updated_at'] = entity.updatedAt;
  data['action_id'] = entity.actionId;
  data['statistics_type'] = entity.statisticsType;
  data['button_name'] = entity.buttonName;
  data['button_display'] = entity.buttonDisplay;
  data['link_url'] = entity.linkUrl;
  data['value'] = entity.value;
  data['source_id'] = entity.sourceId;
  data['fid'] = entity.fid;
  data['group_status'] = entity.groupStatus;
  data['auto_wearing'] = entity.autoWearing;
  data['link_display'] = entity.linkDisplay;
  return data;
}

extension PublishThreadThreadAuthorMedalsExtension on PublishThreadThreadAuthorMedals {
  PublishThreadThreadAuthorMedals copyWith({
    String? id,
    String? name,
    String? requireValue,
    String? requireDays,
    String? iconUrl,
    String? colorIconUrl,
    String? tuwenIconUrl,
    String? description,
    String? cityId,
    String? groupId,
    String? sortId,
    bool? awarded,
    bool? isNew,
    bool? online,
    String? groupName,
    bool? wearing,
    bool? growing,
    String? createdAt,
    String? updatedAt,
    String? actionId,
    String? statisticsType,
    String? buttonName,
    bool? buttonDisplay,
    String? linkUrl,
    String? value,
    String? sourceId,
    String? fid,
    String? groupStatus,
    bool? autoWearing,
    bool? linkDisplay,
  }) {
    return PublishThreadThreadAuthorMedals()
      ..id = id ?? this.id
      ..name = name ?? this.name
      ..requireValue = requireValue ?? this.requireValue
      ..requireDays = requireDays ?? this.requireDays
      ..iconUrl = iconUrl ?? this.iconUrl
      ..colorIconUrl = colorIconUrl ?? this.colorIconUrl
      ..tuwenIconUrl = tuwenIconUrl ?? this.tuwenIconUrl
      ..description = description ?? this.description
      ..cityId = cityId ?? this.cityId
      ..groupId = groupId ?? this.groupId
      ..sortId = sortId ?? this.sortId
      ..awarded = awarded ?? this.awarded
      ..isNew = isNew ?? this.isNew
      ..online = online ?? this.online
      ..groupName = groupName ?? this.groupName
      ..wearing = wearing ?? this.wearing
      ..growing = growing ?? this.growing
      ..createdAt = createdAt ?? this.createdAt
      ..updatedAt = updatedAt ?? this.updatedAt
      ..actionId = actionId ?? this.actionId
      ..statisticsType = statisticsType ?? this.statisticsType
      ..buttonName = buttonName ?? this.buttonName
      ..buttonDisplay = buttonDisplay ?? this.buttonDisplay
      ..linkUrl = linkUrl ?? this.linkUrl
      ..value = value ?? this.value
      ..sourceId = sourceId ?? this.sourceId
      ..fid = fid ?? this.fid
      ..groupStatus = groupStatus ?? this.groupStatus
      ..autoWearing = autoWearing ?? this.autoWearing
      ..linkDisplay = linkDisplay ?? this.linkDisplay;
  }
}

PublishThreadThreadTopicTag $PublishThreadThreadTopicTagFromJson(
    Map<String, dynamic> json) {
  final PublishThreadThreadTopicTag publishThreadThreadTopicTag = PublishThreadThreadTopicTag();
  final String? id = jsonConvert.convert<String>(json['id']);
  if (id != null) {
    publishThreadThreadTopicTag.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    publishThreadThreadTopicTag.name = name;
  }
  final String? logoImgUrl = jsonConvert.convert<String>(json['logo_img_url']);
  if (logoImgUrl != null) {
    publishThreadThreadTopicTag.logoImgUrl = logoImgUrl;
  }
  final String? canBusiness = jsonConvert.convert<String>(json['can_business']);
  if (canBusiness != null) {
    publishThreadThreadTopicTag.canBusiness = canBusiness;
  }
  return publishThreadThreadTopicTag;
}

Map<String, dynamic> $PublishThreadThreadTopicTagToJson(
    PublishThreadThreadTopicTag entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['name'] = entity.name;
  data['logo_img_url'] = entity.logoImgUrl;
  data['can_business'] = entity.canBusiness;
  return data;
}

extension PublishThreadThreadTopicTagExtension on PublishThreadThreadTopicTag {
  PublishThreadThreadTopicTag copyWith({
    String? id,
    String? name,
    String? logoImgUrl,
    String? canBusiness,
  }) {
    return PublishThreadThreadTopicTag()
      ..id = id ?? this.id
      ..name = name ?? this.name
      ..logoImgUrl = logoImgUrl ?? this.logoImgUrl
      ..canBusiness = canBusiness ?? this.canBusiness;
  }
}

PublishThreadThreadFirstPost $PublishThreadThreadFirstPostFromJson(
    Map<String, dynamic> json) {
  final PublishThreadThreadFirstPost publishThreadThreadFirstPost = PublishThreadThreadFirstPost();
  final String? pid = jsonConvert.convert<String>(json['pid']);
  if (pid != null) {
    publishThreadThreadFirstPost.pid = pid;
  }
  final bool? isFirst = jsonConvert.convert<bool>(json['is_first']);
  if (isFirst != null) {
    publishThreadThreadFirstPost.isFirst = isFirst;
  }
  final bool? isWater = jsonConvert.convert<bool>(json['is_water']);
  if (isWater != null) {
    publishThreadThreadFirstPost.isWater = isWater;
  }
  final PublishThreadThreadFirstPostAuthor? author = jsonConvert.convert<
      PublishThreadThreadFirstPostAuthor>(json['author']);
  if (author != null) {
    publishThreadThreadFirstPost.author = author;
  }
  final String? subject = jsonConvert.convert<String>(json['subject']);
  if (subject != null) {
    publishThreadThreadFirstPost.subject = subject;
  }
  final String? message = jsonConvert.convert<String>(json['message']);
  if (message != null) {
    publishThreadThreadFirstPost.message = message;
  }
  final String? shareBbcodeMessage = jsonConvert.convert<String>(
      json['share_bbcode_message']);
  if (shareBbcodeMessage != null) {
    publishThreadThreadFirstPost.shareBbcodeMessage = shareBbcodeMessage;
  }
  final String? parentPid = jsonConvert.convert<String>(json['parent_pid']);
  if (parentPid != null) {
    publishThreadThreadFirstPost.parentPid = parentPid;
  }
  final String? replyPid = jsonConvert.convert<String>(json['reply_pid']);
  if (replyPid != null) {
    publishThreadThreadFirstPost.replyPid = replyPid;
  }
  final String? replyUid = jsonConvert.convert<String>(json['reply_uid']);
  if (replyUid != null) {
    publishThreadThreadFirstPost.replyUid = replyUid;
  }
  final String? replyUserName = jsonConvert.convert<String>(
      json['reply_user_name']);
  if (replyUserName != null) {
    publishThreadThreadFirstPost.replyUserName = replyUserName;
  }
  final String? warnMessage = jsonConvert.convert<String>(json['warn_message']);
  if (warnMessage != null) {
    publishThreadThreadFirstPost.warnMessage = warnMessage;
  }
  final String? editMessage = jsonConvert.convert<String>(json['edit_message']);
  if (editMessage != null) {
    publishThreadThreadFirstPost.editMessage = editMessage;
  }
  final bool? htmlon = jsonConvert.convert<bool>(json['htmlon']);
  if (htmlon != null) {
    publishThreadThreadFirstPost.htmlon = htmlon;
  }
  final bool? holdAttachment = jsonConvert.convert<bool>(
      json['hold_attachment']);
  if (holdAttachment != null) {
    publishThreadThreadFirstPost.holdAttachment = holdAttachment;
  }
  final List<
      PublishThreadThreadFirstPostAttachment>? attachment = (json['attachment'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<PublishThreadThreadFirstPostAttachment>(
          e) as PublishThreadThreadFirstPostAttachment).toList();
  if (attachment != null) {
    publishThreadThreadFirstPost.attachment = attachment;
  }
  final bool? holdRefer = jsonConvert.convert<bool>(json['hold_refer']);
  if (holdRefer != null) {
    publishThreadThreadFirstPost.holdRefer = holdRefer;
  }
  final bool? goodReply = jsonConvert.convert<bool>(json['good_reply']);
  if (goodReply != null) {
    publishThreadThreadFirstPost.goodReply = goodReply;
  }
  final bool? holdRate = jsonConvert.convert<bool>(json['hold_rate']);
  if (holdRate != null) {
    publishThreadThreadFirstPost.holdRate = holdRate;
  }
  final bool? ratePk = jsonConvert.convert<bool>(json['rate_pk']);
  if (ratePk != null) {
    publishThreadThreadFirstPost.ratePk = ratePk;
  }
  final String? source = jsonConvert.convert<String>(json['source']);
  if (source != null) {
    publishThreadThreadFirstPost.source = source;
  }
  final String? createdAt = jsonConvert.convert<String>(json['created_at']);
  if (createdAt != null) {
    publishThreadThreadFirstPost.createdAt = createdAt;
  }
  final String? updatedAt = jsonConvert.convert<String>(json['updated_at']);
  if (updatedAt != null) {
    publishThreadThreadFirstPost.updatedAt = updatedAt;
  }
  final bool? hasRichText = jsonConvert.convert<bool>(json['has_rich_text']);
  if (hasRichText != null) {
    publishThreadThreadFirstPost.hasRichText = hasRichText;
  }
  final String? status = jsonConvert.convert<String>(json['status']);
  if (status != null) {
    publishThreadThreadFirstPost.status = status;
  }
  final bool? auditFirst = jsonConvert.convert<bool>(json['audit_first']);
  if (auditFirst != null) {
    publishThreadThreadFirstPost.auditFirst = auditFirst;
  }
  return publishThreadThreadFirstPost;
}

Map<String, dynamic> $PublishThreadThreadFirstPostToJson(
    PublishThreadThreadFirstPost entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['pid'] = entity.pid;
  data['is_first'] = entity.isFirst;
  data['is_water'] = entity.isWater;
  data['author'] = entity.author.toJson();
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
  data['attachment'] = entity.attachment.map((v) => v.toJson()).toList();
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

extension PublishThreadThreadFirstPostExtension on PublishThreadThreadFirstPost {
  PublishThreadThreadFirstPost copyWith({
    String? pid,
    bool? isFirst,
    bool? isWater,
    PublishThreadThreadFirstPostAuthor? author,
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
    List<PublishThreadThreadFirstPostAttachment>? attachment,
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
    return PublishThreadThreadFirstPost()
      ..pid = pid ?? this.pid
      ..isFirst = isFirst ?? this.isFirst
      ..isWater = isWater ?? this.isWater
      ..author = author ?? this.author
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
      ..attachment = attachment ?? this.attachment
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

PublishThreadThreadFirstPostAuthor $PublishThreadThreadFirstPostAuthorFromJson(
    Map<String, dynamic> json) {
  final PublishThreadThreadFirstPostAuthor publishThreadThreadFirstPostAuthor = PublishThreadThreadFirstPostAuthor();
  final String? uid = jsonConvert.convert<String>(json['uid']);
  if (uid != null) {
    publishThreadThreadFirstPostAuthor.uid = uid;
  }
  final String? userName = jsonConvert.convert<String>(json['user_name']);
  if (userName != null) {
    publishThreadThreadFirstPostAuthor.userName = userName;
  }
  final String? searchUserName = jsonConvert.convert<String>(
      json['search_user_name']);
  if (searchUserName != null) {
    publishThreadThreadFirstPostAuthor.searchUserName = searchUserName;
  }
  final String? oldUserName = jsonConvert.convert<String>(
      json['old_user_name']);
  if (oldUserName != null) {
    publishThreadThreadFirstPostAuthor.oldUserName = oldUserName;
  }
  final PublishThreadThreadFirstPostAuthorGroup? group = jsonConvert.convert<
      PublishThreadThreadFirstPostAuthorGroup>(json['group']);
  if (group != null) {
    publishThreadThreadFirstPostAuthor.group = group;
  }
  final String? avatar = jsonConvert.convert<String>(json['avatar']);
  if (avatar != null) {
    publishThreadThreadFirstPostAuthor.avatar = avatar;
  }
  final String? verifyNew = jsonConvert.convert<String>(json['verify_new']);
  if (verifyNew != null) {
    publishThreadThreadFirstPostAuthor.verifyNew = verifyNew;
  }
  final String? verifyDesc = jsonConvert.convert<String>(json['verify_desc']);
  if (verifyDesc != null) {
    publishThreadThreadFirstPostAuthor.verifyDesc = verifyDesc;
  }
  final String? originalAvatar = jsonConvert.convert<String>(
      json['original_avatar']);
  if (originalAvatar != null) {
    publishThreadThreadFirstPostAuthor.originalAvatar = originalAvatar;
  }
  final String? smallAvatar = jsonConvert.convert<String>(json['small_avatar']);
  if (smallAvatar != null) {
    publishThreadThreadFirstPostAuthor.smallAvatar = smallAvatar;
  }
  final String? gender = jsonConvert.convert<String>(json['gender']);
  if (gender != null) {
    publishThreadThreadFirstPostAuthor.gender = gender;
  }
  final String? genderPrivate = jsonConvert.convert<String>(
      json['gender_private']);
  if (genderPrivate != null) {
    publishThreadThreadFirstPostAuthor.genderPrivate = genderPrivate;
  }
  final String? lifeStage = jsonConvert.convert<String>(json['life_stage']);
  if (lifeStage != null) {
    publishThreadThreadFirstPostAuthor.lifeStage = lifeStage;
  }
  final String? sign = jsonConvert.convert<String>(json['sign']);
  if (sign != null) {
    publishThreadThreadFirstPostAuthor.sign = sign;
  }
  final String? address = jsonConvert.convert<String>(json['address']);
  if (address != null) {
    publishThreadThreadFirstPostAuthor.address = address;
  }
  final String? birthday = jsonConvert.convert<String>(json['birthday']);
  if (birthday != null) {
    publishThreadThreadFirstPostAuthor.birthday = birthday;
  }
  final String? threads = jsonConvert.convert<String>(json['threads']);
  if (threads != null) {
    publishThreadThreadFirstPostAuthor.threads = threads;
  }
  final String? posts = jsonConvert.convert<String>(json['posts']);
  if (posts != null) {
    publishThreadThreadFirstPostAuthor.posts = posts;
  }
  final String? attendCount = jsonConvert.convert<String>(json['attend_count']);
  if (attendCount != null) {
    publishThreadThreadFirstPostAuthor.attendCount = attendCount;
  }
  final String? fansCount = jsonConvert.convert<String>(json['fans_count']);
  if (fansCount != null) {
    publishThreadThreadFirstPostAuthor.fansCount = fansCount;
  }
  final String? rateNum = jsonConvert.convert<String>(json['rate_num']);
  if (rateNum != null) {
    publishThreadThreadFirstPostAuthor.rateNum = rateNum;
  }
  final String? mobile = jsonConvert.convert<String>(json['mobile']);
  if (mobile != null) {
    publishThreadThreadFirstPostAuthor.mobile = mobile;
  }
  final String? color = jsonConvert.convert<String>(json['color']);
  if (color != null) {
    publishThreadThreadFirstPostAuthor.color = color;
  }
  final List<
      PublishThreadThreadFirstPostAuthorMedals>? medals = (json['medals'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<PublishThreadThreadFirstPostAuthorMedals>(
          e) as PublishThreadThreadFirstPostAuthorMedals).toList();
  if (medals != null) {
    publishThreadThreadFirstPostAuthor.medals = medals;
  }
  final String? prestige = jsonConvert.convert<String>(json['prestige']);
  if (prestige != null) {
    publishThreadThreadFirstPostAuthor.prestige = prestige;
  }
  final String? regTime = jsonConvert.convert<String>(json['reg_time']);
  if (regTime != null) {
    publishThreadThreadFirstPostAuthor.regTime = regTime;
  }
  final String? location = jsonConvert.convert<String>(json['location']);
  if (location != null) {
    publishThreadThreadFirstPostAuthor.location = location;
  }
  final String? verify = jsonConvert.convert<String>(json['verify']);
  if (verify != null) {
    publishThreadThreadFirstPostAuthor.verify = verify;
  }
  final String? highVerify = jsonConvert.convert<String>(json['high_verify']);
  if (highVerify != null) {
    publishThreadThreadFirstPostAuthor.highVerify = highVerify;
  }
  final String? highDesc = jsonConvert.convert<String>(json['high_desc']);
  if (highDesc != null) {
    publishThreadThreadFirstPostAuthor.highDesc = highDesc;
  }
  final String? honourVerify = jsonConvert.convert<String>(
      json['honour_verify']);
  if (honourVerify != null) {
    publishThreadThreadFirstPostAuthor.honourVerify = honourVerify;
  }
  final String? honourDesc = jsonConvert.convert<String>(json['honour_desc']);
  if (honourDesc != null) {
    publishThreadThreadFirstPostAuthor.honourDesc = honourDesc;
  }
  final String? realVerify = jsonConvert.convert<String>(json['real_verify']);
  if (realVerify != null) {
    publishThreadThreadFirstPostAuthor.realVerify = realVerify;
  }
  final String? atNum = jsonConvert.convert<String>(json['at_num']);
  if (atNum != null) {
    publishThreadThreadFirstPostAuthor.atNum = atNum;
  }
  final bool? active = jsonConvert.convert<bool>(json['active']);
  if (active != null) {
    publishThreadThreadFirstPostAuthor.active = active;
  }
  final bool? qqBind = jsonConvert.convert<bool>(json['qq_bind']);
  if (qqBind != null) {
    publishThreadThreadFirstPostAuthor.qqBind = qqBind;
  }
  final bool? qihooBind = jsonConvert.convert<bool>(json['qihoo_bind']);
  if (qihooBind != null) {
    publishThreadThreadFirstPostAuthor.qihooBind = qihooBind;
  }
  final bool? mobileBind = jsonConvert.convert<bool>(json['mobile_bind']);
  if (mobileBind != null) {
    publishThreadThreadFirstPostAuthor.mobileBind = mobileBind;
  }
  final bool? emailBind = jsonConvert.convert<bool>(json['email_bind']);
  if (emailBind != null) {
    publishThreadThreadFirstPostAuthor.emailBind = emailBind;
  }
  final bool? sinaBind = jsonConvert.convert<bool>(json['sina_bind']);
  if (sinaBind != null) {
    publishThreadThreadFirstPostAuthor.sinaBind = sinaBind;
  }
  final bool? weixinBind = jsonConvert.convert<bool>(json['weixin_bind']);
  if (weixinBind != null) {
    publishThreadThreadFirstPostAuthor.weixinBind = weixinBind;
  }
  final bool? isTenYear = jsonConvert.convert<bool>(json['is_ten_year']);
  if (isTenYear != null) {
    publishThreadThreadFirstPostAuthor.isTenYear = isTenYear;
  }
  final bool? shiJiaShangJia = jsonConvert.convert<bool>(
      json['shi_jia_shang_jia']);
  if (shiJiaShangJia != null) {
    publishThreadThreadFirstPostAuthor.shiJiaShangJia = shiJiaShangJia;
  }
  final String? shiJiaShangJiaDesc = jsonConvert.convert<String>(
      json['shi_jia_shang_jia_desc']);
  if (shiJiaShangJiaDesc != null) {
    publishThreadThreadFirstPostAuthor.shiJiaShangJiaDesc = shiJiaShangJiaDesc;
  }
  final bool? isSecurity = jsonConvert.convert<bool>(json['is_security']);
  if (isSecurity != null) {
    publishThreadThreadFirstPostAuthor.isSecurity = isSecurity;
  }
  final bool? isAbnormal = jsonConvert.convert<bool>(json['is_abnormal']);
  if (isAbnormal != null) {
    publishThreadThreadFirstPostAuthor.isAbnormal = isAbnormal;
  }
  final bool? appUser = jsonConvert.convert<bool>(json['app_user']);
  if (appUser != null) {
    publishThreadThreadFirstPostAuthor.appUser = appUser;
  }
  final String? infoProgress = jsonConvert.convert<String>(
      json['info_progress']);
  if (infoProgress != null) {
    publishThreadThreadFirstPostAuthor.infoProgress = infoProgress;
  }
  final String? userType = jsonConvert.convert<String>(json['user_type']);
  if (userType != null) {
    publishThreadThreadFirstPostAuthor.userType = userType;
  }
  return publishThreadThreadFirstPostAuthor;
}

Map<String, dynamic> $PublishThreadThreadFirstPostAuthorToJson(
    PublishThreadThreadFirstPostAuthor entity) {
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
  data['gender'] = entity.gender;
  data['gender_private'] = entity.genderPrivate;
  data['life_stage'] = entity.lifeStage;
  data['sign'] = entity.sign;
  data['address'] = entity.address;
  data['birthday'] = entity.birthday;
  data['threads'] = entity.threads;
  data['posts'] = entity.posts;
  data['attend_count'] = entity.attendCount;
  data['fans_count'] = entity.fansCount;
  data['rate_num'] = entity.rateNum;
  data['mobile'] = entity.mobile;
  data['color'] = entity.color;
  data['medals'] = entity.medals.map((v) => v.toJson()).toList();
  data['prestige'] = entity.prestige;
  data['reg_time'] = entity.regTime;
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

extension PublishThreadThreadFirstPostAuthorExtension on PublishThreadThreadFirstPostAuthor {
  PublishThreadThreadFirstPostAuthor copyWith({
    String? uid,
    String? userName,
    String? searchUserName,
    String? oldUserName,
    PublishThreadThreadFirstPostAuthorGroup? group,
    String? avatar,
    String? verifyNew,
    String? verifyDesc,
    String? originalAvatar,
    String? smallAvatar,
    String? gender,
    String? genderPrivate,
    String? lifeStage,
    String? sign,
    String? address,
    String? birthday,
    String? threads,
    String? posts,
    String? attendCount,
    String? fansCount,
    String? rateNum,
    String? mobile,
    String? color,
    List<PublishThreadThreadFirstPostAuthorMedals>? medals,
    String? prestige,
    String? regTime,
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
    return PublishThreadThreadFirstPostAuthor()
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
      ..gender = gender ?? this.gender
      ..genderPrivate = genderPrivate ?? this.genderPrivate
      ..lifeStage = lifeStage ?? this.lifeStage
      ..sign = sign ?? this.sign
      ..address = address ?? this.address
      ..birthday = birthday ?? this.birthday
      ..threads = threads ?? this.threads
      ..posts = posts ?? this.posts
      ..attendCount = attendCount ?? this.attendCount
      ..fansCount = fansCount ?? this.fansCount
      ..rateNum = rateNum ?? this.rateNum
      ..mobile = mobile ?? this.mobile
      ..color = color ?? this.color
      ..medals = medals ?? this.medals
      ..prestige = prestige ?? this.prestige
      ..regTime = regTime ?? this.regTime
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

PublishThreadThreadFirstPostAuthorGroup $PublishThreadThreadFirstPostAuthorGroupFromJson(
    Map<String, dynamic> json) {
  final PublishThreadThreadFirstPostAuthorGroup publishThreadThreadFirstPostAuthorGroup = PublishThreadThreadFirstPostAuthorGroup();
  final String? gid = jsonConvert.convert<String>(json['gid']);
  if (gid != null) {
    publishThreadThreadFirstPostAuthorGroup.gid = gid;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    publishThreadThreadFirstPostAuthorGroup.name = name;
  }
  final String? category = jsonConvert.convert<String>(json['category']);
  if (category != null) {
    publishThreadThreadFirstPostAuthorGroup.category = category;
  }
  final String? rank = jsonConvert.convert<String>(json['rank']);
  if (rank != null) {
    publishThreadThreadFirstPostAuthorGroup.rank = rank;
  }
  final String? picture = jsonConvert.convert<String>(json['picture']);
  if (picture != null) {
    publishThreadThreadFirstPostAuthorGroup.picture = picture;
  }
  return publishThreadThreadFirstPostAuthorGroup;
}

Map<String, dynamic> $PublishThreadThreadFirstPostAuthorGroupToJson(
    PublishThreadThreadFirstPostAuthorGroup entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['gid'] = entity.gid;
  data['name'] = entity.name;
  data['category'] = entity.category;
  data['rank'] = entity.rank;
  data['picture'] = entity.picture;
  return data;
}

extension PublishThreadThreadFirstPostAuthorGroupExtension on PublishThreadThreadFirstPostAuthorGroup {
  PublishThreadThreadFirstPostAuthorGroup copyWith({
    String? gid,
    String? name,
    String? category,
    String? rank,
    String? picture,
  }) {
    return PublishThreadThreadFirstPostAuthorGroup()
      ..gid = gid ?? this.gid
      ..name = name ?? this.name
      ..category = category ?? this.category
      ..rank = rank ?? this.rank
      ..picture = picture ?? this.picture;
  }
}

PublishThreadThreadFirstPostAuthorMedals $PublishThreadThreadFirstPostAuthorMedalsFromJson(
    Map<String, dynamic> json) {
  final PublishThreadThreadFirstPostAuthorMedals publishThreadThreadFirstPostAuthorMedals = PublishThreadThreadFirstPostAuthorMedals();
  final String? id = jsonConvert.convert<String>(json['id']);
  if (id != null) {
    publishThreadThreadFirstPostAuthorMedals.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    publishThreadThreadFirstPostAuthorMedals.name = name;
  }
  final String? requireValue = jsonConvert.convert<String>(
      json['require_value']);
  if (requireValue != null) {
    publishThreadThreadFirstPostAuthorMedals.requireValue = requireValue;
  }
  final String? requireDays = jsonConvert.convert<String>(json['require_days']);
  if (requireDays != null) {
    publishThreadThreadFirstPostAuthorMedals.requireDays = requireDays;
  }
  final String? iconUrl = jsonConvert.convert<String>(json['icon_url']);
  if (iconUrl != null) {
    publishThreadThreadFirstPostAuthorMedals.iconUrl = iconUrl;
  }
  final String? colorIconUrl = jsonConvert.convert<String>(
      json['color_icon_url']);
  if (colorIconUrl != null) {
    publishThreadThreadFirstPostAuthorMedals.colorIconUrl = colorIconUrl;
  }
  final String? tuwenIconUrl = jsonConvert.convert<String>(
      json['tuwen_icon_url']);
  if (tuwenIconUrl != null) {
    publishThreadThreadFirstPostAuthorMedals.tuwenIconUrl = tuwenIconUrl;
  }
  final String? description = jsonConvert.convert<String>(json['description']);
  if (description != null) {
    publishThreadThreadFirstPostAuthorMedals.description = description;
  }
  final String? cityId = jsonConvert.convert<String>(json['city_id']);
  if (cityId != null) {
    publishThreadThreadFirstPostAuthorMedals.cityId = cityId;
  }
  final String? groupId = jsonConvert.convert<String>(json['group_id']);
  if (groupId != null) {
    publishThreadThreadFirstPostAuthorMedals.groupId = groupId;
  }
  final String? sortId = jsonConvert.convert<String>(json['sort_id']);
  if (sortId != null) {
    publishThreadThreadFirstPostAuthorMedals.sortId = sortId;
  }
  final bool? awarded = jsonConvert.convert<bool>(json['awarded']);
  if (awarded != null) {
    publishThreadThreadFirstPostAuthorMedals.awarded = awarded;
  }
  final bool? isNew = jsonConvert.convert<bool>(json['is_new']);
  if (isNew != null) {
    publishThreadThreadFirstPostAuthorMedals.isNew = isNew;
  }
  final bool? online = jsonConvert.convert<bool>(json['online']);
  if (online != null) {
    publishThreadThreadFirstPostAuthorMedals.online = online;
  }
  final String? groupName = jsonConvert.convert<String>(json['group_name']);
  if (groupName != null) {
    publishThreadThreadFirstPostAuthorMedals.groupName = groupName;
  }
  final bool? wearing = jsonConvert.convert<bool>(json['wearing']);
  if (wearing != null) {
    publishThreadThreadFirstPostAuthorMedals.wearing = wearing;
  }
  final bool? growing = jsonConvert.convert<bool>(json['growing']);
  if (growing != null) {
    publishThreadThreadFirstPostAuthorMedals.growing = growing;
  }
  final String? createdAt = jsonConvert.convert<String>(json['created_at']);
  if (createdAt != null) {
    publishThreadThreadFirstPostAuthorMedals.createdAt = createdAt;
  }
  final String? updatedAt = jsonConvert.convert<String>(json['updated_at']);
  if (updatedAt != null) {
    publishThreadThreadFirstPostAuthorMedals.updatedAt = updatedAt;
  }
  final String? actionId = jsonConvert.convert<String>(json['action_id']);
  if (actionId != null) {
    publishThreadThreadFirstPostAuthorMedals.actionId = actionId;
  }
  final String? statisticsType = jsonConvert.convert<String>(
      json['statistics_type']);
  if (statisticsType != null) {
    publishThreadThreadFirstPostAuthorMedals.statisticsType = statisticsType;
  }
  final String? buttonName = jsonConvert.convert<String>(json['button_name']);
  if (buttonName != null) {
    publishThreadThreadFirstPostAuthorMedals.buttonName = buttonName;
  }
  final bool? buttonDisplay = jsonConvert.convert<bool>(json['button_display']);
  if (buttonDisplay != null) {
    publishThreadThreadFirstPostAuthorMedals.buttonDisplay = buttonDisplay;
  }
  final String? linkUrl = jsonConvert.convert<String>(json['link_url']);
  if (linkUrl != null) {
    publishThreadThreadFirstPostAuthorMedals.linkUrl = linkUrl;
  }
  final String? value = jsonConvert.convert<String>(json['value']);
  if (value != null) {
    publishThreadThreadFirstPostAuthorMedals.value = value;
  }
  final String? sourceId = jsonConvert.convert<String>(json['source_id']);
  if (sourceId != null) {
    publishThreadThreadFirstPostAuthorMedals.sourceId = sourceId;
  }
  final String? fid = jsonConvert.convert<String>(json['fid']);
  if (fid != null) {
    publishThreadThreadFirstPostAuthorMedals.fid = fid;
  }
  final String? groupStatus = jsonConvert.convert<String>(json['group_status']);
  if (groupStatus != null) {
    publishThreadThreadFirstPostAuthorMedals.groupStatus = groupStatus;
  }
  final bool? autoWearing = jsonConvert.convert<bool>(json['auto_wearing']);
  if (autoWearing != null) {
    publishThreadThreadFirstPostAuthorMedals.autoWearing = autoWearing;
  }
  final bool? linkDisplay = jsonConvert.convert<bool>(json['link_display']);
  if (linkDisplay != null) {
    publishThreadThreadFirstPostAuthorMedals.linkDisplay = linkDisplay;
  }
  return publishThreadThreadFirstPostAuthorMedals;
}

Map<String, dynamic> $PublishThreadThreadFirstPostAuthorMedalsToJson(
    PublishThreadThreadFirstPostAuthorMedals entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['name'] = entity.name;
  data['require_value'] = entity.requireValue;
  data['require_days'] = entity.requireDays;
  data['icon_url'] = entity.iconUrl;
  data['color_icon_url'] = entity.colorIconUrl;
  data['tuwen_icon_url'] = entity.tuwenIconUrl;
  data['description'] = entity.description;
  data['city_id'] = entity.cityId;
  data['group_id'] = entity.groupId;
  data['sort_id'] = entity.sortId;
  data['awarded'] = entity.awarded;
  data['is_new'] = entity.isNew;
  data['online'] = entity.online;
  data['group_name'] = entity.groupName;
  data['wearing'] = entity.wearing;
  data['growing'] = entity.growing;
  data['created_at'] = entity.createdAt;
  data['updated_at'] = entity.updatedAt;
  data['action_id'] = entity.actionId;
  data['statistics_type'] = entity.statisticsType;
  data['button_name'] = entity.buttonName;
  data['button_display'] = entity.buttonDisplay;
  data['link_url'] = entity.linkUrl;
  data['value'] = entity.value;
  data['source_id'] = entity.sourceId;
  data['fid'] = entity.fid;
  data['group_status'] = entity.groupStatus;
  data['auto_wearing'] = entity.autoWearing;
  data['link_display'] = entity.linkDisplay;
  return data;
}

extension PublishThreadThreadFirstPostAuthorMedalsExtension on PublishThreadThreadFirstPostAuthorMedals {
  PublishThreadThreadFirstPostAuthorMedals copyWith({
    String? id,
    String? name,
    String? requireValue,
    String? requireDays,
    String? iconUrl,
    String? colorIconUrl,
    String? tuwenIconUrl,
    String? description,
    String? cityId,
    String? groupId,
    String? sortId,
    bool? awarded,
    bool? isNew,
    bool? online,
    String? groupName,
    bool? wearing,
    bool? growing,
    String? createdAt,
    String? updatedAt,
    String? actionId,
    String? statisticsType,
    String? buttonName,
    bool? buttonDisplay,
    String? linkUrl,
    String? value,
    String? sourceId,
    String? fid,
    String? groupStatus,
    bool? autoWearing,
    bool? linkDisplay,
  }) {
    return PublishThreadThreadFirstPostAuthorMedals()
      ..id = id ?? this.id
      ..name = name ?? this.name
      ..requireValue = requireValue ?? this.requireValue
      ..requireDays = requireDays ?? this.requireDays
      ..iconUrl = iconUrl ?? this.iconUrl
      ..colorIconUrl = colorIconUrl ?? this.colorIconUrl
      ..tuwenIconUrl = tuwenIconUrl ?? this.tuwenIconUrl
      ..description = description ?? this.description
      ..cityId = cityId ?? this.cityId
      ..groupId = groupId ?? this.groupId
      ..sortId = sortId ?? this.sortId
      ..awarded = awarded ?? this.awarded
      ..isNew = isNew ?? this.isNew
      ..online = online ?? this.online
      ..groupName = groupName ?? this.groupName
      ..wearing = wearing ?? this.wearing
      ..growing = growing ?? this.growing
      ..createdAt = createdAt ?? this.createdAt
      ..updatedAt = updatedAt ?? this.updatedAt
      ..actionId = actionId ?? this.actionId
      ..statisticsType = statisticsType ?? this.statisticsType
      ..buttonName = buttonName ?? this.buttonName
      ..buttonDisplay = buttonDisplay ?? this.buttonDisplay
      ..linkUrl = linkUrl ?? this.linkUrl
      ..value = value ?? this.value
      ..sourceId = sourceId ?? this.sourceId
      ..fid = fid ?? this.fid
      ..groupStatus = groupStatus ?? this.groupStatus
      ..autoWearing = autoWearing ?? this.autoWearing
      ..linkDisplay = linkDisplay ?? this.linkDisplay;
  }
}

PublishThreadThreadFirstPostAttachment $PublishThreadThreadFirstPostAttachmentFromJson(
    Map<String, dynamic> json) {
  final PublishThreadThreadFirstPostAttachment publishThreadThreadFirstPostAttachment = PublishThreadThreadFirstPostAttachment();
  final String? aid = jsonConvert.convert<String>(json['aid']);
  if (aid != null) {
    publishThreadThreadFirstPostAttachment.aid = aid;
  }
  final String? origFileName = jsonConvert.convert<String>(
      json['orig_file_name']);
  if (origFileName != null) {
    publishThreadThreadFirstPostAttachment.origFileName = origFileName;
  }
  final String? fileType = jsonConvert.convert<String>(json['file_type']);
  if (fileType != null) {
    publishThreadThreadFirstPostAttachment.fileType = fileType;
  }
  final String? description = jsonConvert.convert<String>(json['description']);
  if (description != null) {
    publishThreadThreadFirstPostAttachment.description = description;
  }
  final String? filesize = jsonConvert.convert<String>(json['filesize']);
  if (filesize != null) {
    publishThreadThreadFirstPostAttachment.filesize = filesize;
  }
  final String? downloads = jsonConvert.convert<String>(json['downloads']);
  if (downloads != null) {
    publishThreadThreadFirstPostAttachment.downloads = downloads;
  }
  final bool? isImage = jsonConvert.convert<bool>(json['is_image']);
  if (isImage != null) {
    publishThreadThreadFirstPostAttachment.isImage = isImage;
  }
  final String? uri = jsonConvert.convert<String>(json['uri']);
  if (uri != null) {
    publishThreadThreadFirstPostAttachment.uri = uri;
  }
  final String? origUrl = jsonConvert.convert<String>(json['orig_url']);
  if (origUrl != null) {
    publishThreadThreadFirstPostAttachment.origUrl = origUrl;
  }
  final String? middleUrl = jsonConvert.convert<String>(json['middle_url']);
  if (middleUrl != null) {
    publishThreadThreadFirstPostAttachment.middleUrl = middleUrl;
  }
  final String? thumbUrl = jsonConvert.convert<String>(json['thumb_url']);
  if (thumbUrl != null) {
    publishThreadThreadFirstPostAttachment.thumbUrl = thumbUrl;
  }
  final String? hasSticker = jsonConvert.convert<String>(json['has_sticker']);
  if (hasSticker != null) {
    publishThreadThreadFirstPostAttachment.hasSticker = hasSticker;
  }
  final String? fileUri = jsonConvert.convert<String>(json['file_uri']);
  if (fileUri != null) {
    publishThreadThreadFirstPostAttachment.fileUri = fileUri;
  }
  final String? fileName = jsonConvert.convert<String>(json['file_name']);
  if (fileName != null) {
    publishThreadThreadFirstPostAttachment.fileName = fileName;
  }
  return publishThreadThreadFirstPostAttachment;
}

Map<String, dynamic> $PublishThreadThreadFirstPostAttachmentToJson(
    PublishThreadThreadFirstPostAttachment entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['aid'] = entity.aid;
  data['orig_file_name'] = entity.origFileName;
  data['file_type'] = entity.fileType;
  data['description'] = entity.description;
  data['filesize'] = entity.filesize;
  data['downloads'] = entity.downloads;
  data['is_image'] = entity.isImage;
  data['uri'] = entity.uri;
  data['orig_url'] = entity.origUrl;
  data['middle_url'] = entity.middleUrl;
  data['thumb_url'] = entity.thumbUrl;
  data['has_sticker'] = entity.hasSticker;
  data['file_uri'] = entity.fileUri;
  data['file_name'] = entity.fileName;
  return data;
}

extension PublishThreadThreadFirstPostAttachmentExtension on PublishThreadThreadFirstPostAttachment {
  PublishThreadThreadFirstPostAttachment copyWith({
    String? aid,
    String? origFileName,
    String? fileType,
    String? description,
    String? filesize,
    String? downloads,
    bool? isImage,
    String? uri,
    String? origUrl,
    String? middleUrl,
    String? thumbUrl,
    String? hasSticker,
    String? fileUri,
    String? fileName,
  }) {
    return PublishThreadThreadFirstPostAttachment()
      ..aid = aid ?? this.aid
      ..origFileName = origFileName ?? this.origFileName
      ..fileType = fileType ?? this.fileType
      ..description = description ?? this.description
      ..filesize = filesize ?? this.filesize
      ..downloads = downloads ?? this.downloads
      ..isImage = isImage ?? this.isImage
      ..uri = uri ?? this.uri
      ..origUrl = origUrl ?? this.origUrl
      ..middleUrl = middleUrl ?? this.middleUrl
      ..thumbUrl = thumbUrl ?? this.thumbUrl
      ..hasSticker = hasSticker ?? this.hasSticker
      ..fileUri = fileUri ?? this.fileUri
      ..fileName = fileName ?? this.fileName;
  }
}

PublishThreadThreadLastPost $PublishThreadThreadLastPostFromJson(
    Map<String, dynamic> json) {
  final PublishThreadThreadLastPost publishThreadThreadLastPost = PublishThreadThreadLastPost();
  final String? pid = jsonConvert.convert<String>(json['pid']);
  if (pid != null) {
    publishThreadThreadLastPost.pid = pid;
  }
  final bool? isFirst = jsonConvert.convert<bool>(json['is_first']);
  if (isFirst != null) {
    publishThreadThreadLastPost.isFirst = isFirst;
  }
  final bool? isWater = jsonConvert.convert<bool>(json['is_water']);
  if (isWater != null) {
    publishThreadThreadLastPost.isWater = isWater;
  }
  final PublishThreadThreadLastPostAuthor? author = jsonConvert.convert<
      PublishThreadThreadLastPostAuthor>(json['author']);
  if (author != null) {
    publishThreadThreadLastPost.author = author;
  }
  final String? subject = jsonConvert.convert<String>(json['subject']);
  if (subject != null) {
    publishThreadThreadLastPost.subject = subject;
  }
  final String? message = jsonConvert.convert<String>(json['message']);
  if (message != null) {
    publishThreadThreadLastPost.message = message;
  }
  final String? shareBbcodeMessage = jsonConvert.convert<String>(
      json['share_bbcode_message']);
  if (shareBbcodeMessage != null) {
    publishThreadThreadLastPost.shareBbcodeMessage = shareBbcodeMessage;
  }
  final String? parentPid = jsonConvert.convert<String>(json['parent_pid']);
  if (parentPid != null) {
    publishThreadThreadLastPost.parentPid = parentPid;
  }
  final String? replyPid = jsonConvert.convert<String>(json['reply_pid']);
  if (replyPid != null) {
    publishThreadThreadLastPost.replyPid = replyPid;
  }
  final String? replyUid = jsonConvert.convert<String>(json['reply_uid']);
  if (replyUid != null) {
    publishThreadThreadLastPost.replyUid = replyUid;
  }
  final String? replyUserName = jsonConvert.convert<String>(
      json['reply_user_name']);
  if (replyUserName != null) {
    publishThreadThreadLastPost.replyUserName = replyUserName;
  }
  final String? warnMessage = jsonConvert.convert<String>(json['warn_message']);
  if (warnMessage != null) {
    publishThreadThreadLastPost.warnMessage = warnMessage;
  }
  final String? editMessage = jsonConvert.convert<String>(json['edit_message']);
  if (editMessage != null) {
    publishThreadThreadLastPost.editMessage = editMessage;
  }
  final bool? htmlon = jsonConvert.convert<bool>(json['htmlon']);
  if (htmlon != null) {
    publishThreadThreadLastPost.htmlon = htmlon;
  }
  final bool? holdAttachment = jsonConvert.convert<bool>(
      json['hold_attachment']);
  if (holdAttachment != null) {
    publishThreadThreadLastPost.holdAttachment = holdAttachment;
  }
  final List<
      PublishThreadThreadLastPostAttachment>? attachment = (json['attachment'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<PublishThreadThreadLastPostAttachment>(
          e) as PublishThreadThreadLastPostAttachment).toList();
  if (attachment != null) {
    publishThreadThreadLastPost.attachment = attachment;
  }
  final bool? holdRefer = jsonConvert.convert<bool>(json['hold_refer']);
  if (holdRefer != null) {
    publishThreadThreadLastPost.holdRefer = holdRefer;
  }
  final bool? goodReply = jsonConvert.convert<bool>(json['good_reply']);
  if (goodReply != null) {
    publishThreadThreadLastPost.goodReply = goodReply;
  }
  final bool? holdRate = jsonConvert.convert<bool>(json['hold_rate']);
  if (holdRate != null) {
    publishThreadThreadLastPost.holdRate = holdRate;
  }
  final bool? ratePk = jsonConvert.convert<bool>(json['rate_pk']);
  if (ratePk != null) {
    publishThreadThreadLastPost.ratePk = ratePk;
  }
  final String? source = jsonConvert.convert<String>(json['source']);
  if (source != null) {
    publishThreadThreadLastPost.source = source;
  }
  final String? createdAt = jsonConvert.convert<String>(json['created_at']);
  if (createdAt != null) {
    publishThreadThreadLastPost.createdAt = createdAt;
  }
  final String? updatedAt = jsonConvert.convert<String>(json['updated_at']);
  if (updatedAt != null) {
    publishThreadThreadLastPost.updatedAt = updatedAt;
  }
  final bool? hasRichText = jsonConvert.convert<bool>(json['has_rich_text']);
  if (hasRichText != null) {
    publishThreadThreadLastPost.hasRichText = hasRichText;
  }
  final String? status = jsonConvert.convert<String>(json['status']);
  if (status != null) {
    publishThreadThreadLastPost.status = status;
  }
  final bool? auditFirst = jsonConvert.convert<bool>(json['audit_first']);
  if (auditFirst != null) {
    publishThreadThreadLastPost.auditFirst = auditFirst;
  }
  return publishThreadThreadLastPost;
}

Map<String, dynamic> $PublishThreadThreadLastPostToJson(
    PublishThreadThreadLastPost entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['pid'] = entity.pid;
  data['is_first'] = entity.isFirst;
  data['is_water'] = entity.isWater;
  data['author'] = entity.author.toJson();
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
  data['attachment'] = entity.attachment.map((v) => v.toJson()).toList();
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

extension PublishThreadThreadLastPostExtension on PublishThreadThreadLastPost {
  PublishThreadThreadLastPost copyWith({
    String? pid,
    bool? isFirst,
    bool? isWater,
    PublishThreadThreadLastPostAuthor? author,
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
    List<PublishThreadThreadLastPostAttachment>? attachment,
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
    return PublishThreadThreadLastPost()
      ..pid = pid ?? this.pid
      ..isFirst = isFirst ?? this.isFirst
      ..isWater = isWater ?? this.isWater
      ..author = author ?? this.author
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
      ..attachment = attachment ?? this.attachment
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

PublishThreadThreadLastPostAuthor $PublishThreadThreadLastPostAuthorFromJson(
    Map<String, dynamic> json) {
  final PublishThreadThreadLastPostAuthor publishThreadThreadLastPostAuthor = PublishThreadThreadLastPostAuthor();
  final String? uid = jsonConvert.convert<String>(json['uid']);
  if (uid != null) {
    publishThreadThreadLastPostAuthor.uid = uid;
  }
  final String? userName = jsonConvert.convert<String>(json['user_name']);
  if (userName != null) {
    publishThreadThreadLastPostAuthor.userName = userName;
  }
  final String? searchUserName = jsonConvert.convert<String>(
      json['search_user_name']);
  if (searchUserName != null) {
    publishThreadThreadLastPostAuthor.searchUserName = searchUserName;
  }
  final String? oldUserName = jsonConvert.convert<String>(
      json['old_user_name']);
  if (oldUserName != null) {
    publishThreadThreadLastPostAuthor.oldUserName = oldUserName;
  }
  final PublishThreadThreadLastPostAuthorGroup? group = jsonConvert.convert<
      PublishThreadThreadLastPostAuthorGroup>(json['group']);
  if (group != null) {
    publishThreadThreadLastPostAuthor.group = group;
  }
  final String? avatar = jsonConvert.convert<String>(json['avatar']);
  if (avatar != null) {
    publishThreadThreadLastPostAuthor.avatar = avatar;
  }
  final String? verifyNew = jsonConvert.convert<String>(json['verify_new']);
  if (verifyNew != null) {
    publishThreadThreadLastPostAuthor.verifyNew = verifyNew;
  }
  final String? verifyDesc = jsonConvert.convert<String>(json['verify_desc']);
  if (verifyDesc != null) {
    publishThreadThreadLastPostAuthor.verifyDesc = verifyDesc;
  }
  final String? originalAvatar = jsonConvert.convert<String>(
      json['original_avatar']);
  if (originalAvatar != null) {
    publishThreadThreadLastPostAuthor.originalAvatar = originalAvatar;
  }
  final String? smallAvatar = jsonConvert.convert<String>(json['small_avatar']);
  if (smallAvatar != null) {
    publishThreadThreadLastPostAuthor.smallAvatar = smallAvatar;
  }
  final String? gender = jsonConvert.convert<String>(json['gender']);
  if (gender != null) {
    publishThreadThreadLastPostAuthor.gender = gender;
  }
  final String? genderPrivate = jsonConvert.convert<String>(
      json['gender_private']);
  if (genderPrivate != null) {
    publishThreadThreadLastPostAuthor.genderPrivate = genderPrivate;
  }
  final String? lifeStage = jsonConvert.convert<String>(json['life_stage']);
  if (lifeStage != null) {
    publishThreadThreadLastPostAuthor.lifeStage = lifeStage;
  }
  final String? sign = jsonConvert.convert<String>(json['sign']);
  if (sign != null) {
    publishThreadThreadLastPostAuthor.sign = sign;
  }
  final String? address = jsonConvert.convert<String>(json['address']);
  if (address != null) {
    publishThreadThreadLastPostAuthor.address = address;
  }
  final String? birthday = jsonConvert.convert<String>(json['birthday']);
  if (birthday != null) {
    publishThreadThreadLastPostAuthor.birthday = birthday;
  }
  final String? threads = jsonConvert.convert<String>(json['threads']);
  if (threads != null) {
    publishThreadThreadLastPostAuthor.threads = threads;
  }
  final String? posts = jsonConvert.convert<String>(json['posts']);
  if (posts != null) {
    publishThreadThreadLastPostAuthor.posts = posts;
  }
  final String? attendCount = jsonConvert.convert<String>(json['attend_count']);
  if (attendCount != null) {
    publishThreadThreadLastPostAuthor.attendCount = attendCount;
  }
  final String? fansCount = jsonConvert.convert<String>(json['fans_count']);
  if (fansCount != null) {
    publishThreadThreadLastPostAuthor.fansCount = fansCount;
  }
  final String? rateNum = jsonConvert.convert<String>(json['rate_num']);
  if (rateNum != null) {
    publishThreadThreadLastPostAuthor.rateNum = rateNum;
  }
  final String? mobile = jsonConvert.convert<String>(json['mobile']);
  if (mobile != null) {
    publishThreadThreadLastPostAuthor.mobile = mobile;
  }
  final String? color = jsonConvert.convert<String>(json['color']);
  if (color != null) {
    publishThreadThreadLastPostAuthor.color = color;
  }
  final List<
      PublishThreadThreadLastPostAuthorMedals>? medals = (json['medals'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<PublishThreadThreadLastPostAuthorMedals>(
          e) as PublishThreadThreadLastPostAuthorMedals).toList();
  if (medals != null) {
    publishThreadThreadLastPostAuthor.medals = medals;
  }
  final String? prestige = jsonConvert.convert<String>(json['prestige']);
  if (prestige != null) {
    publishThreadThreadLastPostAuthor.prestige = prestige;
  }
  final String? regTime = jsonConvert.convert<String>(json['reg_time']);
  if (regTime != null) {
    publishThreadThreadLastPostAuthor.regTime = regTime;
  }
  final String? location = jsonConvert.convert<String>(json['location']);
  if (location != null) {
    publishThreadThreadLastPostAuthor.location = location;
  }
  final String? verify = jsonConvert.convert<String>(json['verify']);
  if (verify != null) {
    publishThreadThreadLastPostAuthor.verify = verify;
  }
  final String? highVerify = jsonConvert.convert<String>(json['high_verify']);
  if (highVerify != null) {
    publishThreadThreadLastPostAuthor.highVerify = highVerify;
  }
  final String? highDesc = jsonConvert.convert<String>(json['high_desc']);
  if (highDesc != null) {
    publishThreadThreadLastPostAuthor.highDesc = highDesc;
  }
  final String? honourVerify = jsonConvert.convert<String>(
      json['honour_verify']);
  if (honourVerify != null) {
    publishThreadThreadLastPostAuthor.honourVerify = honourVerify;
  }
  final String? honourDesc = jsonConvert.convert<String>(json['honour_desc']);
  if (honourDesc != null) {
    publishThreadThreadLastPostAuthor.honourDesc = honourDesc;
  }
  final String? realVerify = jsonConvert.convert<String>(json['real_verify']);
  if (realVerify != null) {
    publishThreadThreadLastPostAuthor.realVerify = realVerify;
  }
  final String? atNum = jsonConvert.convert<String>(json['at_num']);
  if (atNum != null) {
    publishThreadThreadLastPostAuthor.atNum = atNum;
  }
  final bool? active = jsonConvert.convert<bool>(json['active']);
  if (active != null) {
    publishThreadThreadLastPostAuthor.active = active;
  }
  final bool? qqBind = jsonConvert.convert<bool>(json['qq_bind']);
  if (qqBind != null) {
    publishThreadThreadLastPostAuthor.qqBind = qqBind;
  }
  final bool? qihooBind = jsonConvert.convert<bool>(json['qihoo_bind']);
  if (qihooBind != null) {
    publishThreadThreadLastPostAuthor.qihooBind = qihooBind;
  }
  final bool? mobileBind = jsonConvert.convert<bool>(json['mobile_bind']);
  if (mobileBind != null) {
    publishThreadThreadLastPostAuthor.mobileBind = mobileBind;
  }
  final bool? emailBind = jsonConvert.convert<bool>(json['email_bind']);
  if (emailBind != null) {
    publishThreadThreadLastPostAuthor.emailBind = emailBind;
  }
  final bool? sinaBind = jsonConvert.convert<bool>(json['sina_bind']);
  if (sinaBind != null) {
    publishThreadThreadLastPostAuthor.sinaBind = sinaBind;
  }
  final bool? weixinBind = jsonConvert.convert<bool>(json['weixin_bind']);
  if (weixinBind != null) {
    publishThreadThreadLastPostAuthor.weixinBind = weixinBind;
  }
  final bool? isTenYear = jsonConvert.convert<bool>(json['is_ten_year']);
  if (isTenYear != null) {
    publishThreadThreadLastPostAuthor.isTenYear = isTenYear;
  }
  final bool? shiJiaShangJia = jsonConvert.convert<bool>(
      json['shi_jia_shang_jia']);
  if (shiJiaShangJia != null) {
    publishThreadThreadLastPostAuthor.shiJiaShangJia = shiJiaShangJia;
  }
  final String? shiJiaShangJiaDesc = jsonConvert.convert<String>(
      json['shi_jia_shang_jia_desc']);
  if (shiJiaShangJiaDesc != null) {
    publishThreadThreadLastPostAuthor.shiJiaShangJiaDesc = shiJiaShangJiaDesc;
  }
  final bool? isSecurity = jsonConvert.convert<bool>(json['is_security']);
  if (isSecurity != null) {
    publishThreadThreadLastPostAuthor.isSecurity = isSecurity;
  }
  final bool? isAbnormal = jsonConvert.convert<bool>(json['is_abnormal']);
  if (isAbnormal != null) {
    publishThreadThreadLastPostAuthor.isAbnormal = isAbnormal;
  }
  final bool? appUser = jsonConvert.convert<bool>(json['app_user']);
  if (appUser != null) {
    publishThreadThreadLastPostAuthor.appUser = appUser;
  }
  final String? infoProgress = jsonConvert.convert<String>(
      json['info_progress']);
  if (infoProgress != null) {
    publishThreadThreadLastPostAuthor.infoProgress = infoProgress;
  }
  final String? userType = jsonConvert.convert<String>(json['user_type']);
  if (userType != null) {
    publishThreadThreadLastPostAuthor.userType = userType;
  }
  return publishThreadThreadLastPostAuthor;
}

Map<String, dynamic> $PublishThreadThreadLastPostAuthorToJson(
    PublishThreadThreadLastPostAuthor entity) {
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
  data['gender'] = entity.gender;
  data['gender_private'] = entity.genderPrivate;
  data['life_stage'] = entity.lifeStage;
  data['sign'] = entity.sign;
  data['address'] = entity.address;
  data['birthday'] = entity.birthday;
  data['threads'] = entity.threads;
  data['posts'] = entity.posts;
  data['attend_count'] = entity.attendCount;
  data['fans_count'] = entity.fansCount;
  data['rate_num'] = entity.rateNum;
  data['mobile'] = entity.mobile;
  data['color'] = entity.color;
  data['medals'] = entity.medals.map((v) => v.toJson()).toList();
  data['prestige'] = entity.prestige;
  data['reg_time'] = entity.regTime;
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

extension PublishThreadThreadLastPostAuthorExtension on PublishThreadThreadLastPostAuthor {
  PublishThreadThreadLastPostAuthor copyWith({
    String? uid,
    String? userName,
    String? searchUserName,
    String? oldUserName,
    PublishThreadThreadLastPostAuthorGroup? group,
    String? avatar,
    String? verifyNew,
    String? verifyDesc,
    String? originalAvatar,
    String? smallAvatar,
    String? gender,
    String? genderPrivate,
    String? lifeStage,
    String? sign,
    String? address,
    String? birthday,
    String? threads,
    String? posts,
    String? attendCount,
    String? fansCount,
    String? rateNum,
    String? mobile,
    String? color,
    List<PublishThreadThreadLastPostAuthorMedals>? medals,
    String? prestige,
    String? regTime,
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
    return PublishThreadThreadLastPostAuthor()
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
      ..gender = gender ?? this.gender
      ..genderPrivate = genderPrivate ?? this.genderPrivate
      ..lifeStage = lifeStage ?? this.lifeStage
      ..sign = sign ?? this.sign
      ..address = address ?? this.address
      ..birthday = birthday ?? this.birthday
      ..threads = threads ?? this.threads
      ..posts = posts ?? this.posts
      ..attendCount = attendCount ?? this.attendCount
      ..fansCount = fansCount ?? this.fansCount
      ..rateNum = rateNum ?? this.rateNum
      ..mobile = mobile ?? this.mobile
      ..color = color ?? this.color
      ..medals = medals ?? this.medals
      ..prestige = prestige ?? this.prestige
      ..regTime = regTime ?? this.regTime
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

PublishThreadThreadLastPostAuthorGroup $PublishThreadThreadLastPostAuthorGroupFromJson(
    Map<String, dynamic> json) {
  final PublishThreadThreadLastPostAuthorGroup publishThreadThreadLastPostAuthorGroup = PublishThreadThreadLastPostAuthorGroup();
  final String? gid = jsonConvert.convert<String>(json['gid']);
  if (gid != null) {
    publishThreadThreadLastPostAuthorGroup.gid = gid;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    publishThreadThreadLastPostAuthorGroup.name = name;
  }
  final String? category = jsonConvert.convert<String>(json['category']);
  if (category != null) {
    publishThreadThreadLastPostAuthorGroup.category = category;
  }
  final String? rank = jsonConvert.convert<String>(json['rank']);
  if (rank != null) {
    publishThreadThreadLastPostAuthorGroup.rank = rank;
  }
  final String? picture = jsonConvert.convert<String>(json['picture']);
  if (picture != null) {
    publishThreadThreadLastPostAuthorGroup.picture = picture;
  }
  return publishThreadThreadLastPostAuthorGroup;
}

Map<String, dynamic> $PublishThreadThreadLastPostAuthorGroupToJson(
    PublishThreadThreadLastPostAuthorGroup entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['gid'] = entity.gid;
  data['name'] = entity.name;
  data['category'] = entity.category;
  data['rank'] = entity.rank;
  data['picture'] = entity.picture;
  return data;
}

extension PublishThreadThreadLastPostAuthorGroupExtension on PublishThreadThreadLastPostAuthorGroup {
  PublishThreadThreadLastPostAuthorGroup copyWith({
    String? gid,
    String? name,
    String? category,
    String? rank,
    String? picture,
  }) {
    return PublishThreadThreadLastPostAuthorGroup()
      ..gid = gid ?? this.gid
      ..name = name ?? this.name
      ..category = category ?? this.category
      ..rank = rank ?? this.rank
      ..picture = picture ?? this.picture;
  }
}

PublishThreadThreadLastPostAuthorMedals $PublishThreadThreadLastPostAuthorMedalsFromJson(
    Map<String, dynamic> json) {
  final PublishThreadThreadLastPostAuthorMedals publishThreadThreadLastPostAuthorMedals = PublishThreadThreadLastPostAuthorMedals();
  final String? id = jsonConvert.convert<String>(json['id']);
  if (id != null) {
    publishThreadThreadLastPostAuthorMedals.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    publishThreadThreadLastPostAuthorMedals.name = name;
  }
  final String? requireValue = jsonConvert.convert<String>(
      json['require_value']);
  if (requireValue != null) {
    publishThreadThreadLastPostAuthorMedals.requireValue = requireValue;
  }
  final String? requireDays = jsonConvert.convert<String>(json['require_days']);
  if (requireDays != null) {
    publishThreadThreadLastPostAuthorMedals.requireDays = requireDays;
  }
  final String? iconUrl = jsonConvert.convert<String>(json['icon_url']);
  if (iconUrl != null) {
    publishThreadThreadLastPostAuthorMedals.iconUrl = iconUrl;
  }
  final String? colorIconUrl = jsonConvert.convert<String>(
      json['color_icon_url']);
  if (colorIconUrl != null) {
    publishThreadThreadLastPostAuthorMedals.colorIconUrl = colorIconUrl;
  }
  final String? tuwenIconUrl = jsonConvert.convert<String>(
      json['tuwen_icon_url']);
  if (tuwenIconUrl != null) {
    publishThreadThreadLastPostAuthorMedals.tuwenIconUrl = tuwenIconUrl;
  }
  final String? description = jsonConvert.convert<String>(json['description']);
  if (description != null) {
    publishThreadThreadLastPostAuthorMedals.description = description;
  }
  final String? cityId = jsonConvert.convert<String>(json['city_id']);
  if (cityId != null) {
    publishThreadThreadLastPostAuthorMedals.cityId = cityId;
  }
  final String? groupId = jsonConvert.convert<String>(json['group_id']);
  if (groupId != null) {
    publishThreadThreadLastPostAuthorMedals.groupId = groupId;
  }
  final String? sortId = jsonConvert.convert<String>(json['sort_id']);
  if (sortId != null) {
    publishThreadThreadLastPostAuthorMedals.sortId = sortId;
  }
  final bool? awarded = jsonConvert.convert<bool>(json['awarded']);
  if (awarded != null) {
    publishThreadThreadLastPostAuthorMedals.awarded = awarded;
  }
  final bool? isNew = jsonConvert.convert<bool>(json['is_new']);
  if (isNew != null) {
    publishThreadThreadLastPostAuthorMedals.isNew = isNew;
  }
  final bool? online = jsonConvert.convert<bool>(json['online']);
  if (online != null) {
    publishThreadThreadLastPostAuthorMedals.online = online;
  }
  final String? groupName = jsonConvert.convert<String>(json['group_name']);
  if (groupName != null) {
    publishThreadThreadLastPostAuthorMedals.groupName = groupName;
  }
  final bool? wearing = jsonConvert.convert<bool>(json['wearing']);
  if (wearing != null) {
    publishThreadThreadLastPostAuthorMedals.wearing = wearing;
  }
  final bool? growing = jsonConvert.convert<bool>(json['growing']);
  if (growing != null) {
    publishThreadThreadLastPostAuthorMedals.growing = growing;
  }
  final String? createdAt = jsonConvert.convert<String>(json['created_at']);
  if (createdAt != null) {
    publishThreadThreadLastPostAuthorMedals.createdAt = createdAt;
  }
  final String? updatedAt = jsonConvert.convert<String>(json['updated_at']);
  if (updatedAt != null) {
    publishThreadThreadLastPostAuthorMedals.updatedAt = updatedAt;
  }
  final String? actionId = jsonConvert.convert<String>(json['action_id']);
  if (actionId != null) {
    publishThreadThreadLastPostAuthorMedals.actionId = actionId;
  }
  final String? statisticsType = jsonConvert.convert<String>(
      json['statistics_type']);
  if (statisticsType != null) {
    publishThreadThreadLastPostAuthorMedals.statisticsType = statisticsType;
  }
  final String? buttonName = jsonConvert.convert<String>(json['button_name']);
  if (buttonName != null) {
    publishThreadThreadLastPostAuthorMedals.buttonName = buttonName;
  }
  final bool? buttonDisplay = jsonConvert.convert<bool>(json['button_display']);
  if (buttonDisplay != null) {
    publishThreadThreadLastPostAuthorMedals.buttonDisplay = buttonDisplay;
  }
  final String? linkUrl = jsonConvert.convert<String>(json['link_url']);
  if (linkUrl != null) {
    publishThreadThreadLastPostAuthorMedals.linkUrl = linkUrl;
  }
  final String? value = jsonConvert.convert<String>(json['value']);
  if (value != null) {
    publishThreadThreadLastPostAuthorMedals.value = value;
  }
  final String? sourceId = jsonConvert.convert<String>(json['source_id']);
  if (sourceId != null) {
    publishThreadThreadLastPostAuthorMedals.sourceId = sourceId;
  }
  final String? fid = jsonConvert.convert<String>(json['fid']);
  if (fid != null) {
    publishThreadThreadLastPostAuthorMedals.fid = fid;
  }
  final String? groupStatus = jsonConvert.convert<String>(json['group_status']);
  if (groupStatus != null) {
    publishThreadThreadLastPostAuthorMedals.groupStatus = groupStatus;
  }
  final bool? autoWearing = jsonConvert.convert<bool>(json['auto_wearing']);
  if (autoWearing != null) {
    publishThreadThreadLastPostAuthorMedals.autoWearing = autoWearing;
  }
  final bool? linkDisplay = jsonConvert.convert<bool>(json['link_display']);
  if (linkDisplay != null) {
    publishThreadThreadLastPostAuthorMedals.linkDisplay = linkDisplay;
  }
  return publishThreadThreadLastPostAuthorMedals;
}

Map<String, dynamic> $PublishThreadThreadLastPostAuthorMedalsToJson(
    PublishThreadThreadLastPostAuthorMedals entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['name'] = entity.name;
  data['require_value'] = entity.requireValue;
  data['require_days'] = entity.requireDays;
  data['icon_url'] = entity.iconUrl;
  data['color_icon_url'] = entity.colorIconUrl;
  data['tuwen_icon_url'] = entity.tuwenIconUrl;
  data['description'] = entity.description;
  data['city_id'] = entity.cityId;
  data['group_id'] = entity.groupId;
  data['sort_id'] = entity.sortId;
  data['awarded'] = entity.awarded;
  data['is_new'] = entity.isNew;
  data['online'] = entity.online;
  data['group_name'] = entity.groupName;
  data['wearing'] = entity.wearing;
  data['growing'] = entity.growing;
  data['created_at'] = entity.createdAt;
  data['updated_at'] = entity.updatedAt;
  data['action_id'] = entity.actionId;
  data['statistics_type'] = entity.statisticsType;
  data['button_name'] = entity.buttonName;
  data['button_display'] = entity.buttonDisplay;
  data['link_url'] = entity.linkUrl;
  data['value'] = entity.value;
  data['source_id'] = entity.sourceId;
  data['fid'] = entity.fid;
  data['group_status'] = entity.groupStatus;
  data['auto_wearing'] = entity.autoWearing;
  data['link_display'] = entity.linkDisplay;
  return data;
}

extension PublishThreadThreadLastPostAuthorMedalsExtension on PublishThreadThreadLastPostAuthorMedals {
  PublishThreadThreadLastPostAuthorMedals copyWith({
    String? id,
    String? name,
    String? requireValue,
    String? requireDays,
    String? iconUrl,
    String? colorIconUrl,
    String? tuwenIconUrl,
    String? description,
    String? cityId,
    String? groupId,
    String? sortId,
    bool? awarded,
    bool? isNew,
    bool? online,
    String? groupName,
    bool? wearing,
    bool? growing,
    String? createdAt,
    String? updatedAt,
    String? actionId,
    String? statisticsType,
    String? buttonName,
    bool? buttonDisplay,
    String? linkUrl,
    String? value,
    String? sourceId,
    String? fid,
    String? groupStatus,
    bool? autoWearing,
    bool? linkDisplay,
  }) {
    return PublishThreadThreadLastPostAuthorMedals()
      ..id = id ?? this.id
      ..name = name ?? this.name
      ..requireValue = requireValue ?? this.requireValue
      ..requireDays = requireDays ?? this.requireDays
      ..iconUrl = iconUrl ?? this.iconUrl
      ..colorIconUrl = colorIconUrl ?? this.colorIconUrl
      ..tuwenIconUrl = tuwenIconUrl ?? this.tuwenIconUrl
      ..description = description ?? this.description
      ..cityId = cityId ?? this.cityId
      ..groupId = groupId ?? this.groupId
      ..sortId = sortId ?? this.sortId
      ..awarded = awarded ?? this.awarded
      ..isNew = isNew ?? this.isNew
      ..online = online ?? this.online
      ..groupName = groupName ?? this.groupName
      ..wearing = wearing ?? this.wearing
      ..growing = growing ?? this.growing
      ..createdAt = createdAt ?? this.createdAt
      ..updatedAt = updatedAt ?? this.updatedAt
      ..actionId = actionId ?? this.actionId
      ..statisticsType = statisticsType ?? this.statisticsType
      ..buttonName = buttonName ?? this.buttonName
      ..buttonDisplay = buttonDisplay ?? this.buttonDisplay
      ..linkUrl = linkUrl ?? this.linkUrl
      ..value = value ?? this.value
      ..sourceId = sourceId ?? this.sourceId
      ..fid = fid ?? this.fid
      ..groupStatus = groupStatus ?? this.groupStatus
      ..autoWearing = autoWearing ?? this.autoWearing
      ..linkDisplay = linkDisplay ?? this.linkDisplay;
  }
}

PublishThreadThreadLastPostAttachment $PublishThreadThreadLastPostAttachmentFromJson(
    Map<String, dynamic> json) {
  final PublishThreadThreadLastPostAttachment publishThreadThreadLastPostAttachment = PublishThreadThreadLastPostAttachment();
  final String? aid = jsonConvert.convert<String>(json['aid']);
  if (aid != null) {
    publishThreadThreadLastPostAttachment.aid = aid;
  }
  final String? origFileName = jsonConvert.convert<String>(
      json['orig_file_name']);
  if (origFileName != null) {
    publishThreadThreadLastPostAttachment.origFileName = origFileName;
  }
  final String? fileType = jsonConvert.convert<String>(json['file_type']);
  if (fileType != null) {
    publishThreadThreadLastPostAttachment.fileType = fileType;
  }
  final String? description = jsonConvert.convert<String>(json['description']);
  if (description != null) {
    publishThreadThreadLastPostAttachment.description = description;
  }
  final String? filesize = jsonConvert.convert<String>(json['filesize']);
  if (filesize != null) {
    publishThreadThreadLastPostAttachment.filesize = filesize;
  }
  final String? downloads = jsonConvert.convert<String>(json['downloads']);
  if (downloads != null) {
    publishThreadThreadLastPostAttachment.downloads = downloads;
  }
  final bool? isImage = jsonConvert.convert<bool>(json['is_image']);
  if (isImage != null) {
    publishThreadThreadLastPostAttachment.isImage = isImage;
  }
  final String? uri = jsonConvert.convert<String>(json['uri']);
  if (uri != null) {
    publishThreadThreadLastPostAttachment.uri = uri;
  }
  final String? origUrl = jsonConvert.convert<String>(json['orig_url']);
  if (origUrl != null) {
    publishThreadThreadLastPostAttachment.origUrl = origUrl;
  }
  final String? middleUrl = jsonConvert.convert<String>(json['middle_url']);
  if (middleUrl != null) {
    publishThreadThreadLastPostAttachment.middleUrl = middleUrl;
  }
  final String? thumbUrl = jsonConvert.convert<String>(json['thumb_url']);
  if (thumbUrl != null) {
    publishThreadThreadLastPostAttachment.thumbUrl = thumbUrl;
  }
  final String? hasSticker = jsonConvert.convert<String>(json['has_sticker']);
  if (hasSticker != null) {
    publishThreadThreadLastPostAttachment.hasSticker = hasSticker;
  }
  final String? fileUri = jsonConvert.convert<String>(json['file_uri']);
  if (fileUri != null) {
    publishThreadThreadLastPostAttachment.fileUri = fileUri;
  }
  final String? fileName = jsonConvert.convert<String>(json['file_name']);
  if (fileName != null) {
    publishThreadThreadLastPostAttachment.fileName = fileName;
  }
  return publishThreadThreadLastPostAttachment;
}

Map<String, dynamic> $PublishThreadThreadLastPostAttachmentToJson(
    PublishThreadThreadLastPostAttachment entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['aid'] = entity.aid;
  data['orig_file_name'] = entity.origFileName;
  data['file_type'] = entity.fileType;
  data['description'] = entity.description;
  data['filesize'] = entity.filesize;
  data['downloads'] = entity.downloads;
  data['is_image'] = entity.isImage;
  data['uri'] = entity.uri;
  data['orig_url'] = entity.origUrl;
  data['middle_url'] = entity.middleUrl;
  data['thumb_url'] = entity.thumbUrl;
  data['has_sticker'] = entity.hasSticker;
  data['file_uri'] = entity.fileUri;
  data['file_name'] = entity.fileName;
  return data;
}

extension PublishThreadThreadLastPostAttachmentExtension on PublishThreadThreadLastPostAttachment {
  PublishThreadThreadLastPostAttachment copyWith({
    String? aid,
    String? origFileName,
    String? fileType,
    String? description,
    String? filesize,
    String? downloads,
    bool? isImage,
    String? uri,
    String? origUrl,
    String? middleUrl,
    String? thumbUrl,
    String? hasSticker,
    String? fileUri,
    String? fileName,
  }) {
    return PublishThreadThreadLastPostAttachment()
      ..aid = aid ?? this.aid
      ..origFileName = origFileName ?? this.origFileName
      ..fileType = fileType ?? this.fileType
      ..description = description ?? this.description
      ..filesize = filesize ?? this.filesize
      ..downloads = downloads ?? this.downloads
      ..isImage = isImage ?? this.isImage
      ..uri = uri ?? this.uri
      ..origUrl = origUrl ?? this.origUrl
      ..middleUrl = middleUrl ?? this.middleUrl
      ..thumbUrl = thumbUrl ?? this.thumbUrl
      ..hasSticker = hasSticker ?? this.hasSticker
      ..fileUri = fileUri ?? this.fileUri
      ..fileName = fileName ?? this.fileName;
  }
}

PublishThreadPost $PublishThreadPostFromJson(Map<String, dynamic> json) {
  final PublishThreadPost publishThreadPost = PublishThreadPost();
  final String? pid = jsonConvert.convert<String>(json['pid']);
  if (pid != null) {
    publishThreadPost.pid = pid;
  }
  final bool? isFirst = jsonConvert.convert<bool>(json['is_first']);
  if (isFirst != null) {
    publishThreadPost.isFirst = isFirst;
  }
  final bool? isWater = jsonConvert.convert<bool>(json['is_water']);
  if (isWater != null) {
    publishThreadPost.isWater = isWater;
  }
  final PublishThreadPostAuthor? author = jsonConvert.convert<
      PublishThreadPostAuthor>(json['author']);
  if (author != null) {
    publishThreadPost.author = author;
  }
  final String? subject = jsonConvert.convert<String>(json['subject']);
  if (subject != null) {
    publishThreadPost.subject = subject;
  }
  final String? message = jsonConvert.convert<String>(json['message']);
  if (message != null) {
    publishThreadPost.message = message;
  }
  final String? shareBbcodeMessage = jsonConvert.convert<String>(
      json['share_bbcode_message']);
  if (shareBbcodeMessage != null) {
    publishThreadPost.shareBbcodeMessage = shareBbcodeMessage;
  }
  final String? parentPid = jsonConvert.convert<String>(json['parent_pid']);
  if (parentPid != null) {
    publishThreadPost.parentPid = parentPid;
  }
  final String? replyPid = jsonConvert.convert<String>(json['reply_pid']);
  if (replyPid != null) {
    publishThreadPost.replyPid = replyPid;
  }
  final String? replyUid = jsonConvert.convert<String>(json['reply_uid']);
  if (replyUid != null) {
    publishThreadPost.replyUid = replyUid;
  }
  final String? replyUserName = jsonConvert.convert<String>(
      json['reply_user_name']);
  if (replyUserName != null) {
    publishThreadPost.replyUserName = replyUserName;
  }
  final String? warnMessage = jsonConvert.convert<String>(json['warn_message']);
  if (warnMessage != null) {
    publishThreadPost.warnMessage = warnMessage;
  }
  final String? editMessage = jsonConvert.convert<String>(json['edit_message']);
  if (editMessage != null) {
    publishThreadPost.editMessage = editMessage;
  }
  final bool? htmlon = jsonConvert.convert<bool>(json['htmlon']);
  if (htmlon != null) {
    publishThreadPost.htmlon = htmlon;
  }
  final bool? holdAttachment = jsonConvert.convert<bool>(
      json['hold_attachment']);
  if (holdAttachment != null) {
    publishThreadPost.holdAttachment = holdAttachment;
  }
  final List<
      PublishThreadPostAttachment>? attachment = (json['attachment'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<PublishThreadPostAttachment>(
          e) as PublishThreadPostAttachment).toList();
  if (attachment != null) {
    publishThreadPost.attachment = attachment;
  }
  final bool? holdRefer = jsonConvert.convert<bool>(json['hold_refer']);
  if (holdRefer != null) {
    publishThreadPost.holdRefer = holdRefer;
  }
  final bool? goodReply = jsonConvert.convert<bool>(json['good_reply']);
  if (goodReply != null) {
    publishThreadPost.goodReply = goodReply;
  }
  final bool? holdRate = jsonConvert.convert<bool>(json['hold_rate']);
  if (holdRate != null) {
    publishThreadPost.holdRate = holdRate;
  }
  final bool? ratePk = jsonConvert.convert<bool>(json['rate_pk']);
  if (ratePk != null) {
    publishThreadPost.ratePk = ratePk;
  }
  final String? source = jsonConvert.convert<String>(json['source']);
  if (source != null) {
    publishThreadPost.source = source;
  }
  final String? createdAt = jsonConvert.convert<String>(json['created_at']);
  if (createdAt != null) {
    publishThreadPost.createdAt = createdAt;
  }
  final String? updatedAt = jsonConvert.convert<String>(json['updated_at']);
  if (updatedAt != null) {
    publishThreadPost.updatedAt = updatedAt;
  }
  final bool? hasRichText = jsonConvert.convert<bool>(json['has_rich_text']);
  if (hasRichText != null) {
    publishThreadPost.hasRichText = hasRichText;
  }
  final String? status = jsonConvert.convert<String>(json['status']);
  if (status != null) {
    publishThreadPost.status = status;
  }
  final bool? auditFirst = jsonConvert.convert<bool>(json['audit_first']);
  if (auditFirst != null) {
    publishThreadPost.auditFirst = auditFirst;
  }
  return publishThreadPost;
}

Map<String, dynamic> $PublishThreadPostToJson(PublishThreadPost entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['pid'] = entity.pid;
  data['is_first'] = entity.isFirst;
  data['is_water'] = entity.isWater;
  data['author'] = entity.author.toJson();
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
  data['attachment'] = entity.attachment.map((v) => v.toJson()).toList();
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

extension PublishThreadPostExtension on PublishThreadPost {
  PublishThreadPost copyWith({
    String? pid,
    bool? isFirst,
    bool? isWater,
    PublishThreadPostAuthor? author,
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
    List<PublishThreadPostAttachment>? attachment,
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
    return PublishThreadPost()
      ..pid = pid ?? this.pid
      ..isFirst = isFirst ?? this.isFirst
      ..isWater = isWater ?? this.isWater
      ..author = author ?? this.author
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
      ..attachment = attachment ?? this.attachment
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

PublishThreadPostAuthor $PublishThreadPostAuthorFromJson(
    Map<String, dynamic> json) {
  final PublishThreadPostAuthor publishThreadPostAuthor = PublishThreadPostAuthor();
  final String? uid = jsonConvert.convert<String>(json['uid']);
  if (uid != null) {
    publishThreadPostAuthor.uid = uid;
  }
  final String? userName = jsonConvert.convert<String>(json['user_name']);
  if (userName != null) {
    publishThreadPostAuthor.userName = userName;
  }
  final String? searchUserName = jsonConvert.convert<String>(
      json['search_user_name']);
  if (searchUserName != null) {
    publishThreadPostAuthor.searchUserName = searchUserName;
  }
  final String? oldUserName = jsonConvert.convert<String>(
      json['old_user_name']);
  if (oldUserName != null) {
    publishThreadPostAuthor.oldUserName = oldUserName;
  }
  final PublishThreadPostAuthorGroup? group = jsonConvert.convert<
      PublishThreadPostAuthorGroup>(json['group']);
  if (group != null) {
    publishThreadPostAuthor.group = group;
  }
  final String? avatar = jsonConvert.convert<String>(json['avatar']);
  if (avatar != null) {
    publishThreadPostAuthor.avatar = avatar;
  }
  final String? verifyNew = jsonConvert.convert<String>(json['verify_new']);
  if (verifyNew != null) {
    publishThreadPostAuthor.verifyNew = verifyNew;
  }
  final String? verifyDesc = jsonConvert.convert<String>(json['verify_desc']);
  if (verifyDesc != null) {
    publishThreadPostAuthor.verifyDesc = verifyDesc;
  }
  final String? originalAvatar = jsonConvert.convert<String>(
      json['original_avatar']);
  if (originalAvatar != null) {
    publishThreadPostAuthor.originalAvatar = originalAvatar;
  }
  final String? smallAvatar = jsonConvert.convert<String>(json['small_avatar']);
  if (smallAvatar != null) {
    publishThreadPostAuthor.smallAvatar = smallAvatar;
  }
  final String? gender = jsonConvert.convert<String>(json['gender']);
  if (gender != null) {
    publishThreadPostAuthor.gender = gender;
  }
  final String? genderPrivate = jsonConvert.convert<String>(
      json['gender_private']);
  if (genderPrivate != null) {
    publishThreadPostAuthor.genderPrivate = genderPrivate;
  }
  final String? lifeStage = jsonConvert.convert<String>(json['life_stage']);
  if (lifeStage != null) {
    publishThreadPostAuthor.lifeStage = lifeStage;
  }
  final String? sign = jsonConvert.convert<String>(json['sign']);
  if (sign != null) {
    publishThreadPostAuthor.sign = sign;
  }
  final String? address = jsonConvert.convert<String>(json['address']);
  if (address != null) {
    publishThreadPostAuthor.address = address;
  }
  final String? birthday = jsonConvert.convert<String>(json['birthday']);
  if (birthday != null) {
    publishThreadPostAuthor.birthday = birthday;
  }
  final String? threads = jsonConvert.convert<String>(json['threads']);
  if (threads != null) {
    publishThreadPostAuthor.threads = threads;
  }
  final String? posts = jsonConvert.convert<String>(json['posts']);
  if (posts != null) {
    publishThreadPostAuthor.posts = posts;
  }
  final String? attendCount = jsonConvert.convert<String>(json['attend_count']);
  if (attendCount != null) {
    publishThreadPostAuthor.attendCount = attendCount;
  }
  final String? fansCount = jsonConvert.convert<String>(json['fans_count']);
  if (fansCount != null) {
    publishThreadPostAuthor.fansCount = fansCount;
  }
  final String? rateNum = jsonConvert.convert<String>(json['rate_num']);
  if (rateNum != null) {
    publishThreadPostAuthor.rateNum = rateNum;
  }
  final String? mobile = jsonConvert.convert<String>(json['mobile']);
  if (mobile != null) {
    publishThreadPostAuthor.mobile = mobile;
  }
  final String? color = jsonConvert.convert<String>(json['color']);
  if (color != null) {
    publishThreadPostAuthor.color = color;
  }
  final List<PublishThreadPostAuthorMedals>? medals = (json['medals'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<PublishThreadPostAuthorMedals>(
          e) as PublishThreadPostAuthorMedals).toList();
  if (medals != null) {
    publishThreadPostAuthor.medals = medals;
  }
  final String? prestige = jsonConvert.convert<String>(json['prestige']);
  if (prestige != null) {
    publishThreadPostAuthor.prestige = prestige;
  }
  final String? regTime = jsonConvert.convert<String>(json['reg_time']);
  if (regTime != null) {
    publishThreadPostAuthor.regTime = regTime;
  }
  final String? location = jsonConvert.convert<String>(json['location']);
  if (location != null) {
    publishThreadPostAuthor.location = location;
  }
  final String? verify = jsonConvert.convert<String>(json['verify']);
  if (verify != null) {
    publishThreadPostAuthor.verify = verify;
  }
  final String? highVerify = jsonConvert.convert<String>(json['high_verify']);
  if (highVerify != null) {
    publishThreadPostAuthor.highVerify = highVerify;
  }
  final String? highDesc = jsonConvert.convert<String>(json['high_desc']);
  if (highDesc != null) {
    publishThreadPostAuthor.highDesc = highDesc;
  }
  final String? honourVerify = jsonConvert.convert<String>(
      json['honour_verify']);
  if (honourVerify != null) {
    publishThreadPostAuthor.honourVerify = honourVerify;
  }
  final String? honourDesc = jsonConvert.convert<String>(json['honour_desc']);
  if (honourDesc != null) {
    publishThreadPostAuthor.honourDesc = honourDesc;
  }
  final String? realVerify = jsonConvert.convert<String>(json['real_verify']);
  if (realVerify != null) {
    publishThreadPostAuthor.realVerify = realVerify;
  }
  final String? atNum = jsonConvert.convert<String>(json['at_num']);
  if (atNum != null) {
    publishThreadPostAuthor.atNum = atNum;
  }
  final bool? active = jsonConvert.convert<bool>(json['active']);
  if (active != null) {
    publishThreadPostAuthor.active = active;
  }
  final bool? qqBind = jsonConvert.convert<bool>(json['qq_bind']);
  if (qqBind != null) {
    publishThreadPostAuthor.qqBind = qqBind;
  }
  final bool? qihooBind = jsonConvert.convert<bool>(json['qihoo_bind']);
  if (qihooBind != null) {
    publishThreadPostAuthor.qihooBind = qihooBind;
  }
  final bool? mobileBind = jsonConvert.convert<bool>(json['mobile_bind']);
  if (mobileBind != null) {
    publishThreadPostAuthor.mobileBind = mobileBind;
  }
  final bool? emailBind = jsonConvert.convert<bool>(json['email_bind']);
  if (emailBind != null) {
    publishThreadPostAuthor.emailBind = emailBind;
  }
  final bool? sinaBind = jsonConvert.convert<bool>(json['sina_bind']);
  if (sinaBind != null) {
    publishThreadPostAuthor.sinaBind = sinaBind;
  }
  final bool? weixinBind = jsonConvert.convert<bool>(json['weixin_bind']);
  if (weixinBind != null) {
    publishThreadPostAuthor.weixinBind = weixinBind;
  }
  final bool? isTenYear = jsonConvert.convert<bool>(json['is_ten_year']);
  if (isTenYear != null) {
    publishThreadPostAuthor.isTenYear = isTenYear;
  }
  final bool? shiJiaShangJia = jsonConvert.convert<bool>(
      json['shi_jia_shang_jia']);
  if (shiJiaShangJia != null) {
    publishThreadPostAuthor.shiJiaShangJia = shiJiaShangJia;
  }
  final String? shiJiaShangJiaDesc = jsonConvert.convert<String>(
      json['shi_jia_shang_jia_desc']);
  if (shiJiaShangJiaDesc != null) {
    publishThreadPostAuthor.shiJiaShangJiaDesc = shiJiaShangJiaDesc;
  }
  final bool? isSecurity = jsonConvert.convert<bool>(json['is_security']);
  if (isSecurity != null) {
    publishThreadPostAuthor.isSecurity = isSecurity;
  }
  final bool? isAbnormal = jsonConvert.convert<bool>(json['is_abnormal']);
  if (isAbnormal != null) {
    publishThreadPostAuthor.isAbnormal = isAbnormal;
  }
  final bool? appUser = jsonConvert.convert<bool>(json['app_user']);
  if (appUser != null) {
    publishThreadPostAuthor.appUser = appUser;
  }
  final String? infoProgress = jsonConvert.convert<String>(
      json['info_progress']);
  if (infoProgress != null) {
    publishThreadPostAuthor.infoProgress = infoProgress;
  }
  final String? userType = jsonConvert.convert<String>(json['user_type']);
  if (userType != null) {
    publishThreadPostAuthor.userType = userType;
  }
  return publishThreadPostAuthor;
}

Map<String, dynamic> $PublishThreadPostAuthorToJson(
    PublishThreadPostAuthor entity) {
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
  data['gender'] = entity.gender;
  data['gender_private'] = entity.genderPrivate;
  data['life_stage'] = entity.lifeStage;
  data['sign'] = entity.sign;
  data['address'] = entity.address;
  data['birthday'] = entity.birthday;
  data['threads'] = entity.threads;
  data['posts'] = entity.posts;
  data['attend_count'] = entity.attendCount;
  data['fans_count'] = entity.fansCount;
  data['rate_num'] = entity.rateNum;
  data['mobile'] = entity.mobile;
  data['color'] = entity.color;
  data['medals'] = entity.medals.map((v) => v.toJson()).toList();
  data['prestige'] = entity.prestige;
  data['reg_time'] = entity.regTime;
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

extension PublishThreadPostAuthorExtension on PublishThreadPostAuthor {
  PublishThreadPostAuthor copyWith({
    String? uid,
    String? userName,
    String? searchUserName,
    String? oldUserName,
    PublishThreadPostAuthorGroup? group,
    String? avatar,
    String? verifyNew,
    String? verifyDesc,
    String? originalAvatar,
    String? smallAvatar,
    String? gender,
    String? genderPrivate,
    String? lifeStage,
    String? sign,
    String? address,
    String? birthday,
    String? threads,
    String? posts,
    String? attendCount,
    String? fansCount,
    String? rateNum,
    String? mobile,
    String? color,
    List<PublishThreadPostAuthorMedals>? medals,
    String? prestige,
    String? regTime,
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
    return PublishThreadPostAuthor()
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
      ..gender = gender ?? this.gender
      ..genderPrivate = genderPrivate ?? this.genderPrivate
      ..lifeStage = lifeStage ?? this.lifeStage
      ..sign = sign ?? this.sign
      ..address = address ?? this.address
      ..birthday = birthday ?? this.birthday
      ..threads = threads ?? this.threads
      ..posts = posts ?? this.posts
      ..attendCount = attendCount ?? this.attendCount
      ..fansCount = fansCount ?? this.fansCount
      ..rateNum = rateNum ?? this.rateNum
      ..mobile = mobile ?? this.mobile
      ..color = color ?? this.color
      ..medals = medals ?? this.medals
      ..prestige = prestige ?? this.prestige
      ..regTime = regTime ?? this.regTime
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

PublishThreadPostAuthorGroup $PublishThreadPostAuthorGroupFromJson(
    Map<String, dynamic> json) {
  final PublishThreadPostAuthorGroup publishThreadPostAuthorGroup = PublishThreadPostAuthorGroup();
  final String? gid = jsonConvert.convert<String>(json['gid']);
  if (gid != null) {
    publishThreadPostAuthorGroup.gid = gid;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    publishThreadPostAuthorGroup.name = name;
  }
  final String? category = jsonConvert.convert<String>(json['category']);
  if (category != null) {
    publishThreadPostAuthorGroup.category = category;
  }
  final String? rank = jsonConvert.convert<String>(json['rank']);
  if (rank != null) {
    publishThreadPostAuthorGroup.rank = rank;
  }
  final String? picture = jsonConvert.convert<String>(json['picture']);
  if (picture != null) {
    publishThreadPostAuthorGroup.picture = picture;
  }
  return publishThreadPostAuthorGroup;
}

Map<String, dynamic> $PublishThreadPostAuthorGroupToJson(
    PublishThreadPostAuthorGroup entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['gid'] = entity.gid;
  data['name'] = entity.name;
  data['category'] = entity.category;
  data['rank'] = entity.rank;
  data['picture'] = entity.picture;
  return data;
}

extension PublishThreadPostAuthorGroupExtension on PublishThreadPostAuthorGroup {
  PublishThreadPostAuthorGroup copyWith({
    String? gid,
    String? name,
    String? category,
    String? rank,
    String? picture,
  }) {
    return PublishThreadPostAuthorGroup()
      ..gid = gid ?? this.gid
      ..name = name ?? this.name
      ..category = category ?? this.category
      ..rank = rank ?? this.rank
      ..picture = picture ?? this.picture;
  }
}

PublishThreadPostAuthorMedals $PublishThreadPostAuthorMedalsFromJson(
    Map<String, dynamic> json) {
  final PublishThreadPostAuthorMedals publishThreadPostAuthorMedals = PublishThreadPostAuthorMedals();
  final String? id = jsonConvert.convert<String>(json['id']);
  if (id != null) {
    publishThreadPostAuthorMedals.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    publishThreadPostAuthorMedals.name = name;
  }
  final String? requireValue = jsonConvert.convert<String>(
      json['require_value']);
  if (requireValue != null) {
    publishThreadPostAuthorMedals.requireValue = requireValue;
  }
  final String? requireDays = jsonConvert.convert<String>(json['require_days']);
  if (requireDays != null) {
    publishThreadPostAuthorMedals.requireDays = requireDays;
  }
  final String? iconUrl = jsonConvert.convert<String>(json['icon_url']);
  if (iconUrl != null) {
    publishThreadPostAuthorMedals.iconUrl = iconUrl;
  }
  final String? colorIconUrl = jsonConvert.convert<String>(
      json['color_icon_url']);
  if (colorIconUrl != null) {
    publishThreadPostAuthorMedals.colorIconUrl = colorIconUrl;
  }
  final String? tuwenIconUrl = jsonConvert.convert<String>(
      json['tuwen_icon_url']);
  if (tuwenIconUrl != null) {
    publishThreadPostAuthorMedals.tuwenIconUrl = tuwenIconUrl;
  }
  final String? description = jsonConvert.convert<String>(json['description']);
  if (description != null) {
    publishThreadPostAuthorMedals.description = description;
  }
  final String? cityId = jsonConvert.convert<String>(json['city_id']);
  if (cityId != null) {
    publishThreadPostAuthorMedals.cityId = cityId;
  }
  final String? groupId = jsonConvert.convert<String>(json['group_id']);
  if (groupId != null) {
    publishThreadPostAuthorMedals.groupId = groupId;
  }
  final String? sortId = jsonConvert.convert<String>(json['sort_id']);
  if (sortId != null) {
    publishThreadPostAuthorMedals.sortId = sortId;
  }
  final bool? awarded = jsonConvert.convert<bool>(json['awarded']);
  if (awarded != null) {
    publishThreadPostAuthorMedals.awarded = awarded;
  }
  final bool? isNew = jsonConvert.convert<bool>(json['is_new']);
  if (isNew != null) {
    publishThreadPostAuthorMedals.isNew = isNew;
  }
  final bool? online = jsonConvert.convert<bool>(json['online']);
  if (online != null) {
    publishThreadPostAuthorMedals.online = online;
  }
  final String? groupName = jsonConvert.convert<String>(json['group_name']);
  if (groupName != null) {
    publishThreadPostAuthorMedals.groupName = groupName;
  }
  final bool? wearing = jsonConvert.convert<bool>(json['wearing']);
  if (wearing != null) {
    publishThreadPostAuthorMedals.wearing = wearing;
  }
  final bool? growing = jsonConvert.convert<bool>(json['growing']);
  if (growing != null) {
    publishThreadPostAuthorMedals.growing = growing;
  }
  final String? createdAt = jsonConvert.convert<String>(json['created_at']);
  if (createdAt != null) {
    publishThreadPostAuthorMedals.createdAt = createdAt;
  }
  final String? updatedAt = jsonConvert.convert<String>(json['updated_at']);
  if (updatedAt != null) {
    publishThreadPostAuthorMedals.updatedAt = updatedAt;
  }
  final String? actionId = jsonConvert.convert<String>(json['action_id']);
  if (actionId != null) {
    publishThreadPostAuthorMedals.actionId = actionId;
  }
  final String? statisticsType = jsonConvert.convert<String>(
      json['statistics_type']);
  if (statisticsType != null) {
    publishThreadPostAuthorMedals.statisticsType = statisticsType;
  }
  final String? buttonName = jsonConvert.convert<String>(json['button_name']);
  if (buttonName != null) {
    publishThreadPostAuthorMedals.buttonName = buttonName;
  }
  final bool? buttonDisplay = jsonConvert.convert<bool>(json['button_display']);
  if (buttonDisplay != null) {
    publishThreadPostAuthorMedals.buttonDisplay = buttonDisplay;
  }
  final String? linkUrl = jsonConvert.convert<String>(json['link_url']);
  if (linkUrl != null) {
    publishThreadPostAuthorMedals.linkUrl = linkUrl;
  }
  final String? value = jsonConvert.convert<String>(json['value']);
  if (value != null) {
    publishThreadPostAuthorMedals.value = value;
  }
  final String? sourceId = jsonConvert.convert<String>(json['source_id']);
  if (sourceId != null) {
    publishThreadPostAuthorMedals.sourceId = sourceId;
  }
  final String? fid = jsonConvert.convert<String>(json['fid']);
  if (fid != null) {
    publishThreadPostAuthorMedals.fid = fid;
  }
  final String? groupStatus = jsonConvert.convert<String>(json['group_status']);
  if (groupStatus != null) {
    publishThreadPostAuthorMedals.groupStatus = groupStatus;
  }
  final bool? autoWearing = jsonConvert.convert<bool>(json['auto_wearing']);
  if (autoWearing != null) {
    publishThreadPostAuthorMedals.autoWearing = autoWearing;
  }
  final bool? linkDisplay = jsonConvert.convert<bool>(json['link_display']);
  if (linkDisplay != null) {
    publishThreadPostAuthorMedals.linkDisplay = linkDisplay;
  }
  return publishThreadPostAuthorMedals;
}

Map<String, dynamic> $PublishThreadPostAuthorMedalsToJson(
    PublishThreadPostAuthorMedals entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['name'] = entity.name;
  data['require_value'] = entity.requireValue;
  data['require_days'] = entity.requireDays;
  data['icon_url'] = entity.iconUrl;
  data['color_icon_url'] = entity.colorIconUrl;
  data['tuwen_icon_url'] = entity.tuwenIconUrl;
  data['description'] = entity.description;
  data['city_id'] = entity.cityId;
  data['group_id'] = entity.groupId;
  data['sort_id'] = entity.sortId;
  data['awarded'] = entity.awarded;
  data['is_new'] = entity.isNew;
  data['online'] = entity.online;
  data['group_name'] = entity.groupName;
  data['wearing'] = entity.wearing;
  data['growing'] = entity.growing;
  data['created_at'] = entity.createdAt;
  data['updated_at'] = entity.updatedAt;
  data['action_id'] = entity.actionId;
  data['statistics_type'] = entity.statisticsType;
  data['button_name'] = entity.buttonName;
  data['button_display'] = entity.buttonDisplay;
  data['link_url'] = entity.linkUrl;
  data['value'] = entity.value;
  data['source_id'] = entity.sourceId;
  data['fid'] = entity.fid;
  data['group_status'] = entity.groupStatus;
  data['auto_wearing'] = entity.autoWearing;
  data['link_display'] = entity.linkDisplay;
  return data;
}

extension PublishThreadPostAuthorMedalsExtension on PublishThreadPostAuthorMedals {
  PublishThreadPostAuthorMedals copyWith({
    String? id,
    String? name,
    String? requireValue,
    String? requireDays,
    String? iconUrl,
    String? colorIconUrl,
    String? tuwenIconUrl,
    String? description,
    String? cityId,
    String? groupId,
    String? sortId,
    bool? awarded,
    bool? isNew,
    bool? online,
    String? groupName,
    bool? wearing,
    bool? growing,
    String? createdAt,
    String? updatedAt,
    String? actionId,
    String? statisticsType,
    String? buttonName,
    bool? buttonDisplay,
    String? linkUrl,
    String? value,
    String? sourceId,
    String? fid,
    String? groupStatus,
    bool? autoWearing,
    bool? linkDisplay,
  }) {
    return PublishThreadPostAuthorMedals()
      ..id = id ?? this.id
      ..name = name ?? this.name
      ..requireValue = requireValue ?? this.requireValue
      ..requireDays = requireDays ?? this.requireDays
      ..iconUrl = iconUrl ?? this.iconUrl
      ..colorIconUrl = colorIconUrl ?? this.colorIconUrl
      ..tuwenIconUrl = tuwenIconUrl ?? this.tuwenIconUrl
      ..description = description ?? this.description
      ..cityId = cityId ?? this.cityId
      ..groupId = groupId ?? this.groupId
      ..sortId = sortId ?? this.sortId
      ..awarded = awarded ?? this.awarded
      ..isNew = isNew ?? this.isNew
      ..online = online ?? this.online
      ..groupName = groupName ?? this.groupName
      ..wearing = wearing ?? this.wearing
      ..growing = growing ?? this.growing
      ..createdAt = createdAt ?? this.createdAt
      ..updatedAt = updatedAt ?? this.updatedAt
      ..actionId = actionId ?? this.actionId
      ..statisticsType = statisticsType ?? this.statisticsType
      ..buttonName = buttonName ?? this.buttonName
      ..buttonDisplay = buttonDisplay ?? this.buttonDisplay
      ..linkUrl = linkUrl ?? this.linkUrl
      ..value = value ?? this.value
      ..sourceId = sourceId ?? this.sourceId
      ..fid = fid ?? this.fid
      ..groupStatus = groupStatus ?? this.groupStatus
      ..autoWearing = autoWearing ?? this.autoWearing
      ..linkDisplay = linkDisplay ?? this.linkDisplay;
  }
}

PublishThreadPostAttachment $PublishThreadPostAttachmentFromJson(
    Map<String, dynamic> json) {
  final PublishThreadPostAttachment publishThreadPostAttachment = PublishThreadPostAttachment();
  final String? aid = jsonConvert.convert<String>(json['aid']);
  if (aid != null) {
    publishThreadPostAttachment.aid = aid;
  }
  final String? origFileName = jsonConvert.convert<String>(
      json['orig_file_name']);
  if (origFileName != null) {
    publishThreadPostAttachment.origFileName = origFileName;
  }
  final String? fileType = jsonConvert.convert<String>(json['file_type']);
  if (fileType != null) {
    publishThreadPostAttachment.fileType = fileType;
  }
  final String? description = jsonConvert.convert<String>(json['description']);
  if (description != null) {
    publishThreadPostAttachment.description = description;
  }
  final String? filesize = jsonConvert.convert<String>(json['filesize']);
  if (filesize != null) {
    publishThreadPostAttachment.filesize = filesize;
  }
  final String? downloads = jsonConvert.convert<String>(json['downloads']);
  if (downloads != null) {
    publishThreadPostAttachment.downloads = downloads;
  }
  final bool? isImage = jsonConvert.convert<bool>(json['is_image']);
  if (isImage != null) {
    publishThreadPostAttachment.isImage = isImage;
  }
  final String? uri = jsonConvert.convert<String>(json['uri']);
  if (uri != null) {
    publishThreadPostAttachment.uri = uri;
  }
  final String? origUrl = jsonConvert.convert<String>(json['orig_url']);
  if (origUrl != null) {
    publishThreadPostAttachment.origUrl = origUrl;
  }
  final String? middleUrl = jsonConvert.convert<String>(json['middle_url']);
  if (middleUrl != null) {
    publishThreadPostAttachment.middleUrl = middleUrl;
  }
  final String? thumbUrl = jsonConvert.convert<String>(json['thumb_url']);
  if (thumbUrl != null) {
    publishThreadPostAttachment.thumbUrl = thumbUrl;
  }
  final String? hasSticker = jsonConvert.convert<String>(json['has_sticker']);
  if (hasSticker != null) {
    publishThreadPostAttachment.hasSticker = hasSticker;
  }
  final String? fileUri = jsonConvert.convert<String>(json['file_uri']);
  if (fileUri != null) {
    publishThreadPostAttachment.fileUri = fileUri;
  }
  final String? fileName = jsonConvert.convert<String>(json['file_name']);
  if (fileName != null) {
    publishThreadPostAttachment.fileName = fileName;
  }
  return publishThreadPostAttachment;
}

Map<String, dynamic> $PublishThreadPostAttachmentToJson(
    PublishThreadPostAttachment entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['aid'] = entity.aid;
  data['orig_file_name'] = entity.origFileName;
  data['file_type'] = entity.fileType;
  data['description'] = entity.description;
  data['filesize'] = entity.filesize;
  data['downloads'] = entity.downloads;
  data['is_image'] = entity.isImage;
  data['uri'] = entity.uri;
  data['orig_url'] = entity.origUrl;
  data['middle_url'] = entity.middleUrl;
  data['thumb_url'] = entity.thumbUrl;
  data['has_sticker'] = entity.hasSticker;
  data['file_uri'] = entity.fileUri;
  data['file_name'] = entity.fileName;
  return data;
}

extension PublishThreadPostAttachmentExtension on PublishThreadPostAttachment {
  PublishThreadPostAttachment copyWith({
    String? aid,
    String? origFileName,
    String? fileType,
    String? description,
    String? filesize,
    String? downloads,
    bool? isImage,
    String? uri,
    String? origUrl,
    String? middleUrl,
    String? thumbUrl,
    String? hasSticker,
    String? fileUri,
    String? fileName,
  }) {
    return PublishThreadPostAttachment()
      ..aid = aid ?? this.aid
      ..origFileName = origFileName ?? this.origFileName
      ..fileType = fileType ?? this.fileType
      ..description = description ?? this.description
      ..filesize = filesize ?? this.filesize
      ..downloads = downloads ?? this.downloads
      ..isImage = isImage ?? this.isImage
      ..uri = uri ?? this.uri
      ..origUrl = origUrl ?? this.origUrl
      ..middleUrl = middleUrl ?? this.middleUrl
      ..thumbUrl = thumbUrl ?? this.thumbUrl
      ..hasSticker = hasSticker ?? this.hasSticker
      ..fileUri = fileUri ?? this.fileUri
      ..fileName = fileName ?? this.fileName;
  }
}

PublishThreadCoinScore $PublishThreadCoinScoreFromJson(
    Map<String, dynamic> json) {
  final PublishThreadCoinScore publishThreadCoinScore = PublishThreadCoinScore();
  final String? score = jsonConvert.convert<String>(json['score']);
  if (score != null) {
    publishThreadCoinScore.score = score;
  }
  final String? coin = jsonConvert.convert<String>(json['coin']);
  if (coin != null) {
    publishThreadCoinScore.coin = coin;
  }
  return publishThreadCoinScore;
}

Map<String, dynamic> $PublishThreadCoinScoreToJson(
    PublishThreadCoinScore entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['score'] = entity.score;
  data['coin'] = entity.coin;
  return data;
}

extension PublishThreadCoinScoreExtension on PublishThreadCoinScore {
  PublishThreadCoinScore copyWith({
    String? score,
    String? coin,
  }) {
    return PublishThreadCoinScore()
      ..score = score ?? this.score
      ..coin = coin ?? this.coin;
  }
}