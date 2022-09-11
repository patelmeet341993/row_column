import 'package:flutter/material.dart';

class ListViewSimple extends StatefulWidget {
  const ListViewSimple({Key? key}) : super(key: key);

  @override
  _ListViewSimpleState createState() => _ListViewSimpleState();
}

class _ListViewSimpleState extends State<ListViewSimple> {

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
                child: SingleChildScrollView(
                  child: Column(
                    children: [

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
