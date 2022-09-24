import 'package:flutter/material.dart';

import '../calc/mybtn.dart';
import 'navi_first.dart';
import 'navi_hird.dart';
import 'navi_second.dart';

class BtnList extends StatelessWidget {
  const BtnList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Hi"),
        Mybtn(btnClick: (){

          Navigator.push(context, MaterialPageRoute(builder: (context)=> NaviFirst()));



        },label: "1 Page", height: 50,),

        Mybtn(btnClick: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>NaviSecond()));


        },label: "2 Page", height: 50,),
        Mybtn(btnClick: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>NaviThird()));

        },label: "3 Page",height: 50,),

        Mybtn(btnClick: (){

          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> NaviFirst()));


        },label: "1 Page", height: 50,),

        Mybtn(btnClick: (){
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>NaviSecond()));


        },label: "2 Page", height: 50,),
        Mybtn(btnClick: (){
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>NaviThird()));

        },label: "3 Page",height: 50,),

      ],
    );
  }
}
