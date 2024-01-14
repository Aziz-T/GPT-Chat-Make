import 'package:flutter/cupertino.dart';

import '../models/message_model/message_model.dart';

class ChatPageProvider extends ChangeNotifier {
  List<MessageModel> messageModelList = [];

  Future<void> sendMessage({String? message, bool? isSender}) async {
    messageModelList.add(MessageModel(
      message: message,
      isSender: isSender ?? true,
    ));
    notifyListeners();
  }
}
