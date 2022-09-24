import 'package:flutter/material.dart';

import 'btn_list.dart';

class NaviSecond extends StatefulWidget {
  const NaviSecond({Key? key}) : super(key: key);

  @override
  _NaviSecondState createState() => _NaviSecondState();
}

class _NaviSecondState extends State<NaviSecond> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.red,
        child: BtnList(),
      ),
    );
  }
}
