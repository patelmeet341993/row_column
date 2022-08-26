import 'package:flutter/material.dart';


class HomePage1 extends StatefulWidget {
  const HomePage1({Key? key}) : super(key: key);

  @override
  _HomePage1State createState() => _HomePage1State();
}

class _HomePage1State extends State<HomePage1> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                color: Colors.red,
        
                width: double.maxFinite,
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.grey,

                width: double.maxFinite,
              ),
            ),
            
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.green,
               
                width: double.maxFinite,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
