import 'dart:convert';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dio/dio.dart';
import 'package:easy_refresh/easy_refresh.dart';
import 'package:flutter/material.dart';
import 'package:flutter_study/api/response/second_config_entity.dart';
import 'package:flutter_study/base/base_state.dart';
import 'package:flutter_study/models/extra_entity.dart';
import 'package:flutter_study/models/home_item.dart';
import 'package:flutter_study/utils/common_utils.dart';
import 'package:flutter_study/utils/custom_colors.dart';
import 'package:flutter_study/utils/date_tools.dart';

import '../api/network_manager.dart';
import '../api/response/user_second_recom_thread_entity.dart';
import '../models/banner.dart';

const int maxImageCount = 9;
const double imageGridSpacing = 10;

class HomeTabPage extends BaseStatefulWidget {
  const HomeTabPage({super.key});

  @override
  BaseState createState() => _HomePageState();
}

class _HomePageState extends BaseState<HomeTabPage> {
  final api = NetworkManager().getApiClient();
  final String sId = "marry22";
  int page = 1;
  List<HomeListItem> items = [];

  // 缓存屏幕宽度，避免重复计算
  late double _screenWidth;

  @override
  void initState() {
    super.initState();
    _initData();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // 初始化屏幕宽度
    _screenWidth = MediaQuery.of(context).size.width;
  }

  Future<void> _initData() async {
    final configFuture = _initConfig();
    final threadFuture = _initThread();

    final results = await Future.wait([configFuture, threadFuture]);
    setState(() {
      items.addAll(results[0]);
      items.addAll(results[1]);
    });
  }

  Future<void> _refresh() async {
    if (isRefreshing) {
      return;
    }
    setState(() {
      isRefreshing = true;
      page = 1;
      isLoadComplete = false;
      // 清空现有数据
      items.clear();
    });
    try {
      await _initData();
    } catch (e) {
      logger.e('刷新数据失败: $e');
      showErrorToast('刷新失败，请重试');
    } finally {
      if (mounted) {
        setState(() {
          isRefreshing = false;
        });
      }
    }
  }

  Future<void> _onLoad() async {
    if (isLoadComplete || isLoadingMore) {
      return;
    }
    setState(() {
      isLoadingMore = true;
    });
    try {
      final list = await _initThread();
      setState(() {
        items.addAll(list);
      });
    } catch (e) {
      logger.e('加载更多失败: $e');
    } finally {
      if (mounted) {
        setState(() => isLoadingMore = false);
      }
    }
  }

  Future<List<HomeListItem>> _initConfig() async {
    final dio = Dio();
    final String url =
        "https://att3.citysbs.com/appstatic/${sId}_second.json?secondid=$sId&ts=${DateTime.now().millisecondsSinceEpoch}";
    logger.e('config: $url');

    final response = await dio.get(url);
    if (response.data == null) {
      showErrorToast('加载失败，请重试');
      return [];
    }
    final parsedData = jsonDecode(response.data);
    final config = SecondConfigEntity.fromJson(parsedData);

    // 临时列表存储配置相关的item
    List<HomeListItem> configItems = [];
    //轮播图
    final List<BannerEntity> bannerList = [];
    for (var item in config.configInfo.picTurnList) {
      BannerEntity banner = BannerEntity()
        ..imageUrl = item.firstPicUrl
        ..url = item.showUrl
        ..subject = item.subject
        ..fid = item.fid
        ..tid = item.tid;
      bannerList.add(banner);
    }
    BannerItem bannerItem = BannerItem(bannerList: bannerList);
    configItems.add(bannerItem);

    //行业入口
    final List<SecondConfigConfigInfoAppPortalInfo> list = [];
    list.addAll(config.configInfo.appPortalInfo);
    DiscoverItem discoverItem = DiscoverItem(discoveryList: list);
    configItems.add(discoverItem);

    return configItems;
  }

  Future<List<HomeListItem>> _initThread() async {
    List<HomeListItem> threadList = [];

    final res = await api.getUserSecondRecomThread(industryId: sId, page: page);
    if (res == null) {
      showErrorToast('加载失败，请重试');
      return threadList;
    }
    if (res.recomThreadList.isNotEmpty) {
      for (var item in res.recomThreadList) {
        if (item.extra.isNotEmpty) {
          final extra = ExtraEntity.fromJson(json.decode(item.extra));
          if (extra.imageUrls?.isNotEmpty ?? false) {
            final images = extra.imageUrls?.split(",") ?? [];
            item.images.addAll(images);
          }
        }
        if (item.recommendSourceType == "9" ||
            (item.recommendImageShowType == "0" && item.images.length == 1)) {
          item.setType(HomeItemType.single);
        } else {
          item.setType(HomeItemType.normal);
        }
        threadList.add(item);
      }
    }
    isLoadComplete = page >= int.parse(res.maxPage);
    page++;
    return threadList;
  }

  //行业入口布局
  Widget _buildDiscoveryItem(SecondConfigConfigInfoAppPortalInfo item) {
    final itemWidth = _screenWidth / 5;
    return SizedBox(
      width: itemWidth,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CachedNetworkImage(
            imageUrl: item.logoUrl,
            width: 50,
            height: 50,
            fit: BoxFit.fill,
            placeholder: (context, url) => Icon(Icons.image, size: 25),
            errorWidget: (context, url, error) => Icon(Icons.image, size: 25),
            memCacheWidth: 100,
            memCacheHeight: 100,
          ),
          SizedBox(height: 8),
          Text(
            item.name,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 12, color: CustomColors.textDark),
          ),
          SizedBox(height: 8),
          Container(
            width: double.infinity,
            height: 5,
            color: CustomColors.divider,
          ),
        ],
      ),
    );
  }

  //帖子流 头像等布局
  Widget _buildThreadTop(UserSecondRecomThreadRecomThreadList entity) {
    return Row(
      children: [
        ClipOval(
          child: CachedNetworkImage(
            imageUrl: entity.author.smallAvatar,
            width: 30,
            height: 30,
            fit: BoxFit.cover,
            placeholder: (context, url) => Icon(Icons.image, size: 25),
            errorWidget: (context, url, error) => Icon(Icons.image, size: 25),
            memCacheWidth: 60,
            memCacheHeight: 60,
          ),
        ),
        SizedBox(width: 8),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              entity.author.userName,
              style: TextStyle(fontSize: 13, color: CustomColors.textDark),
            ),
            Row(
              children: () {
                List<Widget> children = [];
                if (entity.lastPostTime.isNotEmpty) {
                  children.add(
                    Text(
                      DateTools.getDayBefore(entity.lastPostTime, true),
                      style: TextStyle(
                        fontSize: 12,
                        color: CustomColors.textLight,
                      ),
                    ),
                  );
                }
                if (entity.fname.isNotEmpty) {
                  if (children.isNotEmpty) {
                    children.add(SizedBox(width: 8));
                  }
                  children.add(
                    Text(
                      "来自${entity.fname}",
                      style: TextStyle(
                        fontSize: 12,
                        color: CustomColors.textLight,
                      ),
                    ),
                  );
                }
                if (entity.views.isNotEmpty) {
                  if (children.isNotEmpty) {
                    children.add(SizedBox(width: 8));
                  }
                  children.add(
                    Text(
                      "${CommonUtils.getMillon(entity.views)}浏览",
                      style: TextStyle(
                        fontSize: 12,
                        color: CustomColors.textLight,
                      ),
                    ),
                  );
                }
                return children;
              }(),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildImageGrid(List<String> images) {
    if (images.length > maxImageCount) {
      images = images.sublist(0, maxImageCount);
    }
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: images.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: imageGridSpacing,
        crossAxisSpacing: imageGridSpacing,
        childAspectRatio: 1,
      ),
      itemBuilder: (context, index) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: CachedNetworkImage(
            imageUrl: images[index],
            fit: BoxFit.cover,
            placeholder: (context, url) => Icon(Icons.image, size: 25),
            errorWidget: (context, url, error) => Icon(Icons.image, size: 25),
            // 根据网格大小设置缓存尺寸
            memCacheWidth: ((_screenWidth - 40 - imageGridSpacing * 2) / 3)
                .toInt(),
            memCacheHeight: ((_screenWidth - 40 - imageGridSpacing * 2) / 3)
                .toInt(),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: const Text("首页")),
      body: EasyRefresh(
        onRefresh: _refresh,
        onLoad: _onLoad,
        child: ListView.builder(
          itemCount: items.length, // 必须添加 itemCount，否则列表无法渲染
          itemBuilder: (context, index) {
            final item = items[index];
            switch (item.type) {
              case HomeItemType.banner:
                BannerItem banner = item as BannerItem;
                return SizedBox(
                  width: double.infinity,
                  child: CarouselSlider.builder(
                    itemCount: banner.bannerList.length,
                    itemBuilder: (context, index, realIndex) {
                      return Stack(
                        children: [
                          CachedNetworkImage(
                            imageUrl: banner.bannerList[index].imageUrl,
                            fit: BoxFit.cover,
                            width: double.infinity,
                            height: double.infinity,
                            placeholder: (context, url) =>
                                Icon(Icons.image, size: double.infinity),
                            errorWidget: (context, url, error) =>
                                Icon(Icons.image, size: double.infinity),
                            memCacheWidth: (_screenWidth * 2).toInt(),
                            memCacheHeight: 400,
                          ),
                          Positioned(
                            bottom: 0,
                            left: 0,
                            right: 0,
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                vertical: 12,
                                horizontal: 16,
                              ),
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    Colors.transparent,
                                    Colors.black.withValues(alpha: 0.6),
                                  ],
                                ),
                              ),
                              child: Text(
                                banner.bannerList[index].subject,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  shadows: [
                                    Shadow(
                                      offset: Offset(1, 1),
                                      blurRadius: 2,
                                      color: Colors.black54,
                                    ),
                                  ],
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                    options: CarouselOptions(
                      aspectRatio: 5 / 2,
                      // 中间项放大
                      autoPlay: true,
                      // 自动播放
                      autoPlayInterval: Duration(seconds: 5),
                      // 每3秒切换
                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      scrollDirection: Axis.horizontal,
                      viewportFraction: 1,
                      // 水平滑动（默认）
                      onPageChanged: (index, reason) {
                        // logger.d('当前页: $index');
                      },
                    ),
                  ),
                );
              case HomeItemType.discover:
                DiscoverItem discover = item as DiscoverItem;
                return Container(
                  padding: EdgeInsets.only(top: 10),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        for (var item in discover.discoveryList)
                          _buildDiscoveryItem(item),
                      ],
                    ),
                  ),
                );
              case HomeItemType.normal:
                UserSecondRecomThreadRecomThreadList entity =
                    item as UserSecondRecomThreadRecomThreadList;
                return Container(
                  width: double.infinity,
                  padding: EdgeInsets.fromLTRB(10, 15, 15, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildThreadTop(entity),
                      SizedBox(height: 10),
                      Text(
                        entity.subject,
                        style: TextStyle(
                          color: CustomColors.textDark,
                          fontSize: 16,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      _buildImageGrid(entity.images),
                      SizedBox(height: 10),
                      Container(
                        width: double.infinity,
                        height: 1,
                        color: CustomColors.divider,
                      ),
                    ],
                  ),
                );
              case HomeItemType.single:
                UserSecondRecomThreadRecomThreadList entity =
                    item as UserSecondRecomThreadRecomThreadList;
                return Container(
                  width: double.infinity,
                  padding: EdgeInsets.fromLTRB(10, 15, 15, 0),
                  child: Column(
                    children: [
                      _buildThreadTop(entity),
                      SizedBox(height: 10),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Text(
                              entity.subject,
                              style: TextStyle(
                                color: CustomColors.textDark,
                                fontSize: 16,
                              ),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(4),
                            child: CachedNetworkImage(
                              imageUrl: entity.images[0],
                              fit: BoxFit.cover,
                              width: 112,
                              height: 73,
                              placeholder: (context, url) =>
                                  Icon(Icons.image, size: 112),
                              errorWidget: (context, url, error) =>
                                  Icon(Icons.image, size: 73),
                              memCacheWidth: 224,
                              memCacheHeight: 146,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Container(
                        width: double.infinity,
                        height: 1,
                        color: CustomColors.divider,
                      ),
                    ],
                  ),
                );
            }
          },
        ),
      ),
    );
  }
}
