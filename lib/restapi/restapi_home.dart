import 'package:flutter/material.dart' ;
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

class RestApiHome extends StatefulWidget {
  const RestApiHome({Key? key}) : super(key: key);

  @override
  _RestApiHomeState createState() => _RestApiHomeState();
}

class _RestApiHomeState extends State<RestApiHome> {


  String st="No data Found";
  bool isLoading=false;


  void getData(String type)async{

    isLoading=true;
    setState(() {});

    var request = http.Request('GET', Uri.parse('https://firechat-1fa2f-default-rtdb.firebaseio.com/$type/.json'));


    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      st=await response.stream.bytesToString();
    }
    else {
      st=response.reasonPhrase.toString();
    }

    isLoading=false;
    setState(() {

    });
  }


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 50,),
              InkWell(
                onTap: (){
              getData("color");
                },
                child: Container(
                  color: Colors.orange,
                  width: MediaQuery.of(context).size.width*0.70,
                  height: 60,
                  child: Center(child: Text("Data")),
                ),
              ),

              SizedBox(height: 10,),

              InkWell(
                onTap: (){
                  getData("data1");
                },
                child: Container(
                  color: Colors.orange,
                  width: MediaQuery.of(context).size.width*0.70,
                  height: 60,
                  child: Center(child: Text("Data1")),
                ),
              ),

              SizedBox(height: 10,),

              Expanded(child: isLoading?SpinKitPianoWave(color: Colors.orange,):Text(st,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),)),
            ],
          ),
        ),
      ),
    );
  }
}
