import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_refresh/easy_refresh.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

import '../../api/response/map_config_entity.dart';
import '../../api/response/record_list_entity.dart';
import '../../common/custom_colors.dart';
import '../../common/some_publish.dart';
import '../../utils/date_tools.dart';
import 'logic.dart';

class CategoryTabPage extends StatelessWidget {
  CategoryTabPage({super.key});

  final CategoryTabLogic logic = Get.put(CategoryTabLogic());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("发现")),
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
            return Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
              child: EasyRefresh(
                onRefresh: logic.onRefresh,
                onLoad: logic.onLoadMore,
                controller: logic.controller,
                child: ListView.builder(
                  itemCount: logic.items.length,
                  itemBuilder: (context, index) {
                    final item = logic.items[index];
                    if (item is MapConfigGroupList) {
                      if (item.displayType == 1) {
                        return _type1Widget(item);
                      } else if (item.displayType == 2) {
                        return _type2Widget(item);
                      } else if (item.displayType == 3) {
                        return _type3Widget(item);
                      } else if (item.displayType == 4) {
                        return _type4Widget(item);
                      } else if (item.displayType == 5) {
                        //板块
                        return _type5Widget(item);
                      } else {
                        return SizedBox.shrink();
                      }
                    } else if (item is RecordListDataItems) {
                      return _recordList(item);
                    } else if (item is int) {
                      return SizedBox(height: 10);
                    } else if (item is String) {
                      return _recordHead();
                    } else {
                      return Container();
                    }
                  },
                ),
              ),
            );
        }
      }),
    );
  }

  Widget _type1Widget(MapConfigGroupList bean) {
    return GridView.builder(
      shrinkWrap: true,
      itemCount: bean.itemList.length,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        childAspectRatio: 1.8,
      ),
      itemBuilder: (context, index) {
        final item = bean.itemList[index];
        return InkWell(
          onTap: () {
            logic.toDetail(item.link);
          },
          child: Stack(
            alignment: Alignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: CachedNetworkImage(
                  imageUrl: item.iconUrl,
                  width: double.infinity,
                  height: double.infinity,
                  fit: BoxFit.fill,
                  memCacheWidth: 250,
                  memCacheHeight: 250,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    item.name,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    item.desc,
                    style: TextStyle(fontSize: 12, color: Colors.white),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _type2Widget(MapConfigGroupList bean) {
    //生活在嘉兴
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Container(
        color: Colors.white,
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              bean.name,
              style: TextStyle(
                color: CustomColors.textDark,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            GridView.builder(
              shrinkWrap: true,
              itemCount: bean.itemList.length,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                childAspectRatio: 1.3,
              ),
              itemBuilder: (context, index) {
                final item = bean.itemList[index];
                return InkWell(
                  onTap: () {
                    logic.toDetail(item.link);
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CachedNetworkImage(
                        imageUrl: item.iconUrl,
                        width: 25,
                        height: 25,
                        fit: BoxFit.fill,
                        memCacheWidth: 50,
                        memCacheHeight: 50,
                      ),
                      SizedBox(height: 10),
                      Text(
                        item.name,
                        style: TextStyle(
                          color: CustomColors.textDark,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _type3Widget(MapConfigGroupList bean) {
    //人生几件事
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Container(
        color: Colors.white,
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              bean.name,
              style: TextStyle(
                color: CustomColors.textDark,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            GridView.builder(
              shrinkWrap: true,
              itemCount: bean.itemList.length,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                mainAxisSpacing: 3,
                crossAxisSpacing: 3,
                childAspectRatio: 1.5,
              ),
              itemBuilder: (context, index) {
                final item = bean.itemList[index];
                return InkWell(
                  onTap: () {
                    logic.toDetail(item.link);
                  },
                  child: Stack(
                    children: [
                      CachedNetworkImage(
                        imageUrl: item.iconUrl,
                        width: double.infinity,
                        height: double.infinity,
                        memCacheWidth: 200,
                        memCacheHeight: 70,
                        fit: BoxFit.fill,
                      ),
                      Positioned(
                        left: 10,
                        top: 5,
                        child: Text(
                          item.name,
                          style: TextStyle(
                            color: CustomColors.textDark,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _type4Widget(MapConfigGroupList bean) {
    return SizedBox.shrink();
  }

  Widget _type5Widget(MapConfigGroupList bean) {
    //人生几件事
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Container(
        color: Colors.white,
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  bean.name,
                  style: TextStyle(
                    color: CustomColors.textDark,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                InkWell(
                  onTap: () {
                    Fluttertoast.showToast(msg: "更多");
                  },
                  child: Text(
                    "更多",
                    style: TextStyle(
                      color: CustomColors.textLight,
                      fontSize: 13,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            GridView.builder(
              shrinkWrap: true,
              itemCount: bean.forums.length > 8 ? 8 : bean.forums.length,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                childAspectRatio: 1,
              ),
              itemBuilder: (context, index) {
                final item = bean.forums[index];
                return InkWell(
                  onTap: () {},
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: CachedNetworkImage(
                            imageUrl: item.cover,
                            width: 52,
                            height: 52,
                            memCacheWidth: 100,
                            memCacheHeight: 100,
                            fit: BoxFit.fill,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          item.name,
                          style: TextStyle(
                            fontSize: 12,
                            color: CustomColors.textDark,
                          ),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _recordHead() {
    return Container(
      width: double.infinity,
      height: 70,
      color: Colors.white,
      child: Row(
        children: [
          Expanded(
            child: InkWell(
              onTap: () {
                logic.toDetail(
                  "https://info.19lou.com/wap/zf/zf-${logic.cityId}.html",
                );
              },
              child: Center(
                child: IntrinsicWidth(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            "assets/images/map_head_1.png",
                            width: 20,
                            height: 25,
                          ),
                          SizedBox(width: 5),
                          Text(
                            "房屋租赁",
                            style: TextStyle(
                              color: CustomColors.textDark,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "求租 出租",
                            style: TextStyle(
                              color: CustomColors.textLight,
                              fontSize: 12,
                            ),
                          ),
                          SizedBox(width: 5),
                          Icon(
                            color: Colors.grey[200],
                            Icons.arrow_forward_ios,
                            size: 9,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: InkWell(
              onTap: () {
                logic.toDetail(
                  "https://info.19lou.com/wap/xz/xz-${logic.cityId}.html",
                );
              },
              child: Center(
                child: IntrinsicWidth(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            "assets/images/map_head_2.png",
                            width: 20,
                            height: 25,
                          ),
                          SizedBox(width: 5),
                          Text(
                            "闲置转让",
                            style: TextStyle(
                              color: CustomColors.textDark,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "同城面交更放心",
                            style: TextStyle(
                              color: CustomColors.textLight,
                              fontSize: 12,
                            ),
                          ),
                          SizedBox(width: 5),
                          Icon(
                            color: Colors.grey[200],
                            Icons.arrow_forward_ios,
                            size: 9,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: InkWell(
              onTap: () {
                logic.toDetail(
                  "https://info.19lou.com/wap/zf/zf-${logic.cityId}.html",
                );
              },
              child: Center(
                child: IntrinsicWidth(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            "assets/images/map_head_3.png",
                            width: 20,
                            height: 25,
                          ),
                          SizedBox(width: 5),
                          Text(
                            "人才招聘",
                            style: TextStyle(
                              color: CustomColors.textDark,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "找工作快人一步",
                            style: TextStyle(
                              color: CustomColors.textLight,
                              fontSize: 12,
                            ),
                          ),
                          SizedBox(width: 5),
                          Icon(
                            color: Colors.grey[200],
                            Icons.arrow_forward_ios,
                            size: 9,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _recordList(RecordListDataItems item) {
    return InkWell(
      onTap: () {
        logic.toDetail(item.detailUrl);
      },
      child: Container(
        padding: EdgeInsets.fromLTRB(15, 10, 15, 0),
        color: Colors.white,
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(3),
                  child: SizedBox(
                    width: 120,
                    height: 90,
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        CachedNetworkImage(
                          imageUrl: item.mainImgUrl,
                          width: double.infinity,
                          height: double.infinity,
                          fit: BoxFit.cover,
                          memCacheWidth: 240,
                          memCacheHeight: 180,
                          errorWidget: (context, url, error) => Image.asset(
                            "assets/images/default_img_wide.png", // 本地错误图路径
                            width: 120,
                            height: 90,
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                        Container(
                          width: 120,
                          height: 17,
                          color: Colors.black.withValues(alpha: 0.32),
                          alignment: Alignment.center,
                          child: Text(
                            logic.getDesc(item),
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        logic.getTitle(item),
                        style: TextStyle(
                          color: CustomColors.textDark,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(height: 5),
                      Text(
                        logic.getAddress(item),
                        style: TextStyle(
                          color: CustomColors.textLight,
                          fontSize: 12,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),

                      if (item.showTag.isNotEmpty) SizedBox(height: 5),
                      if (item.showTag.isNotEmpty)
                        _buildSingleLineTags(item.showTag.split(",")),
                      SizedBox(height: 2),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            logic.getPrice(item),
                            style: TextStyle(
                              color: CustomColors.badge,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            DateTools.getDayBefore(item.refreshAt, true),
                            style: TextStyle(
                              color: CustomColors.textLight,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Divider(height: 1, thickness: 1, color: Colors.grey[200]),
          ],
        ),
      ),
    );
  }

  Widget _buildSingleLineTags(List<String> tags) {
    tags.removeWhere((tag) => tag.isEmpty);
    return SizedBox(
      height: 32, // 根据你的标签高度调整，确保只显示一行
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        physics: NeverScrollableScrollPhysics(),
        child: Row(
          children: tags.map((tag) {
            return Padding(
              padding: EdgeInsets.only(right: 2),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                decoration: BoxDecoration(
                  color: CustomColors.tabBg,
                  borderRadius: BorderRadius.circular(9),
                ),
                child: Text(
                  tag,
                  style: TextStyle(fontSize: 11, color: CustomColors.textLight),
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
