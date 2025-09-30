import 'package:flutter/cupertino.dart';

class CounterProvider extends ChangeNotifier{

  int _count = 0;

  getData() => _count;

  void addData(){
    _count++;
    notifyListeners();
  }
  void removeData(){
    if(_count>0){
      _count--;
    }
    notifyListeners();
  }

}