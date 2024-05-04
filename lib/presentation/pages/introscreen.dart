import 'package:flutter/material.dart';

import 'package:ligare/constants/assets.dart';
import 'package:ligare/constants/device.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        body: Stack(
          children: [
            const IntroBackground(),
            Container(
              height: Device.deviceHeight(context: context),
              width: Device.deviceWidth(context: context),
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                Colors.black,
                Colors.black.withOpacity(0.93),
                Colors.black.withOpacity(0.5),
                Colors.black.withOpacity(0.0)
              ], begin: Alignment.bottomCenter, end: Alignment.topCenter)),
            ),
            const LigaireTitle()
          ],
        ),
      ),
    );
  }
}

class LigaireTitle extends StatelessWidget {
  const LigaireTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const Alignment(0, -0.8),
      child: Text(
        'L    I    G    A    I    R    E',
        style: Theme.of(context).textTheme.displayLarge,
      ),
    );
  }
}

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
