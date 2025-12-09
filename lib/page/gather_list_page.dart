import 'package:flutter/material.dart';

import '../base/base_state.dart';

class GatherListPage extends BaseStatefulWidget {
  const GatherListPage({super.key});

  @override
  BaseState<BaseStatefulWidget> createState() => _FavListPage();
}

class _FavListPage extends BaseState<GatherListPage>
    with AutomaticKeepAliveClientMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Center(child: Text("合集 内容页面"));
  }

  @override
  bool get wantKeepAlive => true;
}
