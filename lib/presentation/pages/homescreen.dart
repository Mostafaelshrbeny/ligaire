import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'package:gap/gap.dart';
import 'package:ligare/constants/assets.dart';

import 'package:ligare/constants/device.dart';
import 'package:ligare/core/lang/locale_keys.g.dart';

import 'package:ligare/presentation/widgets/homegreybox.dart';

import 'package:ligare/presentation/widgets/homepostslist.dart';
import 'package:ligare/presentation/widgets/horizintalscroll.dart';
import 'package:ligare/presentation/widgets/ligairetitile.dart';
import 'package:ligare/presentation/widgets/notificationring.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const LigaireTitle(),
        centerTitle: true,
        actions: const [NotificationRing()],
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 24),
        children: [
          AppHorizintalScroll(
            hasCover: true,
            coverImage: Assets.watchAsset,
            item: Align(
              alignment: Alignment.bottomLeft,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'LAMBO Royal...',
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall!
                        .copyWith(color: Colors.white),
                  ),
                  const Gap(2),
                  Text(
                    '3 Mins ago',
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                ],
              ),
            ),
          ),
          Gap(Device.deviceHeight(context: context, percent: 1 / 16)),
          HomeGreyBox(
            label: 'Favorite car models',
            dexcription:
                'Select your favorite car brands and models to be able to personalize your experience !',
            buttontext: LocaleKeys.selectyourfavorites.tr(),
          ),
          Gap(Device.deviceHeight(context: context, percent: 1 / 16)),
          const HomePostsList()
        ],
      ),
    );
  }
}
