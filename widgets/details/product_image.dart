import 'package:flutter/material.dart';

import '../../constants.dart';

class PorductImage extends StatelessWidget {
  final String image;
  const PorductImage({
    Key? key,
    required this.size,
    required this.image,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding),
      height: size.width * 0.8,
      child: Stack(alignment: Alignment.bottomCenter, children: [
        Container(
          height: size.width * 0.7,
          width: size.width * 0.7,
          decoration:
              BoxDecoration(color: Colors.white, shape: BoxShape.circle),
        ),
        Image.asset(
          image,
          height: size.width * 0.75,
          width: size.width * 0.75,
          fit: BoxFit.cover,
        )
      ]),
    );
  }
}
