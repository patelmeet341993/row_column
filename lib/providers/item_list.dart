import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'data_provider.dart';

class ItemList extends StatelessWidget {
  const ItemList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: Provider.of<DataProvider>(context,listen: true).items.length,
        itemBuilder: (ctx, index) {
          return Container(
            width: double.maxFinite,
            height: 40,
            margin: EdgeInsets.symmetric(vertical: 10),
            color: Colors.grey,
            child: Center(child: Text(Provider.of<DataProvider>(context,listen: true).items[index])),);
        });
  }
}
