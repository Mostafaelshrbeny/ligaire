import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ligare/constants/app_routs.dart';
import 'package:ligare/constants/app_theme.dart';
import 'package:ligare/core/lang/locale_keys.g.dart';
import 'package:ligare/presentation/widgets/backarrowbutton.dart';
import 'package:ligare/presentation/widgets/custombutton.dart';
import 'package:ligare/presentation/widgets/filter_itemslist.dart';

class SelectedFilterScreen extends StatelessWidget {
  const SelectedFilterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Map<String, String>? args =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>?;

    return Scaffold(
      appBar: AppBar(
        leading: AppBackarrow(screencontext: context),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              args!['Filtertype']!,
              style: Theme.of(context).textTheme.displayLarge,
            ),
          ),
          const Gap(24),
          const Divider(
            color: Color.fromRGBO(71, 71, 72, 1),
            thickness: 1,
          ),
          const Expanded(
            child: FilterItemsList(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: AppCustomButton(
                buttonChild: Text(
                  LocaleKeys.done.tr(),
                  style: AppThemeData.buttonTextThem(context),
                ),
                ontap: () {
                  Navigator.pushReplacementNamed(context, Routes.filterRoute);
                }),
          ),
          const Gap(32)
        ],
      ),
    );
  }
}
