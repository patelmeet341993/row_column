import 'package:flutter/material.dart';
import 'package:flutter_app/calc/Calc.dart';

import 'First_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Calc(),
    );
  }
}
