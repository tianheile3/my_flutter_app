import 'package:flutter/material.dart';

import '../base/base_state.dart';

/// 分类 Tab 页面
class CategoryTabPage extends BaseStatelessWidget {
  const CategoryTabPage({super.key});

  @override
  Widget build(BuildContext context) {
    logger.d("构建分类 Tab 页面");
    return const Center(child: Text("分类", style: TextStyle(fontSize: 24)));
  }
}
