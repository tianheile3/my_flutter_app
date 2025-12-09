import 'package:dio/dio.dart';
import 'package:flutter_study/api/network_manager.dart';
import 'package:flutter_study/utils/auth_utils.dart';

import '../../utils/aes_utils.dart';
import '../../utils/global_state.dart';
import '../response/token_entity.dart';

class AuthService {
  final api = NetworkManager().getApiClient();

  Future<TokenEntity?> login({
    required String username,
    required String passwordEncrypt,
  }) async {
    final params = AuthUtils.buildCommonFormParams();
    final formData = FormData.fromMap({
      'grant_type': 'password',
      'username': username,
      'passwordEncrypt': passwordEncrypt,
      ...params,
    });

    return api.login(formData);
  }

  Future<bool> performLogin(String username, String password) async {
    final key = await api.getEncryptKey();
    if (key == null) return false;

    final encrypted = AESUtils.encrypt(password, key.encryptKey);
    final token = await login(username: username, passwordEncrypt: encrypted);

    if (token == null) return false;

    GlobalState.instance.token = token.accessToken;
    final info = await api.getCurrentUserInfo();
    if (info == null) {
      return false;
    }
    GlobalState.instance.userId = info.user.uid;
    return true;
  }
}
