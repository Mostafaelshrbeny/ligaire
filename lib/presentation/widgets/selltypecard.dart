import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ligare/constants/app_theme.dart';
import 'package:ligare/constants/device.dart';

class SellCard extends StatelessWidget {
  const SellCard({
    super.key,
    required this.sellTypeicon,
    required this.sellTypeLabel,
    required this.ontap,
    required this.clicked,
  });
  final Widget sellTypeicon;
  final String sellTypeLabel;
  final Function() ontap;
  final bool clicked;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        decoration: BoxDecoration(
            color: AppThemeData.cardColor,
            border: Border.all(
                color: clicked ? Colors.white : AppThemeData.cardColor)),
        width: Device.deviceWidth(context: context, percent: 1 / 2.3),
        height: Device.deviceHeight(context: context, percent: 1 / 6),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              sellTypeicon,
              const Gap(8),
              Text(
                sellTypeLabel,
                style: Theme.of(context).textTheme.displaySmall,
              )
            ],
          ),
        ),
      ),
    );
  }
}
