import 'package:easy_localization/easy_localization.dart';

import 'package:flutter/material.dart';
import 'package:ligare/core/lang/locale_keys.g.dart';

class ResendText extends StatelessWidget {
  const ResendText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(TextSpan(children: [
      TextSpan(
        text: LocaleKeys.verifydidntreceive.tr(),
        style: Theme.of(context)
            .textTheme
            .displaySmall!
            .copyWith(color: Colors.grey),
      ),
      TextSpan(
          text: LocaleKeys.verifyresend.tr(),
          style: Theme.of(context).textTheme.displaySmall)
    ]));
  }
}
