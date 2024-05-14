import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ligare/core/lang/locale_keys.g.dart';
import 'package:ligare/data/data_sources/filters.dart';
import 'package:ligare/presentation/widgets/backarrowbutton.dart';
import 'package:ligare/presentation/widgets/collection_filter.dart';

class FilterSearchScreen extends StatefulWidget {
  const FilterSearchScreen({super.key});

  @override
  State<FilterSearchScreen> createState() => _FilterSearchScreenState();
}

class _FilterSearchScreenState extends State<FilterSearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: AppBackarrow(screencontext: context),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Text(
                    LocaleKeys.filters.tr(),
                    style: Theme.of(context).textTheme.displayLarge,
                  ),
                ),
                const Gap(8),
                Filters.filterNumbers() == 0
                    ? const SizedBox()
                    : CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 10,
                        child: Text(
                          Filters.filterNumbers().toString(),
                          style: Theme.of(context)
                              .textTheme
                              .displaySmall!
                              .copyWith(color: Colors.black),
                        ),
                      )
              ],
            ),
            const Gap(24),
            const Divider(
              color: Color.fromRGBO(71, 71, 72, 1),
              thickness: 1,
            ),
            const Gap(24),
            const CollectionFilterList(),
          ],
        ),
      ),
    );
  }
}
