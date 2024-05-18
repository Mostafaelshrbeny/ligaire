import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ligare/core/lang/locale_keys.g.dart';
import 'package:ligare/presentation/blocs/SellingCubit/sell_product_cubit.dart';

import 'package:ligare/presentation/widgets/selltypecard.dart';

class SellerType extends StatefulWidget {
  const SellerType({
    super.key,
  });

  @override
  State<SellerType> createState() => _SellerTypeState();
}

class _SellerTypeState extends State<SellerType> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          LocaleKeys.sellwordsyouaresellingas.tr(),
          style: Theme.of(context).textTheme.displayMedium,
        ),
        const Gap(16),
        Row(
          children: [
            SellCard(
              sellTypeicon: const Icon(
                Icons.person,
                size: 30,
              ),
              sellTypeLabel: LocaleKeys.sellwordsindividaul.tr(),
              ontap: () {
                SellProductCubit.get(context).setSellerType(type: 1);
                setState(() {});
              },
              clicked: SellProductCubit.get(context).sellerType == 1,
            ),
            const Spacer(),
            SellCard(
              sellTypeicon: Image.asset(
                'assets/images/briefcase.png',
                height: 30,
                fit: BoxFit.fitHeight,
              ),
              sellTypeLabel: LocaleKeys.sellwordsmerchant.tr(),
              ontap: () {
                SellProductCubit.get(context).setSellerType(type: 2);
                setState(() {});
              },
              clicked: SellProductCubit.get(context).sellerType == 2,
            ),
          ],
        ),
        const Gap(24),
      ],
    );
  }
}
