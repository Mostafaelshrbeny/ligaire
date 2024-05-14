import 'package:flutter/material.dart';
import 'package:ligare/constants/assets.dart';
import 'package:ligare/constants/device.dart';

class TrailingFadedImage extends StatelessWidget {
  const TrailingFadedImage({
    super.key,
    required this.index,
    required this.opacity,
  });
  final int index;
  final double opacity;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: Device.deviceHeight(context: context, percent: 1 / 10),
        width: Device.deviceHeight(context: context, percent: 1 / 10),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(Assets.collectionAssets[index]),
                fit: BoxFit.cover)),
        child: Container(
          height: Device.deviceHeight(context: context, percent: 1 / 10),
          width: Device.deviceHeight(context: context, percent: 1 / 10),
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              const Color.fromRGBO(36, 36, 37, 1).withOpacity(opacity),
              const Color.fromRGBO(36, 36, 37, 1).withOpacity(0)
            ], begin: Alignment.centerLeft, end: Alignment.centerRight),
          ),
        ));
  }
}
