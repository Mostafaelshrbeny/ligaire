import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ligare/constants/app_theme.dart';
import 'package:ligare/constants/assets.dart';
import 'package:ligare/constants/device.dart';
import 'package:ligare/core/lang/locale_keys.g.dart';
import 'package:ligare/presentation/widgets/custombutton.dart';

class NotificationItem extends StatelessWidget {
  const NotificationItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Gap(10),
        Row(
          children: [
            Text(
              'It is a long established fact',
              style: Theme.of(context).textTheme.displayMedium,
            ),
            const Spacer(),
            Text(
              '1 m ago',
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .copyWith(color: Colors.grey),
            ),
          ],
        ),
        const Gap(8),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: Text(
                'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout',
                style: Theme.of(context)
                    .textTheme
                    .displaySmall!
                    .copyWith(color: Colors.grey),
                overflow: TextOverflow.ellipsis,
                maxLines: 3,
              ),
            ),
            const Gap(20),
            Image.asset(
              Assets.watchAsset,
              height: 50,
              width: 50,
              fit: BoxFit.cover,
            )
          ],
        ),
        const Gap(16),
        AppCustomButton(
          buttonChild: Text(
            LocaleKeys.bidswordplaceahigherbid.tr(),
            style: AppThemeData.buttonTextThem(context),
          ),
          ontap: () {},
          buttonWidth: Device.deviceWidth(context: context, percent: 1 / 2.5),
          heightPercent: 1 / 20,
        ),
        const Gap(12),
        const Divider(color: Colors.grey, thickness: 0.3),
      ],
    );
  }
}
