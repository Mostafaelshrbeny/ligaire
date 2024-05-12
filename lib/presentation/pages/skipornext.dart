import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ligare/constants/app_routs.dart';
import 'package:ligare/constants/device.dart';
import 'package:ligare/core/lang/locale_keys.g.dart';
import 'package:ligare/presentation/widgets/countriesgrid.dart';
import 'package:ligare/presentation/widgets/custombutton.dart';

class SkipOrNextRow extends StatelessWidget {
  const SkipOrNextRow({
    super.key,
    required this.skipScreen,
    required this.nextScreen,
  });
  final String skipScreen, nextScreen;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Divider(
          color: Colors.grey,
          thickness: 0.2,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 15),
          child: Row(
            children: [
              TextButton(
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                      context,
                      skipScreen,
                      (route) => false,
                    );
                  },
                  child: Text(
                    LocaleKeys.skip.tr(),
                    style: Theme.of(context).textTheme.headlineLarge,
                  )),
              const Spacer(),
              AppCustomButton(
                buttonChild: const NextTextButton(),
                ontap: () {
                  Navigator.pushNamed(context, nextScreen);
                },
                buttonWidth:
                    Device.deviceWidth(context: context, percent: 1 / 3),
              )
            ],
          ),
        ),
      ],
    );
  }
}
