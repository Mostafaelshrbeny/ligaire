import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ligare/core/lang/locale_keys.g.dart';

class ShopByCollectionDescription extends StatelessWidget {
  const ShopByCollectionDescription({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          LocaleKeys.shopbycategory.tr(),
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        const Gap(16),
        Row(
          children: [
            Text(
              LocaleKeys.allcategories.tr(),
              style: Theme.of(context).textTheme.displaySmall,
            ),
            const Gap(8),
            const Icon(Icons.arrow_right_alt)
          ],
        ),
      ],
    );
  }
}
