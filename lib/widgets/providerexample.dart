import 'package:flutter/material.dart';
import 'package:group_project/data/data.dart';
import 'package:group_project/models/models.dart';
import 'package:group_project/widgets/product_card.dart';

class ProviderExample extends ChangeNotifier {
//  List<bool> _boolList = List<bool>();
//  List get boolList => _boolList;
//  void createBoolList() {
//    for(int i = 0; i< products.length; i++) {
//      boolList.add(false);
//    }
//    print(boolList);
//    print(products.length);
//  }

  bool _isClicked = false;
  get isClicked => _isClicked;

  set isClicked(bool newValue) {
    isClicked = newValue;
    notifyListeners();
  }
//  void changeIcon() {
//      if (boolList[0]) {
//        boolList[0] = false;
//      } else {
//        boolList[0] = true;
//      }
//    notifyListeners();
//  }
}
