import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ligare/constants/device.dart';
import 'package:ligare/core/lang/locale_keys.g.dart';
import 'package:ligare/presentation/widgets/accountinfoitem.dart';
import 'package:ligare/presentation/widgets/borderedtext.dart';
import 'package:ligare/presentation/widgets/homegreybox.dart';
import 'package:ligare/presentation/widgets/profileinfo.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: 16,
            vertical: Device.deviceStatusBar(context: context) + 34),
        children: [
          const ProfilePicture(),
          const Gap(34),
          HomeGreyBox(
            hPadding: 0,
            label: LocaleKeys.accountwordsletspersonalizefeed.tr(),
            dexcription: LocaleKeys.accountwordsselectyourinterests.tr(),
            buttontext: LocaleKeys.accountwordspersonalize.tr(),
          ),
          const Gap(34),
          AccountInfoItem(
            label: LocaleKeys.accountwordsmylistings.tr(),
            suffixRow: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  '3',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const Gap(8),
                const BorderdGreyText(text: '1 pending')
              ],
            ),
          ),
          const Gap(24),
          AccountInfoItem(
              label: LocaleKeys.bidswordmyauctionbids.tr(),
              suffixRow: const Text('4')),
          const Gap(24),
          AccountInfoItem(
              label: LocaleKeys.accountwordswishlist.tr(),
              suffixRow: const Text('27')),
          const Gap(24),
          AccountInfoItem(
              label: LocaleKeys.accountwordsshareditems.tr(),
              suffixRow: const Text('27')),
          const Gap(34),
          Text(LocaleKeys.accountwordssettings.tr(),
              style: Theme.of(context)
                  .textTheme
                  .displaySmall!
                  .copyWith(color: const Color.fromRGBO(115, 116, 117, 1))),
          const Gap(24),
          AccountInfoItem(
              label: LocaleKeys.accountwordswishlist.tr(),
              suffixRow: const SizedBox()),
          const Gap(24),
          AccountInfoItem(
              label: LocaleKeys.notificationwordnotifications.tr(),
              suffixRow: const SizedBox()),
          const Gap(24),
          AccountInfoItem(
              label: LocaleKeys.accountwordslanguage.tr(),
              suffixRow: Row(
                children: [
                  Text('English',
                      style: Theme.of(context).textTheme.headlineSmall),
                  const Gap(8),
                  Switch.adaptive(
                    trackOutlineWidth: const MaterialStatePropertyAll(0),
                    value: false,
                    onChanged: (value) {},
                    inactiveThumbColor:
                        ThemeData.dark().scaffoldBackgroundColor,
                    inactiveTrackColor: Colors.grey.withOpacity(0.8),
                  ),
                ],
              )),
          const Gap(34),
          Text(LocaleKeys.support.tr(),
              style: Theme.of(context)
                  .textTheme
                  .displaySmall!
                  .copyWith(color: const Color.fromRGBO(115, 116, 117, 1))),
          const Gap(24),
          AccountInfoItem(
              label: LocaleKeys.aboutLigaire.tr(), suffixRow: const SizedBox()),
          const Gap(24),
          AccountInfoItem(
              label: LocaleKeys.accountwordstermsnconditions.tr(),
              suffixRow: const SizedBox()),
          const Gap(24),
          AccountInfoItem(
              label: LocaleKeys.accountwordsprivacypolicy.tr(),
              suffixRow: const SizedBox()),
          const Gap(24),
          AccountInfoItem(
              label: LocaleKeys.accountwordsfaq.tr(),
              suffixRow: const SizedBox()),
        ],
      ),
    );
  }
}
