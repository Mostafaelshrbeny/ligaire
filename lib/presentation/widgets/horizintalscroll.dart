import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ligare/constants/app_theme.dart';

import 'package:ligare/constants/device.dart';

class AppHorizintalScroll extends StatelessWidget {
  const AppHorizintalScroll({
    super.key,
    this.itemHeightpercent = 1 / 4.2,
    required this.hasCover,
    this.coverImage,
    required this.item,
  });
  final double itemHeightpercent;
  final bool hasCover;
  final String? coverImage;
  final Widget item;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Device.deviceHeight(context: context, percent: itemHeightpercent),
      child: ListView.separated(
          padding: const EdgeInsets.only(left: 16),
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemBuilder: (context, index) => Container(
                height: Device.deviceHeight(
                    context: context, percent: itemHeightpercent),
                width: Device.deviceWidth(context: context, percent: 1 / 2.8),
                decoration: BoxDecoration(
                    image: hasCover
                        ? DecorationImage(
                            image: AssetImage(coverImage!), fit: BoxFit.cover)
                        : null),
                child: hasCover
                    ? FadedContainer(
                        itemHeightpercent: itemHeightpercent,
                        containerChild: item)
                    : Container(
                        color: AppThemeData.cardColor,
                        child: item,
                      ),
              ),
          separatorBuilder: (context, index) =>
              Gap(Device.deviceWidth(context: context, percent: 1 / 20)),
          itemCount: 10),
    );
  }
}

class FadedContainer extends StatelessWidget {
  const FadedContainer({
    super.key,
    required this.itemHeightpercent,
    required this.containerChild,
  });

  final double itemHeightpercent;
  final Widget containerChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      height:
          Device.deviceHeight(context: context, percent: 1 / itemHeightpercent),
      width: Device.deviceWidth(context: context, percent: 1 / 2.8),
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
        Colors.transparent.withOpacity(0.6),
        Colors.transparent.withOpacity(0)
      ], begin: Alignment.bottomCenter, end: Alignment.topCenter)),
      child: containerChild,
    );
  }
}
