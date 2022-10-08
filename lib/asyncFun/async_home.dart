import 'package:flutter/material.dart';
import 'package:flutter_app/calc/mybtn.dart';

class AsyncHome extends StatefulWidget {
  const AsyncHome({Key? key}) : super(key: key);

  @override
  _AsyncHomeState createState() => _AsyncHomeState();
}

class _AsyncHomeState extends State<AsyncHome> {


  int count=1;


  void printTable(int no)
  {
    for(int i=1;i<=10;i++)
      {
        print("$no * $i = ${no*i}");
      }
  }


  Future<void> printTab(int no,int delaySeconds)async{

    for(int i=1;i<=10;i++)
    {
      await Future.delayed(Duration(milliseconds: delaySeconds),(){
        print("$no * $i = ${no*i}");
      });
    }

  }



  Future<void> countPrint()async{


    for(int i=1;i<11;i++)
      {

         await Future.delayed(Duration(seconds: 1),(){


          count=i;
          setState(() {

          });

        });

      }


  }

  void firstCase(){
    print("1");


    printTable(10);

    Future.delayed(Duration(seconds: 4),(){


      print("in");
      printTable(5);

    });

    print("2");

    printTable(15);

    // printTable(5);
    // printTable(10);
    // printTable(15);


  }


  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Container(
        child: Column(
          children: [
            Mybtn(btnClick: ()async{

              printTab(5,500);
              printTab(10,1000);
             await printTab(15,2000);

              print("bye bye");

            },label: "Click me",height: 40,),
            Mybtn(btnClick: (){
              print("hi");
            },label: "Click me 2",
            height: 40,),
            Mybtn(btnClick: (){

               countPrint().then((value) {
                 print("work completed");



               });

            },label: "Count $count", height: 50, )
          ],
        ),
      ),
    ));
  }
}
