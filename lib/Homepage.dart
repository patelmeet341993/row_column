import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(

          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              color: Colors.red,
              height: 50,
              width: 50,
            ),
            Container(
              color: Colors.grey,
              height: 50,
              width: double.maxFinite,
            ),
            Container(
              color: Colors.green,
              height: 50,
              width: double.maxFinite,
            ),
          ],
        ),
      ),
    );
  }
}
