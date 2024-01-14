import 'package:flutter/material.dart';

import '../../../styles/colors.dart';

class WpSendWidget extends StatefulWidget {
  final VoidCallback onTap;
  final TextEditingController controller;
  const WpSendWidget({Key? key, required this.onTap, required this.controller}) : super(key: key);

  @override
  State<WpSendWidget> createState() => _WpSendWidgetState();
}

class _WpSendWidgetState extends State<WpSendWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 57,
      padding: EdgeInsets.all(4),
      child: Row(
        children: [
          Expanded(
            child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 2,right: 2),
                        child: Icon(Icons.emoji_emotions_outlined,color: Colors.grey.shade600),
                      ),
                      Expanded(
                        child: TextField(
                          controller: widget.controller,
                          decoration: InputDecoration(border: InputBorder.none,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 4,right: 4),
                        child: Transform.rotate(
                            angle: 345,
                            child: Icon(Icons.attach_file,color: Colors.grey.shade600)),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 4,right: 4),
                        child: Icon(Icons.camera_alt_rounded,color: Colors.grey.shade600),
                      ),
                    ],
                  ),
                )),
          ),
          InkWell(
            onTap: widget.onTap,
            child: Container(
              height: 40,
              width: 40,
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: CustomColors.teal_green),
              child: Center(child: Icon(Icons.send,color: Colors.white,size: 20,)),
            ),
          )
        ],
      ),
    );
  }
}
