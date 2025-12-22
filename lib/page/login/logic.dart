import 'package:flutter/material.dart';
import 'package:flutter_study/api/service/auth_service.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

import '../main_home/view.dart';

class LoginLogic extends GetxController {
  final TextEditingController usernameController = TextEditingController(
    text: "zhangcheng504",
  );
  final TextEditingController passwordController = TextEditingController(
    text: "q1234567",
  );

  Future<void> handleLogin() async {
    String username = usernameController.text.trim();
    String password = passwordController.text.trim();
    if (username.isEmpty) {
      Fluttertoast.showToast(msg: "用户名不能为空");
      return;
    }
    if (password.isEmpty) {
      Fluttertoast.showToast(msg: "密码不能为空");
      return;
    }
    final success = await AuthService().performLogin(username, password);
    if (success) {
      Fluttertoast.showToast(msg: "登录成功");
      // 等待toast显示后再导航（可选）
      await Future.delayed(const Duration(milliseconds: 500));
      Get.offAll(() => MainHomePage());
    }
  }

  @override
  void onClose() {
    usernameController.dispose();
    passwordController.dispose();
    super.onClose();
  }
}
