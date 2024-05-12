import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ligare/constants/device.dart';
import 'package:ligare/core/lang/locale_keys.g.dart';

class BidAdWithContacting extends StatelessWidget {
  const BidAdWithContacting({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: double.infinity,
          height: Device.deviceHeight(context: context, percent: 1 / 4.5),
          margin: const EdgeInsets.only(right: 16, bottom: 14),
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/Frame 110.png'),
                  fit: BoxFit.cover)),
        ),
        Text('Get your Bentley GT Continental',
            style: Theme.of(context).textTheme.headlineSmall),
        const Gap(8),
        Text(LocaleKeys.contactowner.tr(),
            style: Theme.of(context)
                .textTheme
                .displaySmall!
                .copyWith(color: Colors.white))
      ],
    );
  }
}
