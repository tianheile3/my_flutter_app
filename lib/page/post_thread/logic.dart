import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_study/models/media_model.dart';
import 'package:flutter_study/utils/media_utils.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:image_picker/image_picker.dart';

import '../../common/some_publish.dart';
import '../../utils/auth_utils.dart';
import '../../utils/permission_utils.dart';
import '../../utils/upload_utils.dart';
import '../../widget/add_link_dialog.dart';
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
  Future<void> pickImageFromGallery() async {
    var limit = state.maxNum - _getImageNum();
    if (limit <= 0) {
      Fluttertoast.showToast(msg: "图片添加已达上限");
      return;
    }
    final temp = _getImages();
    final video = _getVideo();
    if (await PermissionUtils.requestImagePermission()) {
      List<XFile> result = await _picker.pickMultiImage(limit: limit);
      state.imageList.clear();
      if (video != null) {
        state.imageList.add(video);
      }
      state.imageList.addAll(temp);
      for (int i = 0; i < result.length && i < limit; i++) {
        final entity = MediaModel();
        entity.cover = result[i].path;
        state.imageList.add(entity);
      }
      _initAdd();
    }
  }

  // 从相册选择视频
  Future<void> pickVideoFromGallery() async {
    if (state.hasVideo) {
      Fluttertoast.showToast(msg: "只能添加一个视频");
      return;
    }
    final temp = _getImages();
    if (await PermissionUtils.requestImagePermission()) {
      final XFile? video = await _picker.pickVideo(source: ImageSource.gallery);
      state.imageList.clear();
      if (video != null) {
        var thumbnailPath = await MediaUtils.getFileThumbnail(video.path) ?? "";

        final entity = MediaModel(itemType: 1);
        entity.cover = thumbnailPath;
        state.imageList.add(entity);
        state.hasVideo = true;

        state.imageList.addAll(temp);
        _initAdd();

        var mediaInfo = await MediaUtils.compress(video.path);
        if (mediaInfo != null) {
          _getVideo()?.videoUrl = mediaInfo.path!;
        }
      }
    }
  }

  int _getImageNum() {
    return state.imageList.where((item) => item.itemType == 0).toList().length;
  }

  List<MediaModel> _getImages() {
    return state.imageList.where((item) => item.itemType == 0).toList();
  }

  MediaModel? _getVideo() {
    return state.imageList.firstWhereOrNull((item) => item.itemType == 1);
  }

  Future<void> uploadMedia() async {
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
    if (state.hasVideo) {
      final video = _getVideo();
      if (video?.file == null) {
        Fluttertoast.showToast(msg: "视频正在上传 请稍等");
        return false;
      }
    }
    if (state.imageList.isNotEmpty) {
      for (final entry in state.imageList.asMap().entries) {
        final index = entry.key;
        final value = entry.value;
        if (value.itemType == 0 && value.file == null) {
          Fluttertoast.showToast(msg: "第$index张图片上传失败，请重新上传");
          return false;
        }
        if (value.itemType == 1 && value.file == null) {
          Fluttertoast.showToast(msg: "视频上传失败，请重新上传");
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
    if (!_checkAll()) {
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
    var video = _getVideo();
    if (images.isNotEmpty || state.hasVideo) {
      formData.fields.add(MapEntry("fileType", "2"));
      if (video != null) {
        formData.fields.add(MapEntry("file", video.file!.aid));
      }
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

  Future<void> showLinkDialog(BuildContext context) async {
    final data = await AddLinkDialog.showLinkDialog(context);
    if (data != null) {
      logger.d(data.toString());
    }
  }
}
