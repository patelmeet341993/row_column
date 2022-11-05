import 'package:flutter/material.dart';

class HeroAnim1 extends StatefulWidget {
  const HeroAnim1({Key? key}) : super(key: key);

  @override
  _HeroAnim1State createState() => _HeroAnim1State();
}

class _HeroAnim1State extends State<HeroAnim1> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Center(
          child: Hero(
              tag: "myanim",
              child: Icon(
                Icons.account_circle_rounded,
                size: 200,
              ))),
    ));
  }
}
