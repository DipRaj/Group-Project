import 'package:flutter/material.dart';

class SizeConfig {
  static double _screenWidth;
  static double _screenHeight;
  static double _blockWidth = 0;
  static double _blockHeight = 0;

  static double textMultiplier = 0;
  static double imageSizeMultiplier = 0;
  static double heightMultiplier = 0;
  static double widthMultiplier = 0;
  static bool isPortrait = true;
  static bool isMobilePortrait = false;

  void init(BoxConstraints constraints, Orientation orientation) {
    if (orientation == Orientation.portrait) {
//    print('portrait');
      _screenHeight = constraints.maxHeight;
      _screenWidth = constraints.maxWidth;
      isPortrait = true;
      if (_screenWidth < 450 ) {
        isMobilePortrait = true;
      }
    } else {
//      _screenWidth = constraints.maxHeight;
//      _screenHeight = constraints.maxWidth;
      isPortrait = false;
      isMobilePortrait = false;
    }

    _blockHeight = _screenHeight/465 ;
    _blockWidth = _screenWidth/300;

    textMultiplier = _blockHeight;
    heightMultiplier = _blockHeight;
    imageSizeMultiplier = _blockWidth;
    widthMultiplier = _blockWidth;

//    print(_blockHeight);
//    print(_blockWidth);
  }

}