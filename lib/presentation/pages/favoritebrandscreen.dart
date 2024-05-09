import 'package:easy_localization/easy_localization.dart';

import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:ligare/constants/app_routs.dart';

import 'package:ligare/core/lang/locale_keys.g.dart';
import 'package:ligare/presentation/blocs/SetPrefrencesCubit/set_prefrences_cubit.dart';
import 'package:ligare/presentation/blocs/SetPrefrencesCubit/set_prefrences_state.dart';
import 'package:ligare/presentation/pages/skipornext.dart';
import 'package:ligare/presentation/widgets/backarrowbutton.dart';
import 'package:ligare/presentation/widgets/brandgrid.dart';

class FavoriteBrandsScreen extends StatelessWidget {
  const FavoriteBrandsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SetPrefrencesCubit(),
      child: BlocConsumer<SetPrefrencesCubit, SetPrefrencesState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              leading: AppBackarrow(screencontext: context),
            ),
            body: Stack(
              children: [
                SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          LocaleKeys.customizeyourfeedand.tr(),
                          style: Theme.of(context).textTheme.displayLarge,
                        ),
                        const Gap(16),
                        Text(
                          LocaleKeys.pleaseselect.tr(),
                          style: Theme.of(context)
                              .textTheme
                              .displaySmall!
                              .copyWith(color: Colors.grey),
                        ),
                        const Gap(36),
                        const BrandGridView(),
                      ],
                    ),
                  ),
                ),
                const Align(
                  alignment: Alignment.bottomCenter,
                  child: SkipOrNextRow(
                      skipScreen: '', nextScreen: Routes.allSetRoute),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
