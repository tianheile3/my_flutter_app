import 'dart:convert';
import 'dart:typed_data';

import 'package:encrypt/encrypt.dart';
import 'package:flutter_study/utils/logger_mixin.dart';

class AESUtil with LoggerMixin {
  static String encrypt(String data, String secretKey) {
    try {
      final key = Key.fromUtf8(secretKey);
      final encrypter = Encrypter(AES(key, mode: AESMode.ecb));

      final encrypted = encrypter.encrypt(data);
      return base64Encode(Uint8List.fromList(encrypted.bytes));
    } catch (e) {
      Log.d('AES encrypt error: $e');
      return '';
    }
  }

  static String decrypt(String base64Data, String secretKey) {
    try {
      final key = Key.fromUtf8(secretKey);
      final encrypter = Encrypter(AES(key, mode: AESMode.ecb));

      final Uint8List encryptedBytes = base64Decode(base64Data);
      final encrypted = Encrypted(encryptedBytes);

      return encrypter.decrypt(encrypted);
    } catch (e) {
      Log.d('AES decrypt error: $e');
      return '';
    }
  }

  static String base64Encode(Uint8List bytes) {
    return base64.encode(bytes);
  }

  static Uint8List base64Decode(String base64Str) {
    return base64.decode(base64Str);
  }
}
