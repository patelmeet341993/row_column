import 'package:flutter/material.dart';
import 'package:flutter_app/calc/mybtn.dart';
import 'package:flutter_app/providers/data_provider.dart';
import 'package:provider/provider.dart';

class ProviderHome extends StatefulWidget {
  const ProviderHome({Key? key}) : super(key: key);

  @override
  _ProviderHomeState createState() => _ProviderHomeState();
}

class _ProviderHomeState extends State<ProviderHome> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: MyWidget(),
    ));
  }
}

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 50,
        ),
        Text(
          "${Provider.of<DataProvider>(context,listen: true).count} click",
          style: TextStyle(fontSize: 30),
        ),
        SizedBox(
          height: 50,
        ),
        Mybtn(
          btnClick: () {
            Provider.of<DataProvider>(context,listen: false).countIncrement();

          },
          label: "Click",
          height: 40,
        ),
      ],
    );
  }
}
