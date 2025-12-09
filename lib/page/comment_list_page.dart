import 'package:flutter/material.dart';

import '../base/base_state.dart';

class CommentListPage extends BaseStatefulWidget {
  const CommentListPage({super.key});

  @override
  BaseState<BaseStatefulWidget> createState() => _CommentListPage();
}

class _CommentListPage extends BaseState<CommentListPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(child: Text("点评 内容页面"));
  }
}
