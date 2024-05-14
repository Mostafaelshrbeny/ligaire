import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ligare/constants/app_routs.dart';
import 'package:ligare/core/lang/locale_keys.g.dart';
import 'package:ligare/presentation/widgets/adscontainer.dart';
import 'package:ligare/presentation/widgets/gridlistproduct.dart';
import 'package:ligare/presentation/widgets/shopbycollection.dart';
import 'package:ligare/presentation/widgets/shopbycollectiondesc.dart';

class YourInterestsList extends StatelessWidget {
  const YourInterestsList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const Gap(40),
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: ShopByCollectionScroll(
            description: const ShopByCollectionDescription(),
            image: 'assets/images/zoe-holling-PScacPyJE5U-unsplash car.png',
            hasCover: true,
            item: Container(),
          ),
        ),
        const Gap(48),
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: ShopByCollectionScroll(
            description: const ShopByCollectionDescription(),
            image: 'assets/images/20942284_52550377_1000-ezgif 1.png',
            hasCover: false,
            item: Center(
              child: Image.asset(
                  'assets/images/Screenshot_2024-01-31_at_1.30 1.png'),
            ),
          ),
        ),
        const Gap(48),
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Row(
            children: [
              Text(
                LocaleKeys.newin.tr(),
                style: Theme.of(context).textTheme.labelLarge,
              ),
              const Spacer(),
              InkWell(
                onTap: () => Navigator.pushNamed(context, Routes.newInRoute),
                child: Text(
                  LocaleKeys.viewall.tr(),
                  style: Theme.of(context).textTheme.displaySmall,
                ),
              ),
              const Gap(36)
            ],
          ),
        ),
        const GridListProduct(
          itemsNumber: 4,
          hPadding: 16,
        ),
        const Gap(48),
        const AdsCoverdContainer(),
        const Gap(48),
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: ShopByCollectionScroll(
            description: const ShopByCollectionDescription(),
            image: 'assets/images/20942284_52550377_1000-ezgif 1.png',
            hasCover: false,
            item: Center(
              child: Image.asset(
                  'assets/images/Screenshot_2024-01-31_at_1.30 1.png'),
            ),
          ),
        ),
      ],
    );
  }
}
