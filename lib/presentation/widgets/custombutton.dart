import 'package:flutter/material.dart';
import 'package:ligare/constants/device.dart';

class AppCustomButton extends StatelessWidget {
  const AppCustomButton({
    super.key,
    required this.buttonChild,
    required this.ontap,
  });
  final Widget buttonChild;
  final Function() ontap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        width: double.infinity,
        height: Device.deviceHeight(context: context, percent: 1 / 15),
        color: Colors.white,
        alignment: Alignment.center,
        child: buttonChild,
      ),
    );
  }
}
