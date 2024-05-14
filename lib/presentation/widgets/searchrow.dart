import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ligare/constants/app_routs.dart';
import 'package:ligare/constants/app_theme.dart';
import 'package:ligare/constants/device.dart';
import 'package:ligare/core/lang/locale_keys.g.dart';
import 'package:ligare/presentation/widgets/textfield.dart';

class SearchRowWidget extends StatelessWidget {
  const SearchRowWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: AppCustomTextField(
          prefix: const Icon(
            Icons.search,
            size: 16,
            color: Color.fromRGBO(182, 182, 184, 1),
          ),
          hint: LocaleKeys.lookingfor.tr(),
          suffix: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.image_outlined,
                color: Color.fromRGBO(182, 182, 184, 1),
              )),
        )),
        const Gap(8),
        InkWell(
          onTap: () => Navigator.pushNamed(context, Routes.filterRoute),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            height: Device.deviceHeight(context: context, percent: 1 / 16),
            color: AppThemeData.cardColor,
            child: const Center(
              child: Icon(Icons.filter_alt_outlined,
                  color: Color.fromRGBO(182, 182, 184, 1)),
            ),
          ),
        )
      ],
    );
  }
}
