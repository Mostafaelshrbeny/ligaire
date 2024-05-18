import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:ligare/constants/app_theme.dart';
import 'package:ligare/constants/device.dart';
import 'package:ligare/core/lang/locale_keys.g.dart';
import 'package:ligare/presentation/widgets/countriesgrid.dart';
import 'package:ligare/presentation/widgets/custombutton.dart';

class SkipOrNextRow extends StatelessWidget {
  const SkipOrNextRow({
    super.key,
    this.skipScreen,
    this.nextScreen,
    this.onTextTap,
    this.replaceSkip,
    this.onButtonTap,
    this.heightPercent,
  });
  final String? skipScreen, nextScreen;
  final Function()? onTextTap, onButtonTap;
  final Widget? replaceSkip;
  final double? heightPercent;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppThemeData.darkColorScheme.background,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Divider(
            height: 0.2,
            color: Colors.grey,
            thickness: 0.2,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 15),
            child: Row(
              children: [
                TextButton(
                    onPressed: () {
                      replaceSkip == null
                          ? Navigator.pushNamedAndRemoveUntil(
                              context,
                              skipScreen!,
                              (route) => false,
                            )
                          : null;
                    },
                    child: replaceSkip ??
                        Text(
                          LocaleKeys.skip.tr(),
                          style: Theme.of(context).textTheme.headlineLarge,
                        )),
                const Spacer(),
                AppCustomButton(
                  buttonChild: const NextTextButton(),
                  ontap: onButtonTap ??
                      () => (nextScreen == null
                          ? null
                          : Navigator.pushNamed(context, nextScreen!)),
                  buttonWidth:
                      Device.deviceWidth(context: context, percent: 1 / 3),
                  heightPercent: heightPercent,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
