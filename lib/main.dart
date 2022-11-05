import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_app/First_page.dart';
import 'package:flutter_app/animation/ColorAnim.dart';
import 'package:flutter_app/animation/hero_anim1.dart';
import 'package:flutter_app/animation/hero_animation.dart';
import 'package:flutter_app/animation/place_anim.dart';
import 'package:flutter_app/asyncFun/async_home.dart';
import 'package:flutter_app/location/location_home.dart';
import 'package:flutter_app/pageview/pageview_home.dart';
import 'package:flutter_app/providers/data_provider.dart';
import 'package:flutter_app/providers/listview_provider.dart';
import 'package:flutter_app/providers/provider_home.dart';
import 'package:provider/provider.dart';




void main() {
  runApp( MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => DataProvider()),
      ],
      child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PlaceAnimation(),
    );
  }
}
