import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ligare/constants/app_routs.dart';
import 'package:ligare/constants/app_theme.dart';
import 'package:ligare/core/lang/locale_keys.g.dart';
import 'package:ligare/presentation/widgets/custombutton.dart';

class AllSetScreen extends StatelessWidget {
  const AllSetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  LocaleKeys.allset.tr(),
                  style: Theme.of(context).textTheme.displayLarge,
                ),
                const Gap(8),
                Text(
                  LocaleKeys.startenjoying.tr(),
                  textAlign: TextAlign.center,
                  style: Theme.of(context)
                      .textTheme
                      .displaySmall!
                      .copyWith(color: Colors.grey),
                ),
              ],
            ),
          ),
          Align(
            alignment: const Alignment(0, 0.9),
            child: AppCustomButton(
                buttonPadding: const EdgeInsets.symmetric(horizontal: 16),
                buttonChild: Text(
                  LocaleKeys.introwordsgetstarted.tr(),
                  style: AppThemeData.buttonTextThem(context),
                ),
                ontap: () => Navigator.pushNamedAndRemoveUntil(
                    context, Routes.homeRoute, (route) => false)),
          )
        ],
      ),
    );
  }
}
