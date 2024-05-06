import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:ligare/constants/app_routs.dart';
import 'package:ligare/constants/assets.dart';
import 'package:ligare/constants/device.dart';
import 'package:ligare/core/lang/locale_keys.g.dart';
import 'package:ligare/presentation/widgets/codedropdown.dart';
import 'package:ligare/presentation/widgets/custombutton.dart';
import 'package:ligare/presentation/widgets/signupfields.dart';
import 'package:ligare/presentation/widgets/textfield.dart';

class RegesterFieldsList extends StatelessWidget {
  const RegesterFieldsList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      children: [
        Text(
          LocaleKeys.signupregeisteration.tr(),
          style: Theme.of(context).textTheme.displayLarge,
        ),
        const Gap(32),
        Row(
          children: [
            RegesterTextField(
              label: LocaleKeys.signupfirstname.tr(),
              hint: LocaleKeys.signupfirstname.tr(),
            ),
            const Gap(11),
            RegesterTextField(
              label: LocaleKeys.signupfirstname.tr(),
              hint: LocaleKeys.signupfirstname.tr(),
            ),
          ],
        ),
        const Gap(24),
        RegesterTextField(
            label: LocaleKeys.signupemail.tr(),
            hint: LocaleKeys.signuptypeyouremail.tr()),
        const Gap(24),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(LocaleKeys.signupphonenumber.tr(),
                style: Theme.of(context).textTheme.displaySmall),
            const Gap(4),
            Row(
              children: [
                const CodeDropDown(),
                Expanded(
                    child: AppCustomTextField(
                        hint: LocaleKeys.signupphonenumber.tr()))
              ],
            ),
          ],
        ),
        const Gap(24),
        RegesterTextField(
            label: LocaleKeys.signupoccupation.tr(),
            hint: LocaleKeys.signuptypeyouroccupation.tr()),
        const Gap(24),
        RegesterTextField(
            label: LocaleKeys.signupareaofresidence.tr(),
            hint: LocaleKeys.signupareaofresidence.tr()),
        Gap(Device.deviceHeight(context: context, percent: 1 / 7)),
        AppCustomButton(
            buttonChild: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  LocaleKeys.signupcompleteregistration.tr(),
                  style: Theme.of(context)
                      .textTheme
                      .displaySmall!
                      .copyWith(color: Colors.black),
                ),
                const Gap(12),
                SvgPicture.asset(Assets.arrowButton)
              ],
            ),
            ontap: () {
              Navigator.pushNamed(context, Routes.verifyRoute);
            })
      ],
    );
  }
}
