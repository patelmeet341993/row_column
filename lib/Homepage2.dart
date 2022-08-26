import 'package:flutter/material.dart';


class HomePage2 extends StatefulWidget {
  const HomePage2({Key? key}) : super(key: key);

  @override
  _HomePage2State createState() => _HomePage2State();
}

class _HomePage2State extends State<HomePage2> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Row(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                color: Colors.red,
        
                height: double.maxFinite,
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.grey,

                height: double.maxFinite,
              ),
            ),
            
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.green,
               
                height: double.maxFinite,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
