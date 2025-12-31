import 'dart:convert';

import 'package:easy_refresh/easy_refresh.dart';
import 'package:flutter_study/api/api_client.dart';
import 'package:flutter_study/api/network_manager.dart';
import 'package:flutter_study/common/some_publish.dart';
import 'package:flutter_study/models/extra_entity.dart';
import 'package:flutter_study/utils/date_tools.dart';
import 'package:get/get.dart';

import 'state.dart';

class ForumLogic extends BaseController {
  final ForumState state = ForumState();
  final EasyRefreshController controller = EasyRefreshController(
    controlFinishRefresh: true,
    controlFinishLoad: true,
  );

  late final ApiClient otherApi;

  @override
  void onInit() {
    super.onInit();
    var map = Get.arguments;
    state.fid = map['fid'] ?? "";
    state.host = map['host'] ?? "www.19lou.com";
    if (state.fid.isEmpty) {
      return;
    }
    otherApi = NetworkManager().withOtherBaseUrl("https://${state.host}");
    onRefresh();
  }

  @override
  void onClose() {
    controller.dispose();
    super.onClose();
  }

  Future<void> onRefresh() async {
    state.page = 1;
    state.stickyPosts.clear();
    state.threads.clear();
    state.loadState.value = LoadState.refreshing;
    controller.resetFooter();
    try {
      await getData(true);
      _calculateAppBarHeight();
      state.loadState.value = LoadState.success;
    } catch (e) {
      errorMessage.value = "加载失败：$e";
      state.loadState.value = LoadState.failed;
      controller.finishRefresh(IndicatorResult.fail);
    }
  }

  Future<void> onLoadMore() async {
    try {
      await getData(false);
    } catch (e) {
      logger.d("加载失败$e");
      controller.finishLoad(IndicatorResult.fail);
    }
  }

  Future<void> getData(bool isRefresh) async {
    final res = await otherApi.getThreadPage(fid: state.fid, page: state.page);
    if (res == null) {
      return;
    }
    if (isRefresh) {
      state.forumInfo = res.forumInfo;
      if (res.stickThreadList?.isNotEmpty ?? false) {
        state.stickyPosts.addAll(res.stickThreadList!);
      }
    }
    if (res.threadList?.isNotEmpty ?? false) {
      for (var item in res.threadList!) {
        if (item.extra.isNotEmpty) {
          final extra = ExtraEntity.fromJson(json.decode(item.extra));
          if (extra.imageUrls.isNotEmpty) {
            final images = extra.imageUrls.split(",");
            item.images.addAll(images);
          }
        }
        state.threads.add(item);
      }
    }
    state.page++;

    bool noMore = res.page * res.perPage >= res.totalCount;
    setFinishState(noMore, isRefresh);
  }

  void setFinishState(bool noMore, bool isRefresh) {
    if (isRefresh) {
      controller.finishRefresh(IndicatorResult.success);
      if (noMore) {
        controller.finishLoad(IndicatorResult.noMore);
      }
    } else {
      controller.finishLoad(
        noMore ? IndicatorResult.noMore : IndicatorResult.success,
      );
    }
  }

  // 计算SliverAppBar的动态高度
  void _calculateAppBarHeight() {
    // 基本俱乐部信息高度（AppBar标题高度 + 俱乐部信息内容高度）
    const double baseHeight = 56.0 + 96.0; // 56.0是AppBar标题高度，97.0是俱乐部信息内容高度
    // 每条置顶帖高度
    const double stickyPostHeight = 38.0;
    // 置顶帖区域高度
    double stickyAreaHeight = 0.0;
    state.showStickPosts.clear();
    if (state.stickyPosts.isNotEmpty) {
      if (state.isStickyPostsExpanded.value || state.stickyPosts.length <= 2) {
        state.showStickPosts.addAll(state.stickyPosts);
      } else {
        state.showStickPosts.addAll(state.stickyPosts.sublist(0, 2));
      }
      stickyAreaHeight += state.showStickPosts.length * stickyPostHeight;
    }
    state.appBarHeight.value = baseHeight + stickyAreaHeight;
  }

  void switchExpand() {
    state.isStickyPostsExpanded.value = !state.isStickyPostsExpanded.value;
    _calculateAppBarHeight();
  }

  String getShowTimeByAllTime(
    String? createTime,
    String? updateTime,
    String? lastPostTime,
  ) {
    String time = "";
    switch (state.showTimeType) {
      case 0:
        // 对应原逻辑：createTime非空则格式化
        if (createTime?.isNotEmpty ?? false) {
          time = "发布于${DateTools.getDayBefore(createTime!, true)}";
        }
        break;
      case 1:
        // 对应原逻辑：lastPostTime非空则格式化
        if (lastPostTime?.isNotEmpty ?? false) {
          time = "回复于${DateTools.getDayBefore(lastPostTime!, true)}";
        }
        break;
      case 2:
        // 对应原逻辑：优先updateTime，其次lastPostTime
        if (updateTime?.isNotEmpty ?? false) {
          time = "更新于${DateTools.getDayBefore(updateTime!, true)}";
        } else if (lastPostTime?.isNotEmpty ?? false) {
          time = "更新于${DateTools.getDayBefore(lastPostTime!, true)}";
        }
        break;
      default:
        // 对应原逻辑：默认返回createTime的日期格式化结果
        time = DateTools.getDayBefore(createTime ?? "", true);
        break;
    }
    return time;
  }
}
