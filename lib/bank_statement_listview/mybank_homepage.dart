import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/bank_statement_listview/model.dart';
import 'package:flutter_toggle_tab/flutter_toggle_tab.dart';

class MybankHomePage extends StatefulWidget {
  const MybankHomePage({Key? key}) : super(key: key);

  @override
  _MybankHomePageState createState() => _MybankHomePageState();
}

class _MybankHomePageState extends State<MybankHomePage> {

  TextEditingController name_controller = TextEditingController();
  TextEditingController amount_controller = TextEditingController();
  int selectedIndex = 0;
  List<DataModel> list = [];

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Text("Name "),
              SizedBox(width: 30,),
              Expanded(
                child: Container(
                  child: TextField(
                    controller: name_controller,
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 30,),
          Row(
            children: [
              Text("Amount "),
              SizedBox(width: 30,),
              Expanded(
                child: Container(
                  child: TextField(
                    controller: amount_controller,
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 20,),
          FlutterToggleTab(
// width in percent
            width: 90,
            borderRadius: 30,
            height: 50,
            selectedIndex: selectedIndex,
            selectedBackgroundColors: [Colors.blue, Colors.blueAccent],
            selectedTextStyle: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w700),
            unSelectedTextStyle: TextStyle(
                color: Colors.black87,
                fontSize: 14,
                fontWeight: FontWeight.w500),
            labels: ["Credit", "Debit"],
            selectedLabelIndex: (index) {
              print("selected index : $index");
              setState(() {
                selectedIndex = index;
              });
            },
            isScroll: false,
          ),
          SizedBox(height: 20,),
          InkWell(
            onTap: () {
              print("name : ${name_controller.text}");
              print("amount : ${amount_controller.text}");

              String type = selectedIndex == 0 ? "Credit" : "Debit";
              print("Type :  $type");

              DataModel dm = DataModel(name: name_controller.text,
                  amount: amount_controller.text,
                  type: type);
              list.add(dm);


              name_controller.text = "";
              amount_controller.text = "";
              selectedIndex = 0;

              setState(() {});
            },
            child: Container(
              width: double.maxFinite,
              height: 60,
              color: Colors.grey,
              child: Center(
                child: Text("Save", style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                ),),
              ),
            ),
          ),

          Expanded(child: ListView.builder(
              itemCount: list.length,
              itemBuilder: (ctx, index) {
                DataModel dm = list[index];

                return Container(
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(10),
                  color: Colors.black12,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(dm.name!),
                      Text(dm.amount!),
                      Text(dm.type!,style: TextStyle(
                        color: dm.type=="Credit"?Colors.green:Colors.red
                      ),)
                    ],
                  ),
                );
              }))
        ],
      ),)
    );
  }


  Widget item(DataModel dm) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(dm.name!),
        Text(dm.amount!),
        Text(dm.type!)
      ],
    );
  }
}