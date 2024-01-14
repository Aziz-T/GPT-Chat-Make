import 'package:gptchatmake/pages/chat_pages/whatsapp_chat/receiver_bubble.dart';
import 'package:gptchatmake/pages/chat_pages/whatsapp_chat/sender_bubble.dart';
import 'package:gptchatmake/pages/chat_pages/whatsapp_chat/wp_appbar.dart';
import 'package:gptchatmake/pages/chat_pages/whatsapp_chat/wp_send_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../providers/chat_page_provider.dart';

class WpChatPage extends StatefulWidget {
  const WpChatPage({Key? key}) : super(key: key);

  @override
  State<WpChatPage> createState() => _WpChatPageState();
}

class _WpChatPageState extends State<WpChatPage> {
  late TextEditingController _controller;
  ScrollController _scrollController = new ScrollController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: WpAppBar(title: "Whatsapp Chat"),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/wp_back.png"), fit: BoxFit.fill)),
        child: Column(children: [
          Expanded(
            child: Consumer<ChatPageProvider>(builder: (context, provider, w) {
              return ListView.builder(
                  controller: _scrollController,
                  shrinkWrap: true,
                  padding: const EdgeInsets.all(8),
                  itemCount: provider.messageModelList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return provider.messageModelList[index].isSender
                        ? SenderBubble(
                            message: provider.messageModelList[index].message??"",
                            isLastMessage: false)
                        : ReceiverBubble(message: "Message", isLastMessage: true);
                  });
            }),
          ),
          WpSendWidget(
              controller: _controller,
              onTap: () {
              if(_controller.text.isNotEmpty)
                context
                    .read<ChatPageProvider>()
                    .sendMessage(message: _controller.text,isSender: true);
                _scrollController.animateTo(
                  _scrollController.position.maxScrollExtent,
                  curve: Curves.easeOut,
                  duration: const Duration(milliseconds: 300),
                );
                _controller.clear();
              }),
        ]),
      ),
    );
  }
}
