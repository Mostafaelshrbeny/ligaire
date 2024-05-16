import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ligare/core/lang/locale_keys.g.dart';
import 'package:ligare/presentation/widgets/backarrowbutton.dart';
import 'package:ligare/presentation/widgets/pricerange_card.dart';

class PriceRangeScreen extends StatefulWidget {
  const PriceRangeScreen({super.key});

  @override
  State<PriceRangeScreen> createState() => _PriceRangeScreenState();
}

class _PriceRangeScreenState extends State<PriceRangeScreen> {
  double rangeStart = 20;
  double rangeEnd = 40;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: AppBackarrow(screencontext: context),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16, bottom: 16),
            child: Text(
              LocaleKeys.cutsomfilterpricerange.tr(),
              style: Theme.of(context).textTheme.displayLarge,
            ),
          ),
          Divider(
            thickness: 2,
            color: ThemeData.dark().cardColor,
          ),
          const Gap(16),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Text(
              '${LocaleKeys.pleaseselect.tr()} a ${LocaleKeys.cutsomfilterpricerange.tr()}',
              style: Theme.of(context)
                  .textTheme
                  .displaySmall!
                  .copyWith(color: Colors.grey),
            ),
          ),
          RangeSlider(
            inactiveColor: ThemeData.dark().scaffoldBackgroundColor,
            divisions: 100,
            min: 0,
            max: 100,
            onChanged: (value) {
              setState(() {
                rangeStart = value.start;
                rangeEnd = value.end;
              });
            },
            values: RangeValues(rangeStart, rangeEnd),
            // labels: RangeLabels('$rangeStart M', '$rangeEnd M'),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              children: [
                Text('0 M', style: Theme.of(context).textTheme.headlineSmall),
                const Spacer(),
                Text('100 M', style: Theme.of(context).textTheme.headlineSmall)
              ],
            ),
          ),
          const Gap(32),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                Text(
                  LocaleKeys.from.tr(),
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall!
                      .copyWith(color: Colors.white),
                ),
                PriceRangeCard(price: rangeStart.toInt()),
                Text(
                  LocaleKeys.to.tr(),
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall!
                      .copyWith(color: Colors.white),
                ),
                PriceRangeCard(price: rangeEnd.toInt()),
              ],
            ),
          )
        ],
      ),
    );
  }
}
