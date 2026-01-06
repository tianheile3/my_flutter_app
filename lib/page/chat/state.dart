import 'package:flutter_study/api/response/dialog_entity.dart';
import 'package:get/get.dart';

class ChatState {
  late String chatName;
  late int toUid;
  late String dialogId;

  String? nextDate;
  bool hasMore = true;

  final RxList<DialogContentList> items = RxList<DialogContentList>();

  ChatState();
}
