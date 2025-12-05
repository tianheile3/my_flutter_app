import 'package:flutter/cupertino.dart';
import 'package:flutter_study/utils/logger_mixin.dart';

/// 基础有状态组件基类（已集成LoggerMixin）
abstract class BaseStatefulWidget extends StatefulWidget with LoggerMixin {
  const BaseStatefulWidget({super.key});

  @override
  BaseState createState();
}

/// 基础状态类，已混入LoggerMixin
abstract class BaseState<T extends BaseStatefulWidget> extends State<T>
    with LoggerMixin {
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
  Widget build(BuildContext context) {
    throw UnimplementedError('子类必须实现build方法');
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
