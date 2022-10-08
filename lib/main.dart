import 'package:flutter/material.dart';
import 'package:flutter_app/First_page.dart';
import 'package:flutter_app/asyncFun/async_home.dart';
import 'package:flutter_app/location/location_home.dart';




void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AsyncHome(),
    );
  }
}
