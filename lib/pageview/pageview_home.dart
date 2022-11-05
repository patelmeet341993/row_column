import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/asyncFun/async_home.dart';
import 'package:flutter_app/calc/Calc.dart';
import 'package:flutter_app/location/location_home.dart';
import 'package:flutter_app/navigation/navi_main.dart';
import 'package:flutter_app/providers/provider_home.dart';

class PageViewHome extends StatefulWidget {
  const PageViewHome({Key? key}) : super(key: key);

  @override
  _PageViewHomeState createState() => _PageViewHomeState();
}

class _PageViewHomeState extends State<PageViewHome> {
  late PageController controller;

  @override
  void initState() {
    super.initState();

    controller = PageController(initialPage: 1);

  //  controller.jumpToPage(1);
  }

  @override
  Widget build(BuildContext context) {
    print("build");
    return SafeArea(
      child: Scaffold(
        body: PageView.builder(
            itemCount: 5,
            controller: controller,
            itemBuilder: (context, index) {

          if(index==0)
            return ProviderHome();
          else if(index==1)
            return NaviMain();
          else if(index==2)
            LocationHome();


           return Calc();

        }),
      ),
    );
  }

  Widget pageViewNormal() {
    return PageView(
      controller: controller,
      scrollDirection: Axis.vertical,
      onPageChanged: (i) {
        print("change : $i");
      },
      children: [
        ProviderHome(),
        NaviMain(),
        LocationHome(),
        Calc(),
        AsyncHome(),
      ],
    );
  }
}
