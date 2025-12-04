import 'dart:convert';

import 'package:crypto/crypto.dart'; // 注意：不是 encrypt

class CryptoUtils {
  /// MD5 加密并返回小写字符串
  static String md5Encode(String input) {
    return md5.convert(utf8.encode(input)).toString();
  }
}
