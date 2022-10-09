import 'package:flutter/material.dart';

class DataProvider extends ChangeNotifier{
  List<String> _items=[];


  List<String> get items => _items;

  set items(List<String> value) {
    _items = value;
  }

  void addItem(String data)
  {
    _items.add(data);
    notifyListeners();
  }

  int _count=10;

  int get count => _count;

  set count(int value) {
    _count = value;
  }

  void countIncrement(){
    _count++;
    print("Increse count : $_count");
    notifyListeners();
  }
}