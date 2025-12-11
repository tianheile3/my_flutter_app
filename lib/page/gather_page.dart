import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_refresh/easy_refresh.dart';
import 'package:flutter/material.dart';
import 'package:flutter_study/api/network_manager.dart';
import 'package:flutter_study/utils/common_utils.dart';
import 'package:flutter_study/utils/custom_colors.dart';

import '../api/response/gather_thread_page_info_entity.dart';
import '../base/base_state.dart';

class GatherPage extends BaseStatefulWidget {
  final String gatherId;

  const GatherPage({super.key, required this.gatherId});

  @override
  BaseState<BaseStatefulWidget> createState() => _GatherPage();
}

class _GatherPage extends BaseState<GatherPage> {
  late double _expandedHeight;
  late double _screenWidth;

  final api = NetworkManager().getApiClient();
  var order = "desc";
  final List<GatherThreadPageInfoThreadList> items = [];
  late final GatherThreadPageInfoGatherInfo gatherInfo;
  late final GatherThreadPageInfoGatherUser gatherUser;
  var page = 1;

  final EasyRefreshController controller = EasyRefreshController(
    controlFinishRefresh: true,
    controlFinishLoad: true,
  );

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // 初始化屏幕宽度
    _screenWidth = MediaQuery.of(context).size.width;
  }

  @override
  void initState() {
    super.initState();
    _onRefresh();
  }

  Future<void> _onRefresh() async {
    setState(() {
      isRefreshFailed = false;
      isRefreshing = true;
      isLoadComplete = false;
      items.clear();
      page = 1;
    });
    var hasError = false;
    try {
      final res = await api.getGatherThreadPageInfo(
        gatherId: widget.gatherId,
        order: order,
      );
      if (res == null || res.code != 1) {
        hasError = true;
        return;
      }
      setState(() {
        gatherInfo = res.gatherInfo;
        gatherUser = res.gatherUser;
        calculateExpandedHeight();
        if (res.threadList != null && res.threadList!.isNotEmpty) {
          items.addAll(res.threadList!);
        }
      });
    } catch (e) {
      logger.e('加载失败: $e');
      hasError = true;
    } finally {
      setState(() {
        isRefreshing = false;
        isRefreshFailed = hasError;
      });
    }
  }

  void calculateExpandedHeight() {
    _expandedHeight = _screenWidth * 8 / 15;
    logger.d("_expandedHeight: $_expandedHeight");
    if (gatherInfo.desc.isNotEmpty) {
      // 获取文本实际可用宽度（示例：屏幕宽度减去左右边距）
      final double textMaxWidth = _screenWidth - 30;
      final textStyle = TextStyle(fontSize: 12, color: CustomColors.textDark);
      double descHeight = CommonUtils.calculateTextHeight(
        text: gatherInfo.desc,
        style: textStyle,
        maxWidth: textMaxWidth,
        maxLines: 2,
      );
      logger.d("descHeight: $descHeight");
      _expandedHeight += descHeight;
      logger.d("_expandedHeight: $_expandedHeight");
    }
  }

  String _getView() {
    final buffer = StringBuffer();
    if (gatherInfo.visitNum > 0) {
      buffer.write("${gatherInfo.visitNum}浏览      ");
    }
    buffer.write("${gatherInfo.threads}篇      ");
    buffer.write(
      "更新于${(gatherInfo.lastGatherAt.isEmpty ? gatherInfo.createdAt : gatherInfo.lastGatherAt).split(" ")[0]}",
    );
    return buffer.toString();
  }

  @override
  Widget build(BuildContext context) {
    // 加载状态显示加载界面
    if (isRefreshing) {
      return Scaffold(
        body: Center(
          child: CircularProgressIndicator(), // 加载指示器
        ),
      );
    }
    if (isRefreshFailed) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            errorMessage,
            style: const TextStyle(color: Colors.red),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),
          ElevatedButton(onPressed: _onRefresh, child: const Text('重试')),
        ],
      );
    }
    return Scaffold(
      backgroundColor: Colors.white,
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              expandedHeight: _expandedHeight,
              pinned: true,
              floating: true,
              snap: true,
              flexibleSpace: FlexibleSpaceBar(background: _headWidget()),
            ),
          ];
        },
        body: _listWidget(),
      ),
    );
  }

  Widget _headWidget() {
    return Column(
      children: [
        Container(
          height: _screenWidth * 8 / 15,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: const [
                Color(0xFF8E6C56), // startColor
                Color(0xFFD3B089), // endColor
              ],
              stops: const [0.0, 1.1],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          padding: EdgeInsets.fromLTRB(15, 100, 15, 15),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      gatherInfo.name,
                      style: TextStyle(fontSize: 17, color: Colors.white),
                    ),
                    SizedBox(height: 4),
                    Row(
                      children: [
                        ClipOval(
                          child: CachedNetworkImage(
                            width: 25,
                            height: 25,
                            fit: BoxFit.cover,
                            imageUrl: gatherUser.smallAvatar,
                            memCacheWidth: 50,
                            memCacheHeight: 50,
                          ),
                        ),
                        Text(
                          gatherUser.userName,
                          style: TextStyle(fontSize: 12, color: Colors.white),
                        ),
                      ],
                    ),
                    SizedBox(height: 4),
                    Text(
                      _getView(),
                      style: TextStyle(fontSize: 12, color: Colors.white),
                    ),
                  ],
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: CachedNetworkImage(
                  width: 80,
                  height: 80,
                  fit: BoxFit.cover,
                  imageUrl: gatherInfo.cover,
                  memCacheWidth: 160,
                  memCacheHeight: 160,
                ),
              ),
            ],
          ),
        ),
        if (gatherInfo.desc.isNotEmpty)
          Container(
            color: Colors.white,
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Text(
              gatherInfo.desc,
              style: TextStyle(fontSize: 12, color: CustomColors.textDark),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        if (gatherInfo.desc.isNotEmpty)
          Divider(color: CustomColors.divider1, height: 5, thickness: 5),
      ],
    );
  }

  Widget _listWidget() {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemCount: 25,
      itemBuilder: (context, index) {
        return ListTile(title: Text("第$index项"));
      },
    );
  }
}
