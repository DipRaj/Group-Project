import 'package:flutter/material.dart';
import 'package:group_project/enum/device_screen_type.dart';

DeviceScreenType getDeviceType(MediaQueryData mediaQuery) {
  var orientation = mediaQuery.orientation;

  double deviceWidth = 0;
  double deviceHeight = 0;

  if (orientation == Orientation.landscape) {
    deviceWidth = mediaQuery.size.height;
  } else {
    deviceWidth = mediaQuery.size.width;
  }

  if (deviceWidth>=800) {
    return DeviceScreenType.Tablet;
  } else {
    return DeviceScreenType.Mobile;
  }
}