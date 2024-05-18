import 'package:flutter/material.dart';
import 'package:ligare/constants/device.dart';

class AppCustomButton extends StatelessWidget {
  const AppCustomButton({
    super.key,
    required this.buttonChild,
    required this.ontap,
    this.buttonWidth = double.infinity,
    this.buttonPadding,
    this.heightPercent,
    this.backgroundColor = Colors.white,
  });
  final Widget buttonChild;
  final Function() ontap;
  final double buttonWidth;
  final EdgeInsetsGeometry? buttonPadding;
  final double? heightPercent;
  final Color? backgroundColor;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        decoration: BoxDecoration(
            color: backgroundColor, border: Border.all(color: Colors.white)),
        margin: buttonPadding,
        width: buttonWidth,
        height: Device.deviceHeight(
            context: context, percent: heightPercent ?? 1 / 15),
        alignment: Alignment.center,
        child: buttonChild,
      ),
    );
  }
}
