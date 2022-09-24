import 'dart:math';

import 'package:flutter/material.dart';

class DynamicListView extends StatefulWidget {
  const DynamicListView({Key? key}) : super(key: key);

  @override
  _DynamicListViewState createState() => _DynamicListViewState();
}

class _DynamicListViewState extends State<DynamicListView> {
  List<String> list = [];
  Random r = Random();
  TextEditingController controller=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 100,
              child: InkWell(
                onTap: () {
                  int ra = r.nextInt(1000);

                  if(ra%2==0)
                    list.add("meet$ra");
                  else
                    list.add("$ra");


                  setState(() {});
                },
                child: Container(
                  color: Colors.grey,
                  height: 50,
                  child: Center(child: Text("Add Item")),
                ),
              ),
            ),
            Expanded(
                child: ListView.builder(
                    itemCount: list.length,
                    itemBuilder: (ctx, i) {
                      Color clr;

                      try{
                        clr=int.parse(list[i])>500?Colors.green:Colors.red;
                      }
                      catch(e)
                      {
                        clr=Colors.black26;
                      }


                      return InkWell(
                        onTap: (){
                          print("Click $i : ${list[i]}");
                          list.removeAt(i);
                          setState(() {

                          });
                        },
                        child: Container(
                          width: double.maxFinite,
                         // color: int.parse(list[i])%2==0?Colors.green:Colors.red,

                          color: clr,
                          child: Center(child: Text(list[i])),
                          height: 50,
                        ),
                      );
                    }))
          ],
        ),
      ),
    );
  }
}
