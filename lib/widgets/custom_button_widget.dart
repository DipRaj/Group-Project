import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:group_project/ui/size_config.dart';

// Button Widget
class CustomButton extends StatelessWidget {
  final IconData icon;
  final String btnName;
  final double height;
  final double width;
  final Color buttonColor;
  final Color splashColor;
  final Color iconColor;
  final double iconSize;
  final Color textColor;
  final double btnTextSize;
  final Border border;
  final BorderRadius btnBorderRadius;
  final MainAxisAlignment mainAxisAlignment;
  final CrossAxisAlignment crossAxisAlignment;
  final Function onTap;

  CustomButton({
    this.icon,
    @required this.btnName,
    this.height,
    this.width,
    this.buttonColor,
    this.iconColor,
    this.textColor,
    this.border,
    this.mainAxisAlignment,
    this.crossAxisAlignment,
    this.btnTextSize,
    this.iconSize,
    this.btnBorderRadius,
    this.splashColor,
    this.onTap,
  });
  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        splashColor: splashColor,
        onTap: onTap,
        child: Container(
          alignment: Alignment.center,
          height: height,
          width: width,
          decoration: BoxDecoration(
//            color: buttonColor,
            border: border,
//            borderRadius: btnBorderRadius,
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  flex: 3,
                  child: Text(
                    btnName,
                    style: TextStyle(
                      fontSize: btnTextSize * SizeConfig.textMultiplier,
                      color: textColor,
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Icon(
                    icon,
                    color: iconColor,
                    size: iconSize * SizeConfig.imageSizeMultiplier,
                  ),
                ),
              ],
            ),
          ),
        ),
//        borderRadius: btnBorderRadius,
      ),
      color: buttonColor,
//      borderRadius: btnBorderRadius,
    );
  }
}
