import 'package:flutter/material.dart';
import 'package:ligare/constants/assets.dart';
import 'package:ligare/constants/device.dart';

class IntroBackground extends StatelessWidget {
  const IntroBackground({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Device.deviceHeight(context: context),
      width: Device.deviceWidth(context: context),
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(Assets.introGif), fit: BoxFit.cover)),
    );
  }
}
