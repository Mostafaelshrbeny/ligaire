import 'package:flutter/material.dart';
import 'package:ligare/constants/device.dart';

class AppCustomButton extends StatelessWidget {
  const AppCustomButton({
    super.key,
    required this.buttonChild,
    required this.ontap,
    this.buttonWidth = double.infinity,
    this.buttonPadding,
    this.heightPercent = 1 / 15,
  });
  final Widget buttonChild;
  final Function() ontap;
  final double buttonWidth;
  final EdgeInsetsGeometry? buttonPadding;
  final double heightPercent;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        margin: buttonPadding,
        width: buttonWidth,
        height: Device.deviceHeight(context: context, percent: heightPercent),
        color: Colors.white,
        alignment: Alignment.center,
        child: buttonChild,
      ),
    );
  }
}
