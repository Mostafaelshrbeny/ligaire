import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ligare/constants/device.dart';
import 'package:ligare/core/lang/locale_keys.g.dart';
import 'package:ligare/presentation/widgets/backarrowbutton.dart';
import 'package:ligare/presentation/widgets/custombutton.dart';
import 'package:ligare/presentation/widgets/resendtext.dart';
import 'package:ligare/presentation/widgets/verifycodepin.dart';
import 'package:pinput/pinput.dart';

class VerifyScreen extends StatelessWidget {
  const VerifyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: AppBackarrow(screencontext: context),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              LocaleKeys.verifyverificationcode.tr(),
              style: Theme.of(context).textTheme.displayLarge,
            ),
            const Gap(16),
            Text(
              LocaleKeys.verifypleasetypetheotp.tr(),
              style: Theme.of(context)
                  .textTheme
                  .displaySmall!
                  .copyWith(color: Colors.grey),
            ),
            Gap(Device.deviceHeight(context: context, percent: 1 / 6)),
            const VerifyCodePin(),
            const Gap(16),
            const ResendText(),
            const Gap(32),
            AppCustomButton(
                buttonChild: Text(
                  LocaleKeys.verifyverify.tr(),
                  style: Theme.of(context)
                      .textTheme
                      .displaySmall!
                      .copyWith(color: Colors.black),
                ),
                ontap: () {}),
          ],
        ),
      ),
    );
  }
}
