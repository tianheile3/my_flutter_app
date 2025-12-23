import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_study/common/custom_colors.dart';
import 'package:get/get.dart';

import '../api/network_manager.dart';
import '../api/response/my_gather_entity.dart';
import '../common/some_publish.dart';
import '../route_config.dart';

class GatherListPage extends StatefulWidget {
  const GatherListPage({super.key});

  @override
  State<StatefulWidget> createState() => _FavListPage();
}

class _FavListPage extends State<GatherListPage>
    with AutomaticKeepAliveClientMixin {
  LoadState _loadState = LoadState.refreshing; // 初始加载中

  final api = NetworkManager().getApiClient();
  var errorMessage = "";

  // 缓存屏幕宽度，避免重复计算
  late double _screenWidth;
  final List<dynamic> items = [];

  @override
  void initState() {
    super.initState();
    _getGathers();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // 初始化屏幕宽度
    _screenWidth = MediaQuery.of(context).size.width;
  }

  Future<void> _getGathers() async {
    // 开始加载
    setState(() {
      _loadState = LoadState.refreshing;
      items.clear();
    });
    try {
      final res = await api.getMyGather();
      if (res == null) {
        setState(() {
          errorMessage = '加载失败';
          _loadState = LoadState.failed;
        });
        return;
      }
      setState(() {
        items.add("1");
        items.addAll(res.gatherList);
        items.add(1);
        _loadState = LoadState.success;
      });
    } catch (e) {
      setState(() {
        errorMessage = '加载失败: $e';
        _loadState = LoadState.failed;
      });
    }
  }

  String _getNumbers(MyGatherGatherList item) {
    final time = item.lastGatherAt.isEmpty ? item.createdAt : item.lastGatherAt;
    return "帖子·${item.threads}篇   ${time.split(" ")[0]}";
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    if (_loadState == LoadState.refreshing) {
      return Scaffold(body: Center(child: CircularProgressIndicator()));
    }
    if (_loadState == LoadState.failed) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            errorMessage,
            style: const TextStyle(color: Colors.red),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),
          ElevatedButton(onPressed: _getGathers, child: const Text('重试')),
        ],
      );
    }
    return Scaffold(
      backgroundColor: Colors.white,
      body: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            const double containerHeight = 100;
            if (item is MyGatherGatherList) {
              return InkWell(
                onTap: () {
                  Get.toNamed(
                    MyRouteConfig.gather,
                    arguments: {"gatherId": item.id},
                  );
                },
                child: Container(
                  padding: EdgeInsets.fromLTRB(15, 12, 15, 0),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: CachedNetworkImage(
                              imageUrl: item.cover,
                              width: 100,
                              height: containerHeight,
                              fit: BoxFit.cover,
                              memCacheWidth: 200,
                              memCacheHeight: 200,
                            ),
                          ),
                          SizedBox(width: 15),
                          SizedBox(
                            height: 100,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      item.name,
                                      style: TextStyle(
                                        color: CustomColors.textDark,
                                        fontSize: 17,
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    ConstrainedBox(
                                      constraints: BoxConstraints(
                                        maxWidth:
                                            _screenWidth - 160, // 减去左侧图片和间距的宽度
                                      ),
                                      child: Text(
                                        item.desc,
                                        style: TextStyle(
                                          color: CustomColors.textOther,
                                          fontSize: 13,
                                        ),
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  _getNumbers(item),
                                  style: TextStyle(
                                    color: CustomColors.textLight,
                                    fontSize: 10,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 12),
                      Divider(height: 1, thickness: 1, color: Colors.grey[200]),
                    ],
                  ),
                ),
              );
            } else if (item is String) {
              return Container(
                padding: EdgeInsets.fromLTRB(15, 10, 15, 0),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/images/gather_create.png",
                              width: 28,
                              height: 28,
                            ),
                            SizedBox(width: 10),
                            Text(
                              "创建合集",
                              style: TextStyle(
                                fontSize: 13,
                                color: CustomColors.textDark,
                              ),
                            ),
                          ],
                        ),
                        Icon(Icons.arrow_forward_ios, size: 10),
                      ],
                    ),
                    SizedBox(height: 10),
                    Divider(height: 1, thickness: 1, color: Colors.grey[200]),
                  ],
                ),
              );
            } else {
              return Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/end_line.png",
                    width: 28,
                    height: 28,
                  ),
                  SizedBox(width: 12),
                  Text(
                    "到底了",
                    style: TextStyle(
                      fontSize: 12,
                      color: CustomColors.textLight,
                    ),
                  ),
                  SizedBox(width: 12),
                  Image.asset(
                    "assets/images/end_line.png",
                    width: 28,
                    height: 28,
                  ),
                ],
              );
            }
          },
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
