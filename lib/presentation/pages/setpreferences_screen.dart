import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:ligare/constants/app_routs.dart';
import 'package:ligare/constants/assets.dart';
import 'package:ligare/constants/collections.dart';
import 'package:ligare/constants/device.dart';
import 'package:ligare/core/lang/locale_keys.g.dart';
import 'package:ligare/presentation/blocs/SetPrefrencesCubit/set_prefrences_cubit.dart';
import 'package:ligare/presentation/blocs/SetPrefrencesCubit/set_prefrences_state.dart';
import 'package:ligare/presentation/pages/skipornext.dart';
import 'package:ligare/presentation/widgets/backarrowbutton.dart';
import 'package:ligare/presentation/widgets/collectioncheckbox.dart';
import 'package:ligare/presentation/widgets/countriesgrid.dart';
import 'package:ligare/presentation/widgets/custombutton.dart';
import 'package:ligare/presentation/widgets/setcollectionlist.dart';

class SetPreferencesScreen extends StatefulWidget {
  const SetPreferencesScreen({super.key});

  @override
  State<SetPreferencesScreen> createState() => _SetPreferencesScreenState();
}

class _SetPreferencesScreenState extends State<SetPreferencesScreen> {
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          LocaleKeys.setyourpreferences.tr(),
                          style: Theme.of(context).textTheme.displayLarge,
                        ),
                        const Gap(16),
                        Text(
                          LocaleKeys.wewouldloveto.tr(),
                          style: Theme.of(context)
                              .textTheme
                              .displaySmall!
                              .copyWith(color: Colors.grey),
                        ),
                        Gap(Device.deviceHeight(
                            context: context, percent: 1 / 8)),
                        const SetYourCollectionList(),
                      ],
                    ),
                  ),
                ),
                const Align(
                  alignment: Alignment.bottomCenter,
                  child: SkipOrNextRow(
                    skipScreen: '',
                    nextScreen: Routes.favBrandsRoute,
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
