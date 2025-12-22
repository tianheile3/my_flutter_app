import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';

class MainHomePage extends StatelessWidget {
  MainHomePage({super.key});

  final MainHomeLogic logic = Get.put(MainHomeLogic());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() {
        final List<Widget> children = List.generate(
          logic.tabPages.length,
          (i) => logic.tabPages[i] ?? const SizedBox(),
        );
        return IndexedStack(
          index: logic.selectedIndex.value,
          children: children,
        );
      }),
      bottomNavigationBar: Obx(() {
        return BottomNavigationBar(
          items: logic.tabItems,
          currentIndex: logic.selectedIndex.value,
          onTap: logic.onTabTapped,
          type: BottomNavigationBarType.fixed,
          // 固定样式（适配3个及以上Tab）
          selectedItemColor: Colors.blue,
          // 选中颜色
          unselectedItemColor: Colors.grey,
          // 未选中颜色
          selectedFontSize: 12,
          // 选中文字大小
          unselectedFontSize: 12,
        );
      }),
    );
  }
}
