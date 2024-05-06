import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ligare/constants/app_routs.dart';
import 'package:ligare/core/lang/locale_keys.g.dart';
import 'package:ligare/presentation/widgets/countriesgrid.dart';
import 'package:ligare/presentation/widgets/custombutton.dart';
import 'package:ligare/presentation/widgets/textfield.dart';

class ReferralcodeWidget extends StatefulWidget {
  const ReferralcodeWidget({super.key});

  @override
  State<ReferralcodeWidget> createState() => _ReferralcodeWidgetState();
}

class _ReferralcodeWidgetState extends State<ReferralcodeWidget> {
  bool hidden = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(LocaleKeys.introwordsreferralcode.tr()),
        const Gap(4),
        AppCustomTextField(
          suffix: const Icon(Icons.info, color: Colors.white),
          onChange: (p0) {
            p0.length > 5
                ? setState(() {
                    hidden = true;
                  })
                : null;
          },
          hint: LocaleKeys.introwordstypeyourreferralcode.tr(),
        ),
        const Gap(40),
        hidden
            ? AppCustomButton(buttonChild: const NextTextButton(), ontap: () {})
            : Center(
                child: InkWell(
                  onTap: () =>
                      Navigator.pushNamed(context, Routes.sugnupIntroRoute),
                  child: Text(
                    LocaleKeys.introwordsidonthaveareferralcode.tr(),
                    style: Theme.of(context).textTheme.displaySmall,
                  ),
                ),
              )
      ],
    );
  }
}
