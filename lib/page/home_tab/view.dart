import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:easy_refresh/easy_refresh.dart';
import 'package:flutter/material.dart';
import 'package:flutter_study/route_config.dart';
import 'package:get/get.dart';

import '../../api/response/second_config_entity.dart';
import '../../api/response/user_second_recom_thread_entity.dart';
import '../../common/some_publish.dart';
import '../../models/home_item.dart';
import '../../utils/common_utils.dart';
import '../../common/custom_colors.dart';
import '../../utils/date_tools.dart';
import 'logic.dart';

class HomeTabPage extends StatelessWidget {
  HomeTabPage({super.key});

  final HomeTabLogic logic = Get.put(HomeTabLogic());

  //行业入口布局
  Widget _buildDiscoveryItem(SecondConfigConfigInfoAppPortalInfo item) {
    final itemWidth = logic.screenWidth / 5;
    return SizedBox(
      width: itemWidth,
      child: InkWell(
        onTap: () {
          Get.toNamed(MyRouteConfig.postThread);
        },
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
                      "${CommonUtils.getMillion(entity.views)}浏览",
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
    if (images.length > logic.maxImageCount) {
      images = images.sublist(0, logic.maxImageCount);
    }
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: images.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: logic.imageGridSpacing,
        crossAxisSpacing: logic.imageGridSpacing,
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
            memCacheWidth:
                ((logic.screenWidth - 40 - logic.imageGridSpacing * 2) / 3)
                    .toInt(),
            memCacheHeight:
                ((logic.screenWidth - 40 - logic.imageGridSpacing * 2) / 3)
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
      body: Obx(() {
        switch (logic.loadState.value) {
          case LoadState.refreshing:
            return Scaffold(
              body: Center(
                child: CircularProgressIndicator(), // 加载指示器
              ),
            );
          case LoadState.failed:
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  logic.errorMessage.value,
                  style: const TextStyle(color: Colors.red),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: logic.onRefresh,
                  child: const Text('重试'),
                ),
              ],
            );
          case LoadState.success:
            return EasyRefresh(
              controller: logic.controller,
              onRefresh: logic.onRefresh,
              onLoad: logic.onLoadMore,
              child: ListView.builder(
                itemCount: logic.items.length, // 必须添加 itemCount，否则列表无法渲染
                itemBuilder: (context, index) {
                  final item = logic.items[index];
                  switch (item.type) {
                    case HomeItemType.banner:
                      BannerItem banner = item as BannerItem;
                      return SizedBox(
                        width: double.infinity,
                        child: CarouselSlider.builder(
                          itemCount: banner.bannerList.length,
                          itemBuilder: (context, index, realIndex) {
                            return InkWell(
                              onTap: () {
                                Get.toNamed(MyRouteConfig.test);
                              },
                              child: Stack(
                                children: [
                                  CachedNetworkImage(
                                    imageUrl: banner.bannerList[index].imageUrl,
                                    fit: BoxFit.cover,
                                    width: double.infinity,
                                    height: double.infinity,
                                    memCacheWidth: (logic.screenWidth * 2)
                                        .toInt(),
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
                              ),
                            );
                          },
                          options: CarouselOptions(
                            aspectRatio: 5 / 2,
                            // 中间项放大
                            autoPlay: true,
                            // 自动播放
                            autoPlayInterval: Duration(seconds: 5),
                            // 每3秒切换
                            autoPlayAnimationDuration: Duration(
                              milliseconds: 800,
                            ),
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
            );
        }
      }),
    );
  }
}
