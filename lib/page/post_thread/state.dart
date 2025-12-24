import 'package:flutter_study/models/media_model.dart';
import 'package:get/get.dart';

import '../../api/response/file_upload_entity.dart';

class PostThreadState {
  final maxNum = 9;
  late final int fid;
  late final String cityName;
  RxList<MediaModel> imageList = <MediaModel>[].obs;
  FileUploadFile? videoData;
  bool hasVideo = false;

  final RxInt textLength = 0.obs;
  final int maxLength = 400;

  final RxString gather = "合集选项".obs;

  bool isPost = false;

  PostThreadState() {
    fid = 988;
    cityName = "hangzhou";
  }
}
