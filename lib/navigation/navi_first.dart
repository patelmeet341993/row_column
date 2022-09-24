import 'package:flutter/material.dart';
import 'package:flutter_app/navigation/btn_list.dart';

class NaviFirst extends StatefulWidget {
  const NaviFirst({Key? key}) : super(key: key);

  @override
  _NaviFirstState createState() => _NaviFirstState();
}

class _NaviFirstState extends State<NaviFirst> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.amber,
        child: BtnList(),
      ),
    );
  }
}
