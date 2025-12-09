import 'package:easy_refresh/easy_refresh.dart';
import 'package:flutter/material.dart';
import 'package:flutter_study/api/network_manager.dart';
import 'package:flutter_study/base/base_state.dart';
import 'package:flutter_study/page/login_page.dart';
import 'package:flutter_study/page/main_home_page.dart';
import 'package:flutter_study/utils/global_state.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  initEasyRefresh();
  runApp(const MyApp());
}

void initEasyRefresh() {
  // EasyRefresh.defaultHeaderBuilder = () => ClassicHeader(
  //   dragText: "下拉刷新",
  //   armedText: "释放刷新",
  //   readyText: "正在刷新...",
  //   processingText: "正在刷新...",
  //   processedText: "刷新成功",
  //   noMoreText: "没有更多数据了",
  //   failedText: "刷新失败",
  //   messageText: "上次更新于 %T",
  // );
  EasyRefresh.defaultHeaderBuilder = () => MaterialHeader();
  EasyRefresh.defaultFooterBuilder = () => ClassicFooter(
    dragText: "上拉加载",
    armedText: "释放加载",
    readyText: "正在加载...",
    processingText: "正在加载...",
    processedText: "加载成功",
    noMoreText: "没有更多数据了",
    failedText: "加载失败",
    messageText: "上次更新于 %T",
  );
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

class LoadingPage extends BaseStatefulWidget {
  const LoadingPage({super.key});

  @override
  BaseState<LoadingPage> createState() => _MyLoadingPageState();
}

class _MyLoadingPageState extends BaseState<LoadingPage> {
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
      setState(() {
        isRefreshFailed = false;
        errorMessage = "";
      });
      await GlobalState.instance.getLocalStorage();
      if (GlobalState.instance.cityName == "") {
        GlobalState.instance.cityName = "jiaxing";
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
          builder: (context) => isLogin ? MainHomePage() : LoginPage(),
        ),
        (route) => false, // 移除所有之前的路由);
      );
    } catch (e) {
      setState(() {
        isRefreshFailed = true;
        errorMessage = '初始化失败: $e';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: isRefreshFailed
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    errorMessage,
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
