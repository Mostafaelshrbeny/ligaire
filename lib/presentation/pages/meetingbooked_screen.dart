import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ligare/constants/app_routs.dart';
import 'package:ligare/constants/app_theme.dart';
import 'package:ligare/core/lang/locale_keys.g.dart';
import 'package:ligare/presentation/widgets/custombutton.dart';

class MeetingBookedScreen extends StatelessWidget {
  const MeetingBookedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(Icons.close_rounded)),
      ),
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Thanks for booking your Appoinment !',
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
                const Gap(8),
                Text(
                  'Our team will be ready to induct you in\nmerchant selling process and reply to all your\nquestions. We’ll meet on Tuesday 02 January,\n 15:30 Cairo time.',
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
              alignment: Alignment.bottomCenter,
              child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 22, horizontal: 16),
                  child: AppCustomButton(
                      buttonChild: Text(
                        LocaleKeys.done.tr(),
                        style: AppThemeData.buttonTextThem(context),
                      ),
                      ontap: () => Navigator.pushNamedAndRemoveUntil(
                          context, Routes.mainlayerRoute, (route) => false))))
        ],
      ),
    );
  }
}
