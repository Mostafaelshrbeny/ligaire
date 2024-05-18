import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ligare/constants/app_routs.dart';
import 'package:ligare/core/lang/locale_keys.g.dart';

import 'package:ligare/presentation/blocs/SellingCubit/sell_product_cubit.dart';
import 'package:ligare/presentation/blocs/SellingCubit/sell_product_state.dart';
import 'package:ligare/presentation/widgets/custombutton.dart';
import 'package:ligare/presentation/widgets/twolinedescription.dart';

class SellOperation extends StatefulWidget {
  const SellOperation({
    super.key,
  });

  @override
  State<SellOperation> createState() => _SellOperationState();
}

class _SellOperationState extends State<SellOperation> {
  List<String> buttonText = [
    LocaleKeys.sellwordsproceed.tr(),
    LocaleKeys.startSelling.tr()
  ];

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SellProductCubit, SellProductState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Container(
          padding: const EdgeInsets.symmetric(vertical: 33, horizontal: 16),
          color: const Color.fromRGBO(30, 30, 30, 1),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SellProductCubit.get(context).bottomChild(),
              SellProductCubit.get(context).buttonShow
                  ? AppCustomButton(
                      buttonChild: TextWithArrow(
                          actionlabel: buttonText[
                              SellProductCubit.get(context).sellProsses]),
                      ontap: () {
                        SellProductCubit.get(context).sellerType == 2
                            ? Navigator.pushNamed(context, Routes.merchantRoute)
                            : (SellProductCubit.get(context).sellProsses == 0
                                ? SellProductCubit.get(context)
                                    .changeSellProcess()
                                : Navigator.pushNamed(
                                    context, Routes.sellProductRoute));
                      })
                  : const SizedBox()
            ],
          ),
        );
      },
    );
  }
}
