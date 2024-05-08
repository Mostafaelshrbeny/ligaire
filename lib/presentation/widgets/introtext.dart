import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ligare/constants/app_theme.dart';
import 'package:ligare/constants/device.dart';
import 'package:ligare/core/lang/locale_keys.g.dart';
import 'package:ligare/presentation/blocs/IntroCubit/intro_cubit.dart';
import 'package:ligare/presentation/widgets/custombutton.dart';

class IntroWelcomeText extends StatelessWidget {
  const IntroWelcomeText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: SizedBox(
            width: Device.deviceWidth(context: context, percent: 0.7),
            child: Text(
              LocaleKeys.introwordsintrotext.tr(),
              style: Theme.of(context).textTheme.displayMedium,
            ),
          ),
        ),
        const Gap(16),
        Text(
          LocaleKeys.introwordsluxurycars.tr(),
          style: Theme.of(context).textTheme.displayLarge,
        ),
        const Gap(40),
        AppCustomButton(
            buttonChild: Text(
              LocaleKeys.introwordsgetstarted.tr(),
              style: AppThemeData.buttonTextThem(context),
            ),
            ontap: () => IntroCubit.get(context).increaseWidgetIndex())
      ],
    );
  }
}
