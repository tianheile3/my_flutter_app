import 'package:flutter/cupertino.dart';
import 'package:flutter_study/utils/logger_mixin.dart';
import 'package:fluttertoast/fluttertoast.dart';

/// 基础有状态组件基类（已集成LoggerMixin）
abstract class BaseStatefulWidget extends StatefulWidget with LoggerMixin {
  const BaseStatefulWidget({super.key});

  @override
  BaseState createState();
}

// 定义请求状态枚举
enum LoadState {
  refreshing, // 加载中
  success, // 加载成功
  failed, // 加载失败
}

/// 基础状态类，已混入LoggerMixin
abstract class BaseState<T extends BaseStatefulWidget> extends State<T>
    with LoggerMixin {
  String errorMessage = ""; //刷新失败的日志

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
