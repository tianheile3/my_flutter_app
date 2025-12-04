import 'package:flutter/material.dart';
import 'package:flutter_study/api/service/auth_service.dart';
import 'package:flutter_study/base/base_state.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'main_home_page.dart';

class LoginPage extends BaseStatelessWidget {
  LoginPage({super.key});

  final TextEditingController _username = TextEditingController(
    text: "zhangcheng504",
  );
  final TextEditingController _password = TextEditingController(
    text: "q1234567",
  );

  Future<void> _handleLogin(BuildContext context) async {
    String username = _username.text.trim();
    String password = _password.text.trim();
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
      // 检查当前widget是否仍然挂载
      if (!context.mounted) return;
      await Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) => MainHomePage()),
        (route) => false,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("登录")),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //账号
            TextField(
              controller: _username,
              decoration: const InputDecoration(
                labelText: "账号",
                hintText: "请输入账号",
                prefixIcon: Icon(Icons.person),
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.text,
            ),
            const SizedBox(height: 15),
            //密码
            TextField(
              controller: _password,
              decoration: const InputDecoration(
                labelText: "密码",
                hintText: "请输入密码",
                prefixIcon: Icon(Icons.lock),
                border: OutlineInputBorder(),
              ),
              obscureText: true,
              keyboardType: TextInputType.visiblePassword,
            ),
            const SizedBox(height: 30),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () => _handleLogin(context),
                style: ElevatedButton.styleFrom(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Text("登录", style: TextStyle(fontSize: 18)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
