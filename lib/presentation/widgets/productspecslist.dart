import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ligare/constants/app_routs.dart';
import 'package:ligare/constants/device.dart';
import 'package:ligare/core/lang/locale_keys.g.dart';
import 'package:ligare/presentation/widgets/selldropdown.dart';
import 'package:ligare/presentation/widgets/signupfields.dart';
import 'package:ligare/presentation/widgets/uploadimage_box.dart';

class ProductSpecsList extends StatefulWidget {
  const ProductSpecsList({super.key});

  @override
  State<ProductSpecsList> createState() => _ProductSpecsListState();
}

class _ProductSpecsListState extends State<ProductSpecsList> {
  String gValue = '';
  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: [
        SellDropDown(
            label: LocaleKeys.sellwordsenginecapacity.tr(),
            choiceListLabel: LocaleKeys.sellwordschoosecapacity.tr()),
        const Gap(24),
        SellDropDown(
            label: LocaleKeys.sellwordscolor.tr(),
            choiceListLabel: LocaleKeys.sellwordschooseacolor.tr()),
        const Gap(24),
        RegesterTextField(
            readonly: true,
            ontap: () => Navigator.pushNamed(
                    context, Routes.selectedFilterRoute, arguments: {
                  'Filtertype': LocaleKeys.cutsomfilterfeatures.tr()
                }),
            suffixIcon: const Icon(Icons.arrow_forward_ios_rounded),
            label: LocaleKeys.cutsomfilterfeatures.tr(),
            hint: 'Select car features'),
        const Gap(24),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              LocaleKeys.sellwordsuploadproductlicense.tr(),
              style: Theme.of(context).textTheme.displaySmall,
            ),
            const Gap(4),
            const UploadImageBox(),
            const Gap(24),
            RegesterTextField(
                readonly: true,
                suffixIcon: const Icon(Icons.arrow_forward_ios_rounded),
                label: LocaleKeys.sellwordsadditionalservices.tr(),
                hint:
                    '${LocaleKeys.select.tr()} ${LocaleKeys.sellwordsadditionalservices.tr()}')
          ],
        ),
        const Gap(24),
        Text(
          LocaleKeys.sellwordsdoyouwant.tr(),
          style: Theme.of(context).textTheme.displaySmall,
        ),
        const Gap(16),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: RadioListTile.adaptive(
                value: "yes",
                groupValue: gValue,
                onChanged: (value) {
                  setState(() {
                    gValue = value!;
                  });
                },
                title: const Text("yes"),
                contentPadding: EdgeInsets.zero,
              ),
            ),
            Expanded(
              child: RadioListTile.adaptive(
                value: "No",
                groupValue: gValue,
                onChanged: (value) {
                  setState(() {
                    gValue = value!;
                  });
                },
                title: const Text("No"),
                contentPadding: EdgeInsets.zero,
              ),
            ),
          ],
        ),
        const Gap(13),
        Text(
          LocaleKeys.sellwordsourteam.tr(),
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        Gap(Device.deviceHeight(context: context, percent: 1 / 10))
      ],
    );
  }
}
