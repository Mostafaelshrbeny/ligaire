import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ligare/core/lang/locale_keys.g.dart';

class TimerTextRow extends StatelessWidget {
  const TimerTextRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(Icons.timer_outlined),
        const Gap(2),
        Text(
          '17 ${LocaleKeys.timedays.tr()}',
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .copyWith(color: Colors.white),
        ),
        const Gap(5),
        Text(
          '37 ${LocaleKeys.timemins.tr()}',
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .copyWith(color: Colors.white),
        ),
        const Gap(5),
        Text(
          '08 ${LocaleKeys.timesecs.tr()}',
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .copyWith(color: Colors.white),
        ),
      ],
    );
  }
}
