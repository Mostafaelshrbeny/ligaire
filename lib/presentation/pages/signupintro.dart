import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:ligare/constants/app_routs.dart';
import 'package:ligare/constants/device.dart';
import 'package:ligare/core/lang/locale_keys.g.dart';
import 'package:ligare/presentation/widgets/custombutton.dart';
import 'package:ligare/presentation/widgets/ligairetitile.dart';

class SignUpIntroScreen extends StatelessWidget {
  const SignUpIntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
            right: 16,
            left: 16,
            top: Device.deviceHeight(context: context, percent: 1 / 7),
            bottom: Device.deviceHeight(context: context, percent: 1 / 18)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const LigaireTitle(),
            Gap(Device.deviceHeight(context: context, percent: 1 / 4)),
            Text(
              LocaleKeys.introwordsidonthaveareferralcode.tr(),
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            const Gap(8),
            Text(
              LocaleKeys.signupthiswillextendthetime.tr(),
              style: Theme.of(context)
                  .textTheme
                  .displaySmall!
                  .copyWith(color: const Color.fromRGBO(115, 116, 117, 1)),
            ),
            const Gap(32),
            AppCustomButton(
                buttonChild: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(LocaleKeys.signupthisisokay.tr(),
                        style: Theme.of(context)
                            .textTheme
                            .displaySmall!
                            .copyWith(color: Colors.black)),
                    const Gap(12),
                    SvgPicture.asset('assets/images/Frame 115.svg')
                  ],
                ),
                ontap: () {
                  Navigator.pushNamed(context, Routes.regesteriationRoute);
                }),
            const Spacer(),
            Center(
                child: Text(
              LocaleKeys.signupIhavereferral.tr(),
              style: Theme.of(context).textTheme.displaySmall,
            )),
          ],
        ),
      ),
    );
  }
}
