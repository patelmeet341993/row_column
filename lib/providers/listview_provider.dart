import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_app/calc/mybtn.dart';
import 'package:flutter_app/providers/data_provider.dart';
import 'package:flutter_app/providers/item_list.dart';
import 'package:provider/provider.dart';

import 'list_view_provider_secondpage.dart';

class ListViewProvider extends StatefulWidget {
  const ListViewProvider({Key? key}) : super(key: key);

  @override
  _ListViewProviderState createState() => _ListViewProviderState();
}

class _ListViewProviderState extends State<ListViewProvider> {




  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Mybtn(
              btnClick: () {

                Navigator.push(context, MaterialPageRoute(builder: (context)=>ListViewProviderSecondPage()));


              },
              label: "Go To second page",
              height: 40,
            ),
            Mybtn(
              btnClick: () {

                Future.delayed(Duration(seconds: 3),(){
                  Random r=Random();

                  Provider.of<DataProvider>(context,listen: false).addItem("Count ${r.nextInt(100)}");

                });


              },
              label: "Add Item",
              height: 40,
            ),
            Expanded(child: ItemList())
          ],
        ),
      ),
    );
  }
}
