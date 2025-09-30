import 'package:flutter/widgets.dart';

class MapProvider extends ChangeNotifier {
  List<Map<String, dynamic>> _mData = [];

  void addData(Map<String, dynamic> data) {
    _mData.add(data);
    notifyListeners();
  }

  void removeData(int index) {
    _mData.removeAt(index);
    notifyListeners();
  }

  void updateData(Map<String, dynamic> upateData, int index) {
    _mData[index] = upateData;
    notifyListeners();
  }

  List<Map<String, dynamic>> getData() => _mData;
}
