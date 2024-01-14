
import 'package:flutter/material.dart';

import '../../widgets/custom_app_bar.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: CustomAppBar(title: "Search Page"),);
  }
}
