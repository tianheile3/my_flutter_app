import 'package:flutter/material.dart';
import 'package:flutter_study/base/base_state.dart';

import 'category_tab_page.dart';
import 'home_tab_page.dart';
import 'mine_tab_page.dart';

class MainHomePage extends BaseStatefulWidget {
  const MainHomePage({super.key});

  @override
  BaseState<BaseStatefulWidget> createState() => _MainHomePageState();
}

class _MainHomePageState extends BaseState<MainHomePage> {
  int _selectIndex = 0;

  // Tab 对应的页面列表（与 Tab 一一对应）
  final List<Widget> _tabPages = const [
    HomeTabPage(),
    CategoryTabPage(),
    MineTabPage(),
  ];

  final List<BottomNavigationBarItem> _tabItems = const [
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

  void _onTabTapped(int index) {
    setState(() {
      _selectIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: _selectIndex, children: _tabPages),
      bottomNavigationBar: BottomNavigationBar(
        items: _tabItems,
        currentIndex: _selectIndex,
        onTap: _onTabTapped,
        type: BottomNavigationBarType.fixed,
        // 固定样式（适配3个及以上Tab）
        selectedItemColor: Colors.blue,
        // 选中颜色
        unselectedItemColor: Colors.grey,
        // 未选中颜色
        selectedFontSize: 12,
        // 选中文字大小
        unselectedFontSize: 12,
      ),
    );
    // 未选中文字大小))
  }
}
