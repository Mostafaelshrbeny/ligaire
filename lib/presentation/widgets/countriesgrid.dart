import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:ligare/constants/assets.dart';
import 'package:ligare/constants/countries.dart';
import 'package:ligare/constants/device.dart';
import 'package:ligare/core/lang/locale_keys.g.dart';
import 'package:ligare/presentation/blocs/IntroCubit/intro_cubit.dart';
import 'package:ligare/presentation/pages/introscreen.dart';
import 'package:ligare/presentation/widgets/checkbox.dart';
import 'package:ligare/presentation/widgets/custombutton.dart';

class ChooseCountry extends StatelessWidget {
  const ChooseCountry({
    super.key,
    required this.groupValue,
  });

  final String groupValue;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          LocaleKeys.introwordschooseacountry.tr(),
          style: Theme.of(context).textTheme.displayMedium,
        ),
        const Gap(24),
        Padding(
          padding: const EdgeInsets.only(bottom: 32),
          child: GridView.builder(
            padding: const EdgeInsets.all(0),
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, mainAxisSpacing: 15, crossAxisSpacing: 10),
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  IntroCubit.get(context).selectCountry(
                      countryName: Country.countriesValue[index]);
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: groupValue == Country.countriesValue[index]
                          ? Colors.grey.withOpacity(0.2)
                          : Colors.black,
                      image: DecorationImage(
                          image: AssetImage(Assets.countries[index]),
                          fit: BoxFit.scaleDown)),
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Text(
                              Country.countriesValue[index],
                              style: Theme.of(context).textTheme.displaySmall,
                            )),
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: CountryCheckBox(
                            index: index, groupValue: groupValue),
                      ),
                    ],
                  ),
                ),
              );
            },
            itemCount: 6,
          ),
        ),
        IntroCubit.get(context).buttonShow
            ? AppCustomButton(
                buttonChild: const NextTextButton(),
                ontap: () {
                  IntroCubit.get(context).increaseWidgetIndex();
                },
              )
            : const SizedBox()
      ],
    );
  }
}

class NextTextButton extends StatelessWidget {
  const NextTextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          LocaleKeys.next.tr(),
          style: Theme.of(context)
              .textTheme
              .displayMedium!
              .copyWith(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        const Gap(10),
        SvgPicture.asset(Assets.arrowButton)
      ],
    );
  }
}
