import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_study/models/media_model.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:image_picker/image_picker.dart';

import '../../common/some_publish.dart';
import '../../utils/auth_utils.dart';
import '../../utils/permission_utils.dart';
import '../../utils/upload_utils.dart';
import 'state.dart';

class PostThreadLogic extends BaseController {
  final PostThreadState state = PostThreadState();
  final TextEditingController controller = TextEditingController();
  final _picker = ImagePicker();

  @override
  void onInit() {
    super.onInit();
    controller.addListener(() {
      state.textLength.value = controller.text.length;
    });
    _initAdd();
  }

  @override
  void onClose() {
    controller.dispose();
    super.onClose();
  }

  void _initAdd() {
    if (_getImageNum() < 9) {
      state.imageList.add(MediaModel(itemType: 2));
    }
    if (!state.hasVideo) {
      state.imageList.add(MediaModel(itemType: 3));
    }
  }

  // 选择图片（相册）
  Future<void> pickFromGallery() async {
    var limit = state.maxNum - _getImageNum();
    if (limit <= 0) {
      return;
    }
    final temp = _getImages();
    if (await PermissionUtils.requestImagePermission()) {
      List<XFile> result = await _picker.pickMultiImage(limit: limit);
      state.imageList.clear();
      state.imageList.addAll(temp);
      for (int i = 0; i < result.length && i < limit; i++) {
        final entity = MediaModel();
        entity.cover = result[i].path;
        entity.status.value = "uploading";
        state.imageList.add(entity);
      }
      _initAdd();
    }
  }

  int _getImageNum() {
    return state.imageList.where((item) => item.itemType == 0).toList().length;
  }

  List<MediaModel> _getImages() {
    return state.imageList.where((item) => item.itemType == 0).toList();
  }

  Future<void> uploadImage() async {
    if (state.imageList.isEmpty) return;
    // 1. 筛选需要上传的图片（排除已上传的）
    final needUploadItems = state.imageList
        .where((item) => item.file?.aid.isEmpty ?? true)
        .toList();
    if (needUploadItems.isEmpty) return;

    // 并行执行，每个任务完成后立即刷新UI
    for (var item in needUploadItems) {
      // 不加 await，让任务异步并行执行
      UploadUtils(item).doUpload().catchError((e) {
        logger.d("单张上传失败：$e");
      });
    }
  }

  bool _checkAll() {
    if (state.isPost) {
      return false;
    }
    if (state.hasVideo && state.videoData == null) {
      Fluttertoast.showToast(msg: "视频正在上传 请稍等");
      return false;
    }
    if (state.imageList.isNotEmpty) {
      for (final entry in state.imageList.asMap().entries) {
        final index = entry.key;
        final value = entry.value;
        if (value.itemType == 0 && value.status.value != "success") {
          Fluttertoast.showToast(msg: "第$index张图片上传失败，请重新上传");
          return false;
        }
      }
    }
    if (state.textLength.value <= 0) {
      Fluttertoast.showToast(msg: "正文不能为空");
      return false;
    }
    if (state.textLength.value > state.maxLength) {
      Fluttertoast.showToast(msg: "您输入的字数过多");
      return false;
    }
    state.isPost = true;
    return true;
  }

  Future<void> doPost() async {
    if (_checkAll()) {
      return;
    }
    final params = AuthUtils.buildCommonFormParams();
    final formData = FormData.fromMap({
      "fid": state.fid,
      "subject": await _toTextFile("无标题"),
      "content": await _toTextFile(controller.text.trim()),
      ...params,
    });
    var images = _getImages();
    if (images.isNotEmpty) {
      formData.fields.add(MapEntry("fileType", "2"));
      for (var item in images) {
        formData.fields.add(MapEntry("file", item.file!.aid));
      }
    } else {
      formData.fields.add(MapEntry("fileType", "1"));
    }
    final result = await api.publishThread(formData);
    if (result != null && result.code == 1) {
      Fluttertoast.showToast(msg: "发布成功");
    }
  }

  // 封装文本字段转MultipartFile的方法
  Future<MultipartFile> _toTextFile(String value) async {
    return MultipartFile.fromString(
      value,
      contentType: DioMediaType("text", "plain", {"charset": "UTF-8"}),
    );
  }
}
