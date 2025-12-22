typedef LoadMoreCallback = void Function(bool success, bool hasMore);

enum LoadState {
  refreshing, // 加载中
  success, // 加载成功
  failed, // 加载失败
}
