import 'package:flutter/material.dart';
import 'package:flutter_app/calc/mybtn.dart';
import 'package:flutter_app/navigation/btn_list.dart';
import 'package:flutter_app/navigation/navi_first.dart';
import 'package:flutter_app/navigation/navi_hird.dart';
import 'package:flutter_app/navigation/navi_second.dart';


class NaviMain extends StatefulWidget {
  const NaviMain({Key? key}) : super(key: key);

  @override
  _NaviMainState createState() => _NaviMainState();
}

class _NaviMainState extends State<NaviMain> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: BtnList(),
      ),
    );
  }
}
