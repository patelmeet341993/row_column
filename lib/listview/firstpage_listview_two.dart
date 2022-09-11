import 'package:flutter/material.dart';

class ListViewSimpleTwo extends StatefulWidget {
  const ListViewSimpleTwo({Key? key}) : super(key: key);

  @override
  _ListViewSimpleTwoState createState() => _ListViewSimpleTwoState();
}

class _ListViewSimpleTwoState extends State<ListViewSimpleTwo> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Colors.black,
          child: Column(
            children: [
              Container(color: Colors.black,
                width: double.maxFinite,
                height: 100,),

              Expanded(
                child: ListView(
                  children: [

                    Container(
                      height: 150,
                      width: double.maxFinite,
                      color: Colors.orangeAccent,
                    ),
                    Container(
                      height: 150,
                      width: double.maxFinite,
                      color: Colors.green,
                    ),
                    Container(
                      height: 150,
                      width: double.maxFinite,
                      color: Colors.orangeAccent,
                    ),
                    Container(
                      height: 150,
                      width: double.maxFinite,
                      color: Colors.red,
                    ),
                    Container(
                      height: 150,
                      width: double.maxFinite,
                      color: Colors.orangeAccent,
                    ),
                    Container(
                      height: 150,
                      width: double.maxFinite,
                      color: Colors.red,
                    ),
                    Container(
                      height: 150,
                      width: double.maxFinite,
                      color: Colors.orangeAccent,
                    ),
                    Container(
                      height: 150,
                      width: double.maxFinite,
                      color: Colors.red,
                    ),
                    Container(
                      height: 150,
                      width: double.maxFinite,
                      color: Colors.orangeAccent,
                    ),
                  ],
                ),
              ),

              Container(color: Colors.black,
                width: double.maxFinite,
                height: 100,),
            ],
          ),
        ),
      ),
    );
  }
}
