import 'package:flutter/material.dart';
import 'package:flutter_study/common/some_publish.dart';
import 'package:flutter_study/page/mine_tab/view.dart';
import 'package:get/get.dart';

import '../category_tab/view.dart';
import '../home_tab/view.dart';

class MainHomeLogic extends BaseController {
  final RxInt selectedIndex = 0.obs;
  final List<Widget?> tabPages = List<Widget?>.filled(3, null);

  void onTabTapped(int index) {
    selectedIndex.value = index;
    // 懒加载：只有第一次点击时才初始化
    if (tabPages[index] == null) {
      tabPages[index] = _buildTabPage(index);
    }
  }

  Widget _buildTabPage(int index) {
    switch (index) {
      case 0:
        return HomeTabPage();
      case 1:
        return CategoryTabPage();
      case 2:
        return MineTabPage();
      default:
        return const SizedBox();
    }
  }

  final List<BottomNavigationBarItem> tabItems = const [
    BottomNavigationBarItem(
      icon: Icon(Icons.home_outlined),
      activeIcon: Icon(Icons.home),
      label: "首页",
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.category_outlined),
      activeIcon: Icon(Icons.category),
      label: "分类",
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.person_outlined),
      activeIcon: Icon(Icons.person),
      label: "我的",
    ),
  ];

  @override
  void onInit() {
    super.onInit();
    // 初始化首页
    onTabTapped(0);
  }
}
