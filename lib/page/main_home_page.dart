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

  // 使用 List<Widget?>，初始为 null，表示未加载
  final List<Widget?> _tabPages = List<Widget?>.filled(3, null);

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

  // 页面构建工厂
  Widget _buildTabPage(int index) {
    switch (index) {
      case 0:
        return const HomeTabPage();
      case 1:
        return const CategoryTabPage();
      case 2:
        return const MineTabPage();
      default:
        return const SizedBox();
    }
  }

  void _onTabTapped(int index) {
    setState(() {
      _selectIndex = index;
      // 懒加载：只有第一次点击时才初始化
      if (_tabPages[index] == null) {
        _tabPages[index] = _buildTabPage(index);
      }
    });
  }

  @override
  void initState() {
    super.initState();
    _onTabTapped(0);
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> children = List.generate(
      _tabPages.length,
      (i) => _tabPages[i] ?? const SizedBox(),
    );
    return Scaffold(
      body: IndexedStack(index: _selectIndex, children: children),
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
  }
}
