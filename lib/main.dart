import 'package:easy_refresh/easy_refresh.dart';
import 'package:flutter/material.dart';
import 'package:flutter_study/api/network_manager.dart';
import 'package:flutter_study/page/home_page.dart';
import 'package:flutter_study/page/login_page.dart';
import 'package:flutter_study/utils/global_state.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  EasyRefresh.defaultHeaderBuilder = () => MaterialHeader();
  EasyRefresh.defaultFooterBuilder = () => ClassicFooter();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //整个app只有一个MaterialApp
    return MaterialApp(
      title: 'Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
      ),
      home: const LoadingPage(),
    );
  }
}

class LoadingPage extends StatefulWidget {
  const LoadingPage({super.key});

  @override
  State<LoadingPage> createState() => _MyLoadingPageState();
}

class _MyLoadingPageState extends State<LoadingPage> {
  String _errorMessage = '';

  @override
  void initState() {
    super.initState();
    // 安全地延迟执行跳转逻辑
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _initializeApp();
    });
  }

  Future<void> _initializeApp() async {
    try {
      await GlobalState.instance.getLocalStorage();
      if (GlobalState.instance.cityName == "") {
        GlobalState.instance.cityName = "taizhou";
      }
      if (!mounted) return; // 页面已销毁，直接退出
      final response = await NetworkManager().getApiClient().getSystemTime();
      if (response != null) {
        GlobalState.instance.systemTimeDiff =
            int.tryParse(response.systemTime) ?? 0;
      }
      if (!mounted) return;
      final isLogin = GlobalState.instance.userId > 0;
      await Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(
          builder: (context) => isLogin ? HomePage() : LoginPage(),
        ),
        (route) => false, // 移除所有之前的路由);
      );
    } catch (e) {
      setState(() {
        _errorMessage = '初始化失败: $e';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _errorMessage.isNotEmpty
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    _errorMessage,
                    style: const TextStyle(color: Colors.red),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: _initializeApp,
                    child: const Text('重试'),
                  ),
                ],
              )
            : const CircularProgressIndicator(), // 显示加载动画
      ),
    );
  }
}
