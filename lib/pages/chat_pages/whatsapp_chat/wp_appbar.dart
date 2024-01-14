import 'package:flutter/material.dart';

class WpAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  const WpAppBar({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.teal,
      centerTitle: true,
      elevation: 0,
      // title: Text(title, style: TextStyle(color: Colors.black),),
      automaticallyImplyLeading: true,
      leadingWidth: double.maxFinite,
      leading: Row(children: [
        Padding(
          padding: const EdgeInsets.only(left: 5),
          child: Icon(Icons.arrow_back),
        ),
        CircleAvatar(
          radius: 17,
          backgroundImage: AssetImage("assets/wp_back.png"),
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          "Aziz",
          style: TextStyle(fontWeight: FontWeight.bold),
        )
      ]),
      actions: [
        Icon(Icons.video_call),
        SizedBox(
          width: 10,
        ),
        Icon(
          Icons.call,
          size: 21,
        ),
        SizedBox(
          width: 10,
        ),
        PopupMenuButton(
          // add icon, by default "3 dot" icon
           icon: Icon(Icons.more_vert),
            itemBuilder: (context){
              return [
                PopupMenuItem<int>(
                  value: 0,
                  child: Text("Sender"),
                ),
                PopupMenuItem<int>(
                  value: 1,
                  child: Text("Receiver"),
                ),

              ];
            },
            onSelected:(value){
              if(value == 0){
                print("My account menu is selected.");
              }else if(value == 1){
                print("Settings menu is selected.");
              }else if(value == 2){
                print("Logout menu is selected.");
              }
            }
        ),
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size(0, 53);
}
