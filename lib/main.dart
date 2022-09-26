import 'package:flutter/material.dart';
import 'package:flutter_app/bank_statement_listview/mybank_homepage.dart';
import 'package:flutter_app/calc/Calc.dart';
import 'package:flutter_app/image_load/image_home.dart';
import 'package:flutter_app/navigation/navi_main.dart';
import 'package:flutter_app/restapi/restapi_home.dart';
import 'package:flutter_app/story/story_home.dart';




void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: StoryHome(),
    );
  }
}
