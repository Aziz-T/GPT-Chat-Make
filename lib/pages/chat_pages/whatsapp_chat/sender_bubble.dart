
import 'package:gptchatmake/pages/chat_pages/whatsapp_chat/triangle_widget.dart';
import 'package:flutter/material.dart';

import '../../../styles/colors.dart';

class SenderBubble extends StatelessWidget {
  final String message;
  final bool isLastMessage;


  const SenderBubble(
      {super.key, required this.message,
      required this.isLastMessage,
     });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: isLastMessage
          ?EdgeInsets.only(right: 12,top: 4,left: 40): EdgeInsets.only(right: 2,top:8,left: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end ,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
            child: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: CustomColors.sender_bubble_color,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8),
                    topRight: isLastMessage
                        ?Radius.circular(8):Radius.circular(0),
                    bottomLeft: Radius.circular(8),
                    bottomRight: Radius.circular(8),
                  )),
              child: Text(message),
            ),
          ),
          isLastMessage
              ? SizedBox.shrink()
              : TriangleWidget(width: 12, height: 12, color: CustomColors.sender_bubble_color)
        ],
      ),
    );
  }
}
