import 'package:flutter/material.dart';

import 'btn_list.dart';

class NaviThird extends StatefulWidget {
  const NaviThird({Key? key}) : super(key: key);

  @override
  _NaviThirdState createState() => _NaviThirdState();
}

class _NaviThirdState extends State<NaviThird> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.yellow,
        child: BtnList(),
      ),
    );
  }
}
