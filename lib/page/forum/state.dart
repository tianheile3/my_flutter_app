import 'package:flutter_study/common/global_state.dart';
import 'package:get/get.dart';

import '../../api/response/thread_page_entity.dart';
import '../../common/some_publish.dart';

class ForumState {
  late String fid;
  late String host;
  String cityName = GlobalState.instance.cityName;

  // 置顶帖展开/收缩状态
  RxBool isStickyPostsExpanded = false.obs;
  RxDouble appBarHeight = 0.0.obs;
  final List<ThreadPageThreadList> stickyPosts = <ThreadPageThreadList>[].obs;
  final RxList<ThreadPageThreadList> showStickPosts =
      <ThreadPageThreadList>[].obs;
  final RxList<ThreadPageThreadList> threads = <ThreadPageThreadList>[].obs;
  ThreadPageForumInfo forumInfo = ThreadPageForumInfo();

  var page = 1;
  Rx<LoadState> loadState = LoadState.refreshing.obs;
  int showTimeType = 1; //0-最新发帖(用发帖时间),1-最新回复 (用更新时间), 2-热帖 (用更新时间)

  ForumState();
}
