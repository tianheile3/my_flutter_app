import 'package:get/get.dart';

import '../../api/response/file_upload_entity.dart';

class PostThreadState {
  late final int fid;
  late final String cityName;
  RxList<FileUploadFile> imageList = <FileUploadFile>[].obs;

  PostThreadState() {
    fid = 998;
    cityName = "hangzhou";
  }
}
