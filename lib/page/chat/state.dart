import 'package:get/get.dart';

class ChatState {
  late String chatName;
  late String toUid;
  late String dialogId;

  final RxList<dynamic> items = [].obs;

  ChatState();
}
