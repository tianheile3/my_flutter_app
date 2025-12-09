import 'package:flutter/cupertino.dart';
import 'package:flutter_study/utils/logger_mixin.dart';
import 'package:fluttertoast/fluttertoast.dart';

/// 基础有状态组件基类（已集成LoggerMixin）
abstract class BaseStatefulWidget extends StatefulWidget with LoggerMixin {
  const BaseStatefulWidget({super.key});

  @override
  BaseState createState();
}

/// 基础状态类，已混入LoggerMixin
abstract class BaseState<T extends BaseStatefulWidget> extends State<T>
    with LoggerMixin {

  // 添加加载状态标识
  bool isRefreshFailed = false;//刷新失败
  String errorMessage = "";//刷新失败的日志

  bool isRefreshing = false;//下拉刷新中
  bool isLoadingMore = false;//上拉加载中
  bool isLoadComplete = false;//没有加载更多

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  void didUpdateWidget(covariant T oldWidget) {
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    throw UnimplementedError('子类必须实现build方法');
  }

  // 显示错误提示Toast
  void showErrorToast(String message) {
    if (mounted) {
      Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
      );
    }
  }
}

/// 基础无状态类，已混入LoggerMixin
abstract class BaseStatelessWidget extends StatelessWidget with LoggerMixin {
  const BaseStatelessWidget({super.key});

  @override
  Widget build(BuildContext context) {
    throw UnimplementedError('子类必须实现build方法');
  }
}
