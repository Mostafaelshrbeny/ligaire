import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ligare/core/lang/locale_keys.g.dart';

class NextStepText extends StatelessWidget {
  const NextStepText({
    super.key,
    required this.nextStep,
  });
  final String nextStep;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          LocaleKeys.next.tr(),
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        const Gap(8),
        Text(
          nextStep,
          style: Theme.of(context).textTheme.displaySmall,
        ),
      ],
    );
  }
}
