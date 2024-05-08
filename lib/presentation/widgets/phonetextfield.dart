import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ligare/core/lang/locale_keys.g.dart';
import 'package:ligare/presentation/widgets/codedropdown.dart';
import 'package:ligare/presentation/widgets/textfield.dart';

class PhoneTextField extends StatelessWidget {
  const PhoneTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(LocaleKeys.signupphonenumber.tr(),
            style: Theme.of(context).textTheme.displaySmall),
        const Gap(4),
        Row(
          children: [
            const CodeDropDown(),
            Expanded(
                child:
                    AppCustomTextField(hint: LocaleKeys.signupphonenumber.tr()))
          ],
        ),
      ],
    );
  }
}
