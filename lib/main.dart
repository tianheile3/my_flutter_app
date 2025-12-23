import 'package:easy_refresh/easy_refresh.dart';
import 'package:flutter/material.dart';
import 'package:flutter_study/api/network_manager.dart';
import 'package:flutter_study/base/base_state.dart';
import 'package:flutter_study/route_config.dart';
import 'package:flutter_study/utils/global_state.dart';
import 'package:get/get.dart';

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

  @override
  Widget build(BuildContext context) {
    //整个app只有一个MaterialApp
    return GetMaterialApp(
      title: 'Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
      ),
      home: const LoadingPage(),
      initialRoute: MyRouteConfig.main,
      getPages: MyRouteConfig.getPages,
    );
  }
}

// GetX控制器管理加载逻辑和状态
class LoadingController extends GetxController {
  final Rx<LoadState> loadState = LoadState.refreshing.obs;
  final RxString errorMessage = ''.obs;

  Future<void> initializeApp() async {
    try {
      loadState.value = LoadState.refreshing;
      await GlobalState.instance.getLocalStorage();

      if (GlobalState.instance.cityName.isEmpty) {
        GlobalState.instance.cityName = "jiaxing";
      }

      final response = await NetworkManager().getApiClient().getSystemTime();
      if (response != null) {
        GlobalState.instance.systemTimeDiff =
            int.tryParse(response.systemTime) ?? 0;
      }

      // 检查是否登录并跳转
      final isLogin = GlobalState.instance.userId > 0;
      Get.offNamed(isLogin ? MyRouteConfig.mainHome : MyRouteConfig.login);
    } catch (e) {
      loadState.value = LoadState.failed;
      errorMessage.value = '初始化失败: $e';
    }
  }
}

class LoadingPage extends StatelessWidget {
  const LoadingPage({super.key});

  @override
  Widget build(BuildContext context) {
    // 实例化控制器（Get.put会自动管理生命周期）
    final controller = Get.put(LoadingController());

    // 页面构建完成后执行初始化
    WidgetsBinding.instance.addPostFrameCallback((_) {
      controller.initializeApp();
    });

    return Scaffold(
      body: Center(
        // 使用Obx监听状态变化
        child: Obx(() {
          return controller.loadState.value == LoadState.failed
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      controller.errorMessage.value,
                      style: const TextStyle(color: Colors.red),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () => controller.initializeApp(),
                      child: const Text('重试'),
                    ),
                  ],
                )
              : const CircularProgressIndicator();
        }),
      ),
    );
  }
}
