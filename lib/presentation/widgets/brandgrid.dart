import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ligare/constants/assets.dart';
import 'package:ligare/constants/device.dart';
import 'package:ligare/presentation/blocs/SetPrefrencesCubit/set_prefrences_cubit.dart';
import 'package:ligare/presentation/blocs/SetPrefrencesCubit/set_prefrences_state.dart';
import 'package:ligare/presentation/widgets/checkbox.dart';

class BrandGridView extends StatelessWidget {
  const BrandGridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SetPrefrencesCubit(),
      child: BlocConsumer<SetPrefrencesCubit, SetPrefrencesState>(
        listener: (context, state) {},
        builder: (context, state) {
          return GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
            ),
            itemBuilder: (context, index) => InkWell(
              onTap: () {
                SetPrefrencesCubit.get(context).onBrandClick(index: index);
              },
              child: Container(
                color: SetPrefrencesCubit.get(context)
                        .selectedBrand
                        .contains(index)
                    ? Colors.grey.withOpacity(0.1)
                    : Colors.transparent,
                height: Device.deviceHeight(context: context, percent: 1 / 6),
                width: Device.deviceWidth(context: context, percent: 1 / 3.5),
                child: Stack(
                  children: [
                    Center(child: Image.asset(Assets.brandLogo[index])),
                    Align(
                        alignment: Alignment.topRight,
                        child: AppCheckBox(
                            groupValue: SetPrefrencesCubit.get(context)
                                .selectedBrand
                                .contains(index)))
                  ],
                ),
              ),
            ),
            itemCount: Assets.brandLogo.length,
          );
        },
      ),
    );
  }
}
