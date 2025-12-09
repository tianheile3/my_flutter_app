import 'package:flutter/material.dart';

import '../base/base_state.dart';

class FavListPage extends BaseStatefulWidget {
  const FavListPage({super.key});

  @override
  BaseState<BaseStatefulWidget> createState() => _FavListPage();
}

class _FavListPage extends BaseState<FavListPage>
    with AutomaticKeepAliveClientMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Center(child: Text("收藏 内容页面"));
  }

  @override
  bool get wantKeepAlive => true;
}
