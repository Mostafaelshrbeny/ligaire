import 'package:flutter/material.dart';
import 'package:ligare/constants/device.dart';

class IntroBackground extends StatelessWidget {
  const IntroBackground({
    super.key,
    required this.backgroundImage,
  });
  final String backgroundImage;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: Device.deviceHeight(context: context),
      width: Device.deviceWidth(context: context),
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(backgroundImage), fit: BoxFit.cover)),
    );
  }
}
