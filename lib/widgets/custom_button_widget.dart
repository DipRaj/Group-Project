import 'package:flutter/material.dart';
import 'package:group_project/ui/size_config.dart';
import 'package:group_project/widgets/responsive_widget.dart';

// Button Widget
class Button extends StatelessWidget {
  final IconData icon;
  final String btnName;
  final double height;
  final double width;
  final Color buttonColor;
  final Color iconColor;
  final double iconSize;
  final Color textColor;
  final double btnTextSize;
  final Border border;
  final BorderRadius btnBorderRadius;
  final MainAxisAlignment mainAxisAlignment;
  final CrossAxisAlignment crossAxisAlignment;

  Button({
    @required this.icon,
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
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: buttonColor,
        border: border,
        borderRadius: btnBorderRadius,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: mainAxisAlignment,
          children: [
            Text(
              btnName,
              style: TextStyle(
                fontSize: btnTextSize * SizeConfig.textMultiplier,
                color: textColor,
              ),
            ),
            Icon(
              icon,
              color: iconColor,
              size: iconSize * SizeConfig.imageSizeMultiplier,
            ),
          ],
        ),
      ),
    );
  }
}
