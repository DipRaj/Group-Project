import 'package:flutter/material.dart';
import 'package:group_project/ui/sizing_Information.dart';
import 'package:group_project/ui/ui_utils.dart';

class BaseWidget extends StatelessWidget {
  final Widget Function (BuildContext context, SizingInformation) builder;
  BaseWidget({this.builder});
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var sizingInformation = SizingInformation(
      orientation: mediaQuery.orientation,
      deviceScreenType: getDeviceType(mediaQuery),
    );
    return builder(context, sizingInformation);
  }
}
