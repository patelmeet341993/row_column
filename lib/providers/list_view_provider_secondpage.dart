
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_app/providers/item_list.dart';

class ListViewProviderSecondPage extends StatefulWidget {
  const ListViewProviderSecondPage({Key? key}) : super(key: key);

  @override
  _ListViewProviderSecondPageState createState() => _ListViewProviderSecondPageState();
}

class _ListViewProviderSecondPageState extends State<ListViewProviderSecondPage> {

  @override
  void initState() {
    super.initState();


  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(child:Scaffold(body: ItemList(),));
  }
}
