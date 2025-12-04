import '../api/response/second_config_entity.dart';
import 'banner.dart';

enum HomeItemType { banner, discover, normal, single }

// 数据基类
abstract class HomeListItem {
  HomeItemType get type;
}

class BannerItem implements HomeListItem {
  List<BannerEntity> bannerList = [];

  BannerItem({required this.bannerList});

  @override
  HomeItemType get type => HomeItemType.banner;
}

class DiscoverItem implements HomeListItem {
  List<SecondConfigConfigInfoAppPortalInfo> discoveryList = [];

  DiscoverItem({required this.discoveryList});

  @override
  HomeItemType get type => HomeItemType.discover;
}
