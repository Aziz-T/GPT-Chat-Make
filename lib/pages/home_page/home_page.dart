
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

import '../../widgets/custom_app_bar.dart';
import '../chat_pages/whatsapp_chat/whatsapp_chat_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Home Page"),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
        Get.to(WpChatPage());

        },
        child: Icon(Icons.add,color: Colors.white),
        backgroundColor: Colors.green,
      ),
    );
  }
}
