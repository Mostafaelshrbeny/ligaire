import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ligare/constants/device.dart';
import 'package:ligare/core/lang/locale_keys.g.dart';

class FloatingAdWithCover extends StatelessWidget {
  const FloatingAdWithCover({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Device.deviceHeight(context: context, percent: 0.4),
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                  'assets/images/frames-for-your-heart-mR1CIDduGLc-unsplash (1) 1.png'),
              fit: BoxFit.cover)),
      child: Align(
        alignment: Alignment.bottomLeft,
        child: Container(
          color: ThemeData.dark().scaffoldBackgroundColor,
          // height: Device.deviceHeight(context: context, percent: 1 / 8),
          width: Device.deviceWidth(context: context, percent: 0.58),
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                LocaleKeys.liveluxury.tr(),
                style: Theme.of(context).textTheme.displayLarge,
              ),
              const Gap(4),
              Text(
                'Experience a new aspect of luxury living, explore +300 units',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              const Gap(12),
              Row(
                children: [
                  Text(LocaleKeys.findyourhouse.tr(),
                      style: Theme.of(context).textTheme.displaySmall),
                  const Gap(8),
                  const Icon(Icons.arrow_right_alt_outlined)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
