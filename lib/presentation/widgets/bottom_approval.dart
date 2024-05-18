import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:ligare/constants/app_routs.dart';
import 'package:ligare/constants/app_theme.dart';
import 'package:ligare/core/lang/locale_keys.g.dart';
import 'package:ligare/presentation/widgets/custombutton.dart';

class BottomAproval extends StatelessWidget {
  const BottomAproval({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Divider(
          thickness: 0.2,
          height: 0.2,
          color: Colors.grey,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 15),
          child: AppCustomButton(
              buttonChild: Text(
                LocaleKeys.done.tr(),
                style: AppThemeData.buttonTextThem(context),
              ),
              ontap: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, Routes.mainlayerRoute, (route) => false);
              }),
        ),
      ],
    );
  }
}
