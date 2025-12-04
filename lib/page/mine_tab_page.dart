import 'package:flutter/material.dart';

import '../base/base_state.dart';

/// 我的 Tab 页面
class MineTabPage extends BaseStatelessWidget {
  const MineTabPage({super.key});

  @override
  Widget build(BuildContext context) {
    logger.d("构建我的 Tab 页面");
    return const Center(child: Text("我的", style: TextStyle(fontSize: 24)));
  }
}
