import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ligare/constants/assets.dart';
import 'package:ligare/constants/collections.dart';
import 'package:ligare/constants/device.dart';
import 'package:ligare/core/lang/locale_keys.g.dart';
import 'package:ligare/presentation/blocs/SellingCubit/sell_product_cubit.dart';

class ChooseProductType extends StatefulWidget {
  const ChooseProductType({
    super.key,
  });

  @override
  State<ChooseProductType> createState() => _ChooseProductTypeState();
}

class _ChooseProductTypeState extends State<ChooseProductType> {
  String typeValue = '';
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          LocaleKeys.sellwordschooseproducttype.tr(),
          style: Theme.of(context).textTheme.displayMedium,
        ),
        ListView.separated(
          physics: const NeverScrollableScrollPhysics(),
          padding: const EdgeInsets.symmetric(vertical: 16),
          shrinkWrap: true,
          itemBuilder: (context, index) => Container(
            color: const Color.fromRGBO(36, 36, 37, 1),
            height: Device.deviceHeight(context: context, percent: 1 / 13),
            width: double.infinity,
            child: Row(
              children: [
                Radio(
                  value: Collections.collectionsName[index],
                  groupValue: typeValue,
                  onChanged: (value) {
                    typeValue == ''
                        ? SellProductCubit.get(context).showButton()
                        : null;
                    setState(() {
                      typeValue = value!;
                    });
                  },
                ),
                const Gap(12),
                Text(
                  Collections.collectionsName[index],
                  style: Theme.of(context).textTheme.displayMedium,
                ),
                const Spacer(),
                Container(
                    height:
                        Device.deviceHeight(context: context, percent: 1 / 13),
                    width:
                        Device.deviceHeight(context: context, percent: 1 / 10),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(Assets.collectionAssets[index]),
                            fit: BoxFit.cover)),
                    child: Container(
                      height: Device.deviceHeight(
                          context: context, percent: 1 / 13),
                      width: Device.deviceHeight(
                          context: context, percent: 1 / 10),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [
                              const Color.fromRGBO(36, 36, 37, 1),
                              const Color.fromRGBO(36, 36, 37, 1).withOpacity(0)
                            ],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight),
                      ),
                    ))
              ],
            ),
          ),
          separatorBuilder: (context, index) => const Gap(12),
          itemCount: Collections.collectionsName.length,
        )
      ],
    );
  }
}
