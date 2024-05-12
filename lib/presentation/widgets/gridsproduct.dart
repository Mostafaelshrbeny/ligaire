import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ligare/constants/app_theme.dart';
import 'package:ligare/constants/device.dart';
import 'package:ligare/core/lang/locale_keys.g.dart';

class GridsProuduct extends StatelessWidget {
  const GridsProuduct({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Device.deviceWidth(context: context, percent: 1 / 2.3),
      // height: Device.deviceHeight(context: context, percent: 1 / 2.5),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Center(
            child: Container(
              color: AppThemeData.cardColor,
              height: Device.deviceWidth(context: context, percent: 1 / 2),
              width: Device.deviceWidth(context: context, percent: 1 / 2.3),
              child: Stack(
                children: [
                  Center(
                    child: Image.asset(
                        'assets/images/20942284_52550377_1000-ezgif 1.png'),
                  ),
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.all(10),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 5, vertical: 2),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey)),
                        child: Text(
                          LocaleKeys.neW.tr(),
                          style: Theme.of(context).textTheme.labelSmall,
                        ),
                      ),
                      const Spacer(),
                      const Icon(
                        Icons.heart_broken_outlined,
                        color: Colors.grey,
                      ),
                      const Gap(5)
                    ],
                  )
                ],
              ),
            ),
          ),
          const MaxGap(16),
          Text(
            'Luxury Yacht 4 levels',
            style: Theme.of(context)
                .textTheme
                .displaySmall!
                .copyWith(color: Colors.grey),
          ),
          const MaxGap(8),
          Text(
            '16,500,000 EGP',
            style: Theme.of(context).textTheme.displaySmall,
          ),
          const Gap(30)
        ],
      ),
    );
  }
}
