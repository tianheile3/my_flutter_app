import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_refresh/easy_refresh.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../base/some_publish.dart';
import '../../utils/custom_colors.dart';
import 'logic.dart';

class GatherPage extends StatelessWidget {
  GatherPage({super.key});

  final GatherLogic logic = Get.put(GatherLogic());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() {
        switch (logic.loadState.value) {
          case LoadState.refreshing:
            return Center(
              child: CircularProgressIndicator(), // 加载指示器
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
            return Scaffold(
              backgroundColor: Colors.white,
              body: NestedScrollView(
                headerSliverBuilder: (context, innerBoxIsScrolled) {
                  return [
                    SliverAppBar(
                      expandedHeight: logic.expandedHeight,
                      pinned: true,
                      floating: true,
                      snap: true,
                      automaticallyImplyLeading: false,
                      flexibleSpace: FlexibleSpaceBar(
                        background: _headWidget(),
                      ),
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          IconButton(
                            onPressed: () => Navigator.pop(context),
                            icon: const Icon(
                              Icons.arrow_back_ios,
                              color: Colors.white,
                            ),
                          ),
                          const Icon(
                            Icons.more_horiz,
                            size: 25,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ];
                },
                body: _listWidget(),
              ),
            );
        }
      }),
    );
  }

  Widget _headWidget() {
    return Column(
      children: [
        Container(
          height: logic.screenWidth * 8 / 15,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF8E6C56), Color(0xFFD3B089)],
              stops: [0.0, 1.1],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          padding: const EdgeInsets.fromLTRB(15, 100, 15, 15),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      logic.gatherInfo.value!.name,
                      style: const TextStyle(fontSize: 17, color: Colors.white),
                    ),
                    const SizedBox(height: 4),
                    Row(
                      children: [
                        ClipOval(
                          child: CachedNetworkImage(
                            width: 25,
                            height: 25,
                            fit: BoxFit.cover,
                            imageUrl: logic.gatherUser.value!.smallAvatar,
                            memCacheWidth: 50,
                            memCacheHeight: 50,
                          ),
                        ),
                        Text(
                          logic.gatherUser.value!.userName,
                          style: const TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 4),
                    Text(
                      logic.getViewString(),
                      style: const TextStyle(fontSize: 12, color: Colors.white),
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
                  imageUrl: logic.gatherInfo.value!.cover,
                  memCacheWidth: 160,
                  memCacheHeight: 160,
                ),
              ),
            ],
          ),
        ),
        if ((logic.gatherInfo.value?.desc ?? "").isNotEmpty)
          Container(
            color: Colors.white,
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Text(
              logic.gatherInfo.value!.desc,
              style: TextStyle(fontSize: 12, color: CustomColors.textDark),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        if (logic.gatherInfo.value!.desc.isNotEmpty)
          Divider(color: CustomColors.divider1, height: 5, thickness: 5),
      ],
    );
  }

  Widget _listWidget() {
    return EasyRefresh(
      onRefresh: () => logic.onRefresh(),
      onLoad: () => logic.onLoadMore(),
      controller: logic.controller,
      child: ListView.builder(
        itemCount: logic.items.length,
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          final item = logic.items[index];
          return Container(
            padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Text(
                        item.subject,
                        style: TextStyle(
                          fontSize: 16,
                          color: CustomColors.textDark,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    if (item.firstImageUrl.isNotEmpty)
                      Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: CachedNetworkImage(
                              imageUrl: item.firstImageUrl,
                              width: 107,
                              height: 73,
                              fit: BoxFit.cover,
                              memCacheWidth: 214,
                              memCacheHeight: 146,
                            ),
                          ),
                          if (item.holdVideo)
                            const Align(
                              alignment: Alignment.center,
                              child: Icon(
                                Icons.play_circle,
                                size: 38,
                                color: Colors.grey,
                              ),
                            ),
                          if ((item.picNum) > 1)
                            Align(
                              alignment: Alignment.bottomRight,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.black.withAlpha(60),
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(8),
                                  ),
                                ),
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 4,
                                  vertical: 2,
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const Icon(
                                      Icons.image_outlined,
                                      size: 16,
                                      color: Colors.white,
                                    ),
                                    const SizedBox(width: 2),
                                    Text(
                                      item.picNum.toString(),
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                        ],
                      ),
                  ],
                ),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      item.createdAt.substring(0, 16),
                      style: TextStyle(
                        color: CustomColors.textLight,
                        fontSize: 12,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.more_horiz,
                          size: 24,
                          color: Colors.grey,
                        ),
                        const SizedBox(width: 10),
                        const Icon(Icons.comment, size: 24, color: Colors.grey),
                        Text(
                          (item.replies) > 0 ? item.replies.toString() : "评论",
                          style: TextStyle(
                            color: CustomColors.textLight,
                            fontSize: 12,
                          ),
                        ),
                        const SizedBox(width: 10),
                        Obx(() {
                          return IconButton(
                            onPressed: () => logic.toggleLike(item),
                            icon: Icon(
                              item.rate.value
                                  ? Icons.thumb_up_alt
                                  : Icons.thumb_up_off_alt,
                              size: 24,
                              color: Colors.grey,
                            ),
                          );
                        }),
                        Obx(() {
                          return Text(
                            item.rateCount.value > 0
                                ? item.rateCount.toString()
                                : "点赞",
                            style: TextStyle(
                              color: CustomColors.textLight,
                              fontSize: 12,
                            ),
                          );
                        }),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                Divider(height: 10, color: CustomColors.divider),
              ],
            ),
          );
        },
      ),
    );
  }
}
