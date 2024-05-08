import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:ligare/constants/assets.dart';
import 'package:ligare/constants/device.dart';
import 'package:ligare/core/lang/locale_keys.g.dart';
import 'package:ligare/presentation/widgets/backarrowbutton.dart';
import 'package:ligare/presentation/widgets/collectioncheckbox.dart';

class SetPreferencesScreen extends StatelessWidget {
  const SetPreferencesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: AppBackarrow(screencontext: context),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              LocaleKeys.setyourpreferences.tr(),
              style: Theme.of(context).textTheme.displayLarge,
            ),
            const Gap(16),
            Text(
              LocaleKeys.wewouldloveto.tr(),
              style: Theme.of(context)
                  .textTheme
                  .displaySmall!
                  .copyWith(color: Colors.grey),
            ),
            Gap(Device.deviceHeight(context: context, percent: 1 / 8)),
            CollectionCheckBox(
              collectionName: LocaleKeys.cars.tr(),
              collectionImage: Assets.carCollection,
            ),
            const Gap(12),
            CollectionCheckBox(
              collectionName: LocaleKeys.watches.tr(),
              collectionImage: Assets.watchesCollection,
            ),
            const Gap(12),
            CollectionCheckBox(
              collectionName: LocaleKeys.realestate.tr(),
              collectionImage: Assets.realStateCollection,
            ),
            const Gap(12),
            CollectionCheckBox(
              collectionName: LocaleKeys.jets.tr(),
              collectionImage: Assets.jetsCollection,
            ),
            const Gap(12),
            CollectionCheckBox(
              collectionName: LocaleKeys.bags.tr(),
              collectionImage: Assets.fashionCollection,
            ),
          ],
        ),
      ),
    );
  }
}
