import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ligare/constants/app_routs.dart';
import 'package:ligare/constants/app_theme.dart';
import 'package:ligare/constants/assets.dart';
import 'package:ligare/constants/device.dart';
import 'package:ligare/core/lang/locale_keys.g.dart';
import 'package:ligare/presentation/widgets/custombutton.dart';
import 'package:ligare/presentation/widgets/introbackground.dart';

class MerchantScreen extends StatelessWidget {
  const MerchantScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const IntroBackground(backgroundImage: Assets.mechantBackground),
          Container(
            height: Device.deviceHeight(context: context),
            width: Device.deviceWidth(context: context),
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              Colors.black,
              Colors.black.withOpacity(0.93),
              Colors.black.withOpacity(0.5),
              Colors.black.withOpacity(0.0)
            ], begin: Alignment.bottomCenter, end: Alignment.topCenter)),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Join 16,000+ LIGAIRE merchants',
                      style: Theme.of(context).textTheme.labelLarge,
                    ),
                    const Gap(32),
                    const MerchantDescriptionText(
                      description:
                          'Access the largest luxury marketplace & showcase your listings to global luxury buyers',
                    ),
                    const Gap(16),
                    const MerchantDescriptionText(
                        description:
                            "Benefit from global SEO, programmatic retargeting, and millions of luxury consumers in 24h"),
                    const Gap(16),
                    const MerchantDescriptionText(
                        description:
                            "Boost your brand and increase profits by focusing on high-value sales"),
                    const Gap(48),
                    AppCustomButton(
                        buttonChild: Text(
                          LocaleKeys.introwordsgetstarted.tr(),
                          style: AppThemeData.buttonTextThem(context),
                        ),
                        ontap: () {
                          Navigator.pushNamed(context, Routes.meetLigaireRoute);
                        })
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class MerchantDescriptionText extends StatelessWidget {
  const MerchantDescriptionText({
    super.key,
    required this.description,
  });
  final String description;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(Icons.done),
        const Gap(12),
        Expanded(
            child: Text(description,
                maxLines: 2, style: Theme.of(context).textTheme.displaySmall))
      ],
    );
  }
}
