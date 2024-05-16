import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:ligare/constants/app_theme.dart';
import 'package:ligare/constants/device.dart';
import 'package:ligare/core/lang/locale_keys.g.dart';

class AppBottomSheet {
  static sellOperation(BuildContext context) {
    return showModalBottomSheet(
      backgroundColor: const Color.fromRGBO(30, 30, 30, 1),
      isDismissible: false,
      enableDrag: false,
      isScrollControlled: true,
      context: context,
      builder: (context) => Container(
          padding: const EdgeInsets.symmetric(vertical: 33, horizontal: 16),
          color: const Color.fromRGBO(30, 30, 30, 1),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                LocaleKeys.sellwordsyouaresellingas.tr(),
                style: Theme.of(context).textTheme.displayMedium,
              ),
              const Gap(16),
              Row(
                children: [
                  SellCard(
                    sellTypeicon: const Icon(
                      Icons.person,
                      size: 30,
                    ),
                    sellTypeLabel: LocaleKeys.sellwordsindividaul.tr(),
                    index: 0,
                  ),
                  const Spacer(),
                  SellCard(
                    sellTypeicon: Image.asset(
                      'assets/images/briefcase.png',
                      height: 30,
                      fit: BoxFit.fitHeight,
                    ),
                    sellTypeLabel: LocaleKeys.sellwordsmerchant.tr(),
                    index: 1,
                  ),
                ],
              ),
            ],
          )),
    );
  }
}

class SellCard extends StatelessWidget {
  const SellCard({
    super.key,
    required this.sellTypeicon,
    required this.sellTypeLabel,
    required this.index,
  });
  final Widget sellTypeicon;
  final String sellTypeLabel;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppThemeData.cardColor,
      width: Device.deviceWidth(context: context, percent: 1 / 2.3),
      height: Device.deviceHeight(context: context, percent: 1 / 6),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            sellTypeicon,
            const Gap(8),
            Text(
              sellTypeLabel,
              style: Theme.of(context).textTheme.displaySmall,
            )
          ],
        ),
      ),
    );
  }
}
