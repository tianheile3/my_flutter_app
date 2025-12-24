import 'package:get/get.dart';

import '../api/response/file_upload_entity.dart';

class MediaModel {
  int itemType = 0; //图片0,视频1,加图片2，加视频3
  String cover = ""; //封面
  String videoUrl = ""; //视频地址
  FileUploadFile? file;

  RxString status = "uploading".obs; //状态，success,fail,uploading

  MediaModel({this.itemType = 0});
}
