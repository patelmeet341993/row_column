import 'package:flutter/material.dart';
import 'package:flutter_app/calc/mybtn.dart';

class Calc extends StatefulWidget {
  const Calc({Key? key}) : super(key: key);

  @override
  _CalcState createState() => _CalcState();
}

class _CalcState extends State<Calc> {
  String str = "";

  String n1="";
  String n2="";



  void changeToA(){
    str="A";
    setState(() {});
  }

  void changeToB(){
    str="B";
    setState(() {});
  }


  void changeText(String text)
  {
    if(text=="=") {
      List<String> sr = str.split("+");
      n1=sr[0];
      n2=sr[1];
      str="";
    }
    else {
      str = str + text;

    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {

    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          Container(
            color: Colors.grey,
            child: Center(
              child: Text(
                str,
                style: TextStyle(fontSize: 40),
              ),
            ),
            width: double.maxFinite,
            height: 130,
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 100,
            child: Row(
              children: [
                Expanded(child: Mybtn(label: "A",btnClick: changeText,)),
                SizedBox(
                  width: 10,
                ),
                Expanded(child: Mybtn(label: "B",btnClick: changeText,textClr: Colors.red,backClr: Colors.white,)),
                SizedBox(
                  width: 10,
                ),
                Expanded(child: Mybtn(label: "C",btnClick: changeText,textClr: Colors.lightBlue,)),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Mybtn(label: "D",btnClick: changeText,backClr: Colors.black,),
                ),
                Expanded(child: Mybtn(label: "+",btnClick: changeText,)),
                Expanded(child: Mybtn(label: "=",btnClick: changeText,)),

              ],
            ),
          ),

          SizedBox(height: 30,),
          Container(
            color: Colors.grey,
            child: Center(
              child: Text(
                n1,
                style: TextStyle(fontSize: 40),
              ),
            ),
            width: double.maxFinite,
            height: 130,
          ),
          SizedBox(height: 30,),
          Container(
            color: Colors.grey,
            child: Center(
              child: Text(
                n2,
                style: TextStyle(fontSize: 40),
              ),
            ),
            width: double.maxFinite,
            height: 130,
          ),
        ],
      ),
    ));
  }
}
