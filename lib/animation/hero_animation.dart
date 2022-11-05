import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/animation/hero_anim1.dart';

class HeroAnim extends StatefulWidget {
  const HeroAnim({Key? key}) : super(key: key);

  @override
  _HeroAnimState createState() => _HeroAnimState();
}

class _HeroAnimState extends State<HeroAnim> {


  @override
  Widget build(BuildContext context) {

    // timeDilation=2;

    return SafeArea(
        child: Scaffold(
      body: InkWell(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (ctx) => HeroAnim1()));
          },
          child: Hero(
              tag: "myanim",
              child: Icon(
                Icons.account_circle_rounded,
                size: 40,
              ))),
    ));
  }
}
