import 'package:flutter/material.dart';
import 'package:flutter_app/First_page.dart';
import 'package:flutter_app/Homepage2.dart';

import 'Homepage1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FirstPage(),
    );
  }
}
