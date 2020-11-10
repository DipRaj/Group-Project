import 'package:flutter/material.dart';
import 'package:group_project/screens/home.dart';
import 'package:group_project/screens/user_profile.dart';

class NavProvider extends ChangeNotifier{
  int _currentIndex = 0;
  get currentIndex => _currentIndex;

  set currentIndex(int newIndex) {
    currentIndex = newIndex;
    notifyListeners();
  }
  currentNav(index, context){
    currentIndex = index;
    notifyListeners();
  }
}