import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ligare/constants/device.dart';
import 'package:ligare/core/lang/locale_keys.g.dart';
import 'package:ligare/presentation/widgets/custombutton.dart';
import 'package:ligare/presentation/widgets/selldropdown.dart';
import 'package:ligare/presentation/widgets/signupfields.dart';

class ProductInfoList extends StatelessWidget {
  const ProductInfoList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        RegesterTextField(
            label: LocaleKeys.sellwordstextinput.tr(),
            hint: LocaleKeys.sellwordstypeyourinput.tr()),
        const Gap(24),
        SellDropDown(
          label: LocaleKeys.cutsomfilterbrand.tr(),
          choiceListLabel: LocaleKeys.sellwordschooseabrand.tr(),
        ),
        const Gap(24),
        SellDropDown(
            label: LocaleKeys.cutsomfiltermodel.tr(),
            choiceListLabel: LocaleKeys.sellwordschooseamodel.tr()),
        const Gap(24),
        SellDropDown(
            label: LocaleKeys.sellwordsyear.tr(),
            choiceListLabel: LocaleKeys.sellwordschooseayear.tr()),
        const Gap(24),
        Text(
          LocaleKeys.location.tr(),
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .copyWith(color: Colors.white),
        ),
        const Gap(4),
        Container(
          height: Device.deviceHeight(context: context, percent: 1 / 4),
          width: double.infinity,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/Field.png'))),
        ),
        const Gap(12),
        AppCustomButton(
            backgroundColor: Colors.transparent,
            buttonChild: Text(
              LocaleKeys.sellwordschooselocation.tr(),
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .copyWith(color: Colors.white),
            ),
            ontap: () {}),
        const Gap(24),
        RegesterTextField(
          label: LocaleKeys.sellwordsprice.tr(),
          hint: '10,000,000',
          suffixIcon: Container(
            width: Device.deviceWidth(context: context, percent: 1 / 6),
            color: const Color.fromARGB(255, 27, 25, 25),
            child: Center(
                child: Text(
              'EGP',
              style: Theme.of(context).textTheme.displaySmall,
            )),
          ),
        ),
        const Gap(24),
        SellDropDown(
            label: LocaleKeys.kilometers.tr(),
            choiceListLabel: LocaleKeys.chooseaKilo.tr()),
        const Gap(24),
        RegesterTextField(
          label: LocaleKeys.sellwordsdescription.tr(),
          hint: LocaleKeys.sellwordsdescribeyour.tr(),
          maxlines: 5,
        )
      ],
    );
  }
}
