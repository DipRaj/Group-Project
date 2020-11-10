import 'package:flutter/material.dart';

class Responsive{

  static bool isMobile(BuildContext context) {
    if (MediaQuery.of(context).size.width < 800) {
      return true;
    }
  }
  static bool isTablet(BuildContext context) {
    if (MediaQuery.of(context).size.width >= 800) {
      return true;
    }
  }
}
