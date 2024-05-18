import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ligare/constants/app_theme.dart';
import 'package:ligare/constants/device.dart';
import 'package:ligare/core/lang/locale_keys.g.dart';

class UploadImageBox extends StatelessWidget {
  const UploadImageBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppThemeData.cardColor,
      height: Device.deviceHeight(context: context, percent: 1 / 5),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.upload_file_rounded),
          const Gap(12),
          Text.rich(TextSpan(children: [
            TextSpan(
                text: LocaleKeys.sellwordschooselicensedocument
                    .tr()
                    .split(' ')[0],
                style: Theme.of(context).textTheme.displaySmall),
            const TextSpan(text: ' '),
            TextSpan(
                text:
                    '${LocaleKeys.sellwordschooselicensedocument.tr().split(' ')[1]} ${LocaleKeys.sellwordschooselicensedocument.tr().split(' ')[2]}',
                style: Theme.of(context)
                    .textTheme
                    .displaySmall!
                    .copyWith(color: Colors.grey)),
          ])),
          const Gap(8),
          Text(
            "Please upload .png , .jpg or .pdf file. Max size 3MB",
            style: Theme.of(context).textTheme.labelSmall,
          ),
        ],
      ),
    );
  }
}
