import 'package:flutter/material.dart';
import 'package:flutter_study/base/some_publish.dart';
import 'package:get/get.dart';

import '../../api/response/current_user_info_entity.dart';
import '../../api/service/user_repository.dart';

class MineTabLogic extends BaseController with GetTickerProviderStateMixin {
  final expandedHeight = 300.0;
  final collapsedToolbarHeight = 44.0;
  final appBarHeight = 44.0;

  late double screenWidth;
  late double statusBarHeight;

  late TabController outerTabController;
  late TabController innerTabController;

  // 替换原有的api调用，改为使用仓库类
  final userRepo = UserRepository();
  final userInfo = Rxn<CurrentUserInfoUser>();
  final bgUrl = "".obs;
  final loadState = LoadState.refreshing.obs;
  final tabList = <MineTabItem>[].obs;
  final isPostTab = true.obs;
  final outerTabIndex = 0.obs;
  final innerTabIndex = 0.obs;

  @override
  void onInit() {
    super.onInit();
    screenWidth = Get.mediaQuery.size.width;
    statusBarHeight = Get.mediaQuery.padding.top;

    onRefresh();
  }

  @override
  void onClose() {
    outerTabController.dispose();
    innerTabController.dispose();
    super.onClose();
  }

  void _initTabController() {
    if (tabList.isEmpty) {
      return;
    }
    outerTabController = TabController(length: tabList.length, vsync: this);
    outerTabController.addListener(_onOuterTabChanged);

    innerTabController = TabController(length: 3, vsync: this);
    innerTabController.addListener(_onInnerTabChanged);
    // 主动更新一次isPostTab
    _updateIsPostTab();
  }

  void _onOuterTabChanged() {
    // 仅在动画完成后处理（避免中间状态的回调）
    if (!outerTabController.indexIsChanging) {
      outerTabIndex.value = outerTabController.index;
      _updateIsPostTab();
    }
  }

  void _onInnerTabChanged() {
    if (isPostTab.value && !innerTabController.indexIsChanging) {
      innerTabIndex.value = innerTabController.index;
    }
  }

  Future<void> onRefresh() async {
    loadState.value = LoadState.refreshing;
    try {
      final userInfo = await userRepo.getUserInfo();
      if (userInfo == null) {
        errorMessage.value = '初始化失败';
        loadState.value = LoadState.failed;
        return;
      }
      final bgUrl = await userRepo.getMobileBgUrl(userInfo.uid);
      this.userInfo.value = userInfo;
      this.bgUrl.value = bgUrl;
      tabList.value = userRepo.getTabList(userInfo);
      _initTabController();

      loadState.value = LoadState.success;
    } catch (e) {
      errorMessage.value = '初始化失败: $e';
      loadState.value = LoadState.failed;
    }
  }

  // 计算isPostTab的值并更新
  void _updateIsPostTab() {
    isPostTab.value = tabList.isNotEmpty && outerTabIndex.value == 0; // 更新响应式变量
  }
}
