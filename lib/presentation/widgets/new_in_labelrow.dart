import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ligare/core/lang/locale_keys.g.dart';

class NewInLabelRow extends StatelessWidget {
  const NewInLabelRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Text(
              LocaleKeys.newin.tr(),
              style: Theme.of(context).textTheme.displayMedium,
            ),
            const Gap(4),
            Text(
              '742 result',
              style: Theme.of(context).textTheme.labelSmall,
            ),
          ],
        ),
        const Spacer(),
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.swap_vert,
              color: Color.fromRGBO(160, 160, 161, 1),
            ))
      ],
    );
  }
}
