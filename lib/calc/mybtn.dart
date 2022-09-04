import 'package:flutter/material.dart';

class Mybtn extends StatelessWidget {

  final String label;
  final Color backClr;
  final Color textClr;
  final Function btnClick;

  Mybtn({this.label="A",this.backClr=Colors.black38,this.textClr=Colors.white,required this.btnClick});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        color: backClr,
        child: Center(
            child: Text(
          label,
          style: TextStyle(fontSize: 35,color: textClr),
        )),
        height: double.maxFinite,
      ),
      onTap: () {
          btnClick(label);
      },
    );
  }
}
