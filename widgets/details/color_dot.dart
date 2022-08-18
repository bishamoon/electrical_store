import 'package:flutter/material.dart';

import '../../constants.dart';

class ColorDot extends StatelessWidget {
  final Color? fillColor;
  final bool isSelectedd;

  const ColorDot({
    Key? key,
    this.fillColor,
    this.isSelectedd = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: kDefaultPadding / 2.5),
      padding: EdgeInsets.all(3.0),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
              color: isSelectedd ? kTextLightColor : Colors.transparent)),
      child: Container(
        decoration: BoxDecoration(shape: BoxShape.circle, color: fillColor),
      ),
    );
  }
}
