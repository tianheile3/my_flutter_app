import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_refresh/easy_refresh.dart';
import 'package:flutter/material.dart';
import 'package:flutter_study/page/home_tab_page.dart';
import 'package:flutter_study/utils/custom_colors.dart';
import 'package:flutter_study/utils/date_tools.dart';
import 'package:flutter_study/viewModel/map_view_model.dart';
import 'package:provider/provider.dart';

import '../api/response/map_config_entity.dart';
import '../api/response/record_list_entity.dart';
import '../base/base_state.dart';

/// 分类 Tab 页面
class CategoryTabPage extends BaseStatefulWidget {
  const CategoryTabPage({super.key});

  @override
  BaseState<BaseStatefulWidget> createState() => _CategoryPageState();
}

class _CategoryPageState extends BaseState<CategoryTabPage> {
  late final MapViewModel _viewModel;

  final EasyRefreshController _controller = EasyRefreshController(
    controlFinishRefresh: true,
    controlFinishLoad: true,
  );

  @override
  void initState() {
    super.initState();
    _viewModel = MapViewModel();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _onRefresh(_viewModel);
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Future<void> _onRefresh(MapViewModel viewModel) async {
    _controller.resetFooter();
    await viewModel.onRefresh((bool success, bool hasMore) {
      if (!success) {
        _controller.finishRefresh(IndicatorResult.fail);
      } else {
        _controller.finishRefresh(IndicatorResult.success);
        if (!hasMore) {
          _controller.finishLoad(IndicatorResult.noMore);
        }
      }
    });
  }

  Future<void> _onLoad(MapViewModel viewModel) async {
    await viewModel.onLoadMore((bool success, bool hasMore) {
      if (!success) {
        _controller.finishLoad(IndicatorResult.fail);
      } else {
        _controller.finishLoad(
          hasMore ? IndicatorResult.success : IndicatorResult.noMore,
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: _viewModel,
      child: Consumer<MapViewModel>(
        builder: (context, viewModel, child) {
          if (viewModel.loadState == LoadState.refreshing) {
            return Scaffold(body: Center(child: CircularProgressIndicator()));
          }

          if (viewModel.loadState == LoadState.failed) {
            return Scaffold(
              body: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    viewModel.errorMessage,
                    style: const TextStyle(color: Colors.red),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () => _onRefresh(viewModel),
                    child: const Text('重试'),
                  ),
                ],
              ),
            );
          }

          return Scaffold(
            body: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
              child: EasyRefresh(
                onRefresh: () => _onRefresh(viewModel),
                onLoad: () => _onLoad(viewModel),
                controller: _controller,
                child: ListView.builder(
                  itemCount: viewModel.items.length,
                  itemBuilder: (context, index) {
                    final item = viewModel.items[index];
                    if (item is MapConfigGroupList) {
                      if (item.displayType == 1) {
                        return _type1Widget(viewModel, item);
                      } else if (item.displayType == 2) {
                        return _type2Widget(viewModel, item);
                      } else {
                        return _type3Widget(viewModel, item);
                      }
                    } else if (item is RecordListDataItems) {
                      return _recordList(viewModel, item);
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
            ),
          );
        },
      ),
    );
  }

  Widget _type1Widget(MapViewModel viewModel, MapConfigGroupList bean) {
    //不知
    return Container(color: Colors.red, width: 100, height: 100);
  }

  Widget _type2Widget(MapViewModel viewModel, MapConfigGroupList bean) {
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
                mainAxisSpacing: imageGridSpacing,
                crossAxisSpacing: imageGridSpacing,
                childAspectRatio: 1.3,
              ),
              itemBuilder: (context, index) {
                final item = bean.itemList[index];
                return Column(
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
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _type3Widget(MapViewModel viewModel, MapConfigGroupList bean) {
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
                return Stack(
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
          Expanded(
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
          Expanded(
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
        ],
      ),
    );
  }

  Widget _recordList(MapViewModel viewModel, RecordListDataItems item) {
    return Container(
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
                          viewModel.getDesc(item),
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
                      viewModel.getTitle(item),
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
                      viewModel.getAddress(item),
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
                          viewModel.getPrice(item),
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
