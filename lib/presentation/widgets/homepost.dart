import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ligare/core/lang/locale_keys.g.dart';
import 'package:ligare/presentation/widgets/timetextrow.dart';

class HomePostWidget extends StatelessWidget {
  const HomePostWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const CircleAvatar(
              radius: 20,
              backgroundColor: Colors.white,
            ),
            const Gap(6),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'British Automotive',
                  style: Theme.of(context).textTheme.displaySmall,
                ),
                const Gap(8),
                Text(
                  'Sponsored Event',
                  style: Theme.of(context).textTheme.labelSmall,
                )
              ],
            )
          ],
        ),
        const Gap(16),
        Image.asset('assets/images/Screenshot_2024-01-06_at_6.37 1.png'),
        const Gap(6),
        Text(
          'Get in your dream car !',
          style: Theme.of(context).textTheme.displayMedium,
        ),
        const Gap(8),
        Text(
          'Join British Automotive event and enjoy our luxury cars\nshowroom, test drive your dream car and find our mega deals',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        const Gap(16),
        const TimerTextRow(),
        const Gap(16),
        Row(
          children: [
            Text(
              LocaleKeys.findmore.tr(),
              style: Theme.of(context)
                  .textTheme
                  .displaySmall!
                  .copyWith(decoration: TextDecoration.underline),
            ),
            const Spacer(),
            const Icon(Icons.bookmark_border_rounded),
            const Gap(16),
            const Icon(Icons.share),
          ],
        )
      ],
    );
  }
}
