import 'package:flutter/material.dart';

import '../base/base_state.dart';

class CommentListPage extends BaseStatefulWidget {
  const CommentListPage({super.key});

  @override
  BaseState<BaseStatefulWidget> createState() => _CommentListPage();
}

class _CommentListPage extends BaseState<CommentListPage>
    with AutomaticKeepAliveClientMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      backgroundColor: Colors.red,
      body: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        child: ListView.builder(
          itemCount: 30,
          itemBuilder: (context, index) {
            return Container(color: Colors.green, child: Text("列表项 $index"));
          },
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
