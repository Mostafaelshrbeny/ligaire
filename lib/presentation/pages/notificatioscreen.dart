import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'package:gap/gap.dart';

import 'package:ligare/constants/device.dart';
import 'package:ligare/core/lang/locale_keys.g.dart';
import 'package:ligare/presentation/widgets/backarrowbutton.dart';

import 'package:ligare/presentation/widgets/notificationitem.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: AppBackarrow(screencontext: context),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                LocaleKeys.notificationwordnotifications.tr(),
                style: Theme.of(context).textTheme.displayLarge,
              ),
            ),
            const Gap(16),
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) => Container(
                width: Device.deviceWidth(context: context),
                padding: const EdgeInsets.symmetric(horizontal: 16),
                color: Colors.grey.withOpacity(0.2),
                child: const NotificationItem(),
              ),
              itemCount: 20,
            ),
          ],
        ),
      ),
    );
  }
}
