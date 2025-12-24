import 'dart:async';
import 'dart:ui';

class ClickUtils {
  static final Map<String, Timer> _timers = {};
  static const defaultInterval = 500; // 默认防抖间隔：500 毫秒

  /// 防抖点击方法（全局）
  static void onClick(VoidCallback action, {int interval = defaultInterval}) {
    _debounce('global', action, interval);
  }

  /// 带 key 的防抖点击（用于区分不同按钮）
  static void onClickWithKey(
    String key,
    VoidCallback action, {
    int interval = defaultInterval,
  }) {
    _debounce(key, action, interval);
  }

  /// 内部防抖逻辑
  static void _debounce(String key, VoidCallback action, int interval) {
    // 如果已有定时器，先取消（防止重复触发）
    _timers[key]?.cancel();

    // 启动新定时器
    _timers[key] = Timer(Duration(milliseconds: interval), () {
      _timers.remove(key); // 执行后清理
      action();
    });
  }

  /// 立即取消某个 key 的点击等待（可选）
  static void cancel(String key) {
    _timers[key]?.cancel();
    _timers.remove(key);
  }

  /// 取消所有等待中的点击
  static void cancelAll() {
    for (var timer in _timers.values) {
      timer.cancel();
    }
    _timers.clear();
  }
}
