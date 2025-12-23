import 'dart:ui';

import '../../common/custom_colors.dart';
import '../network_manager.dart';
import '../response/current_user_info_entity.dart';

class UserRepository {
  final api = NetworkManager().getApiClient();
  int postNum = 0;
  int rateNum = 0;
  int favNum = 0;

  // 获取用户信息
  Future<CurrentUserInfoUser?> getUserInfo() async {
    final info = await api.getCurrentUserInfo(
      withFavs: true,
      withCommentNum: true,
      withPosts: true,
    );
    if (info == null || info.code != "1") {
      return null;
    }
    return info.user;
  }

  // 获取背景图URL
  Future<String> getMobileBgUrl(int uid) async {
    final res = await api.getMobileBgUrl(uid: uid);
    return res?.bgUrl ?? "";
  }

  Color getSexColor(CurrentUserInfoUser? user) {
    if (user == null || user.genderPrivate == "1") {
      return CustomColors.sexOther;
    } else if (user.gender == "male") {
      return CustomColors.male;
    } else {
      return CustomColors.female;
    }
  }

  List<MineTabItem> getTabList(CurrentUserInfoUser user) {
    List<MineTabItem> list = [];
    var postNum = user.threads + user.comments;
    list.add(MineTabItem(title: "发布", num: postNum, type: 0));
    list.add(MineTabItem(title: "点赞", num: user.rateNum, type: 1));
    list.add(MineTabItem(title: "收藏", num: user.favCount, type: 2));
    if (user.userType == "1") {
      list.add(MineTabItem(title: "我的商家圈", num: -1, type: 3));
    }
    return list;
  }
}

class MineTabItem {
  String title = "";
  int num = 0;
  int type = 0;

  MineTabItem({required this.title, required this.num, required this.type});
}
