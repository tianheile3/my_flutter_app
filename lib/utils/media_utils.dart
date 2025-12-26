import 'package:flutter_study/common/constants.dart';
import 'package:video_compress/video_compress.dart';

class MediaUtils {
  static String imgToAtt3Size(String? url, String imgSize) {
    if (url == null || url.isEmpty) {
      return "";
    }
    String result = url.trim();
    if (result.startsWith("//")) {
      result = "https:$result";
    }
    if (onlyCanUseAtt2(result)) {
      return result;
    }
    if (result.contains(Constants.ATT2_HOST)) {
      result = result.replaceFirst(
        Constants.ATT2_HOST,
        "${Constants.ATT3_HOST}$imgSize/",
      );
    } else {
      final regex = "att3.citysbs.com/(no|(m?\\d+x(\\d+)?))/";
      final match = RegExp(regex).firstMatch(result);
      if (match != null) {
        final temp = result.substring(match.start, match.end);
        result = result.replaceFirst(temp, '${Constants.ATT3_HOST}$imgSize/');
      }
    }
    return result;
  }

  static bool onlyCanUseAtt2(String? url) {
    return url == null ||
        url.endsWith('.gif') ||
        url.endsWith('.mp4') ||
        url.endsWith('.mp4.png');
  }

  static Future<String?> getFileThumbnail(String path) async {
    final thumbnailFile = await VideoCompress.getFileThumbnail(
      path,
      quality: 100,
      position: 1000,
    );
    return thumbnailFile.path;
  }

  static Future<MediaInfo?> compress(String path) async {
    MediaInfo? mediaInfo = await VideoCompress.compressVideo(path);
    return mediaInfo;
  }
}
