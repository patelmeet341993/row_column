import 'package:flutter/material.dart';

class Mybtn extends StatelessWidget {

  final String label;
  final Color backClr;
  final Color textClr;
  final Function btnClick;
  final double? height;


  Mybtn({this.label="A",this.backClr=Colors.black38,this.textClr=Colors.white,required this.btnClick,this.height});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        margin: EdgeInsets.all(10),

        color: backClr,
        child: Center(
            child: Text(
          label,
          style: TextStyle(fontSize: 20,color: textClr),
        )),
        height: height??double.maxFinite,
      ),
      onTap: () {
          btnClick();
      },
    );
  }
}
