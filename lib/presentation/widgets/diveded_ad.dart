import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ligare/constants/assets.dart';
import 'package:ligare/constants/device.dart';
import 'package:ligare/core/lang/locale_keys.g.dart';

class DividedAdRow extends StatelessWidget {
  const DividedAdRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Device.deviceHeight(context: context, percent: 1 / 3.5),
      child: Row(
        children: [
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Gap(34),
                Text(
                  'THE FINEST\nBAG COLLECTION',
                  style: Theme.of(context).textTheme.displayMedium,
                  maxLines: 2,
                ),
                const Gap(4),
                Text(
                  'Unwind the new luxury bag collection specially made for your taste',
                  style: Theme.of(context).textTheme.headlineSmall,
                  softWrap: true,
                  maxLines: 3,
                ),
                const Spacer(),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      LocaleKeys.explorenow.tr(),
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall!
                          .copyWith(color: Colors.white),
                    ),
                    const Gap(4),
                    const Icon(Icons.arrow_right_alt_outlined)
                  ],
                ),
                const Gap(26)
              ],
            ),
          ),
          //  const Spacer(),
          Container(
            height: Device.deviceHeight(context: context, percent: 1 / 3.5),
            width: Device.deviceWidth(context: context, percent: 1 / 2),
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(Assets.watchAsset), fit: BoxFit.cover)),
          )
        ],
      ),
    );
  }
}
