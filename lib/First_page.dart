import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {


  String str="Home";



  @override
  Widget build(BuildContext context) {
    double width=MediaQuery.of(context).size.width;
    return SafeArea(child: Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(Icons.account_circle_rounded,size: 100,),
            SizedBox(height: 5,),
            Text("Meet Patel",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20
            ),),
          SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 70,
                  width: 70,
                  child: Column(
                    children: [
                      Text("50",style: TextStyle(fontSize: 20),),
                      Text("Friends")
                    ],
                  ),
                ),
                SizedBox(width: 20,),
                Container(
                  height: 70,
                  width: 70,
                  child: Column(
                    children: [
                      Text("50",style: TextStyle(fontSize: 20),),
                      Text("Friends")
                    ],
                  ),
                ),
                SizedBox(width: 20,),
                Container(
                  height: 70,
                  width: 70,
                  child: Column(
                    children: [
                      Text("50",style: TextStyle(fontSize: 20),),
                      Text("Friends")
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Expanded(
              child: Container(
                height: 70,
                width: double.maxFinite,

                child: Center(child: Text("$str")),
              ),
            ),
            SizedBox(height: 20,),
            Row(
              children: [

                getBottomMenu(Icons.home,"Home",isSelected: str=="Home"),
                getBottomMenu(Icons.search,"Search",isSelected:str=="Search"),
                getBottomMenu(Icons.dashboard,"Dashboard",isSelected:str=="Dashboard"),
                getBottomMenu(Icons.supervised_user_circle,"Socials",isSelected:str=="Socials"),
                getBottomMenu(Icons.close,"Close",isSelected:str=="Close"),

              ],
            ),

          ],
        ),
      ),
    ));
  }


  Widget getBottomMenu(IconData icon,String label,{bool isSelected=false}){
    return Expanded(
      child: InkWell(
        onTap: (){
          str=label;
          print("str : $str");
          setState(() {});
        },
        child: Container(
          padding: EdgeInsets.only(bottom: 10),

          child: Column(
            children: [
              Icon(icon,color: isSelected?Colors.red:Colors.grey,),
              Text(label)
            ],
          ),
        ),
      ),
    );
  }



}
