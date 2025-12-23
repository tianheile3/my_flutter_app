import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import '../../api/response/file_upload_entity.dart';
import '../../common/some_publish.dart';
import '../../utils/download_util.dart';
import '../../utils/permission_utils.dart';
import '../../utils/upload_utils.dart';

class TestLogic extends BaseController {
  final RxList<FileUploadFile> images = <FileUploadFile>[].obs;
  final _picker = ImagePicker();

  void saveFile() {
    DownloadUtil().download(
      url: "https://m.19lou.com/config_data.json?llll=llll",
      fileName: "config_data",
      onProgress: (progress) {
        logger.d("下载进度：${(progress * 100).toStringAsFixed(1)}%");
      },
      onSuccess: (path) {
        logger.d("下载成功，目录：$path");
      },
      onError: (error) {
        logger.d(error);
      },
    );
  }

  void saveImage() {
    DownloadUtil().saveNetworkImage(
      imageUrl: "https://picsum.photos/1000/1000",
      onSuccess: () {
        Fluttertoast.showToast(msg: "保存成功");
      },
      onError: (error) {
        logger.d(error);
      },
    );
  }

  // 选择图片（相册）
  Future<void> pickFromGallery() async {
    if (await PermissionUtils.requestImagePermission()) {
      List<XFile> result = await _picker.pickMultiImage(limit: 9);
      for (var image in result) {
        final entity = FileUploadFile();
        entity.path = image.path;
        entity.status.value = "loading";
        images.add(entity);
      }
    }
  }

  // 拍摄图片（相机）
  Future<void> pickFromCamera() async {}

  //并发更新
  Future<void> uploadImageWithUpdateTogether() async {
    if (images.isEmpty) return;
    // 1. 筛选需要上传的图片（排除已上传的）
    final needUploadItems = images.where((item) => item.aid.isEmpty).toList();
    if (needUploadItems.isEmpty) return;
    // 2. 批量生成上传任务（不立即执行）
    final uploadTasks = needUploadItems
        .map((item) => UploadUtils(item).doUpload())
        .toList();
    // 3. 并行执行所有上传任务，等待全部完成
    await Future.wait(uploadTasks);
  }

  Future<void> uploadImage() async {
    if (images.isEmpty) return;
    // 1. 筛选需要上传的图片（排除已上传的）
    final needUploadItems = images.where((item) => item.aid.isEmpty).toList();
    if (needUploadItems.isEmpty) return;

    // 并行执行，每个任务完成后立即刷新UI
    for (var item in needUploadItems) {
      // 不加 await，让任务异步并行执行
      UploadUtils(item).doUpload().catchError((e) {
        logger.d("单张上传失败：$e");
      });
    }
  }
}
