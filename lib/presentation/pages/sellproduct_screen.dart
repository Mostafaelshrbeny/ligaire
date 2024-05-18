import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ligare/constants/app_theme.dart';
import 'package:ligare/core/lang/locale_keys.g.dart';
import 'package:ligare/presentation/blocs/SellCycle/sell_cycle_cubit.dart';
import 'package:ligare/presentation/blocs/SellCycle/sell_cycle_state.dart';
import 'package:ligare/presentation/pages/skipornext.dart';
import 'package:ligare/presentation/widgets/backarrowbutton.dart';
import 'package:ligare/presentation/widgets/bottom_approval.dart';
import 'package:ligare/presentation/widgets/nextstep_text.dart';

class SellProductScreen extends StatelessWidget {
  const SellProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SellCycleCubit(),
      child: BlocConsumer<SellCycleCubit, SellCycleState>(
        listener: (context, state) {},
        builder: (context, state) {
          var sellCubit = SellCycleCubit.get(context);
          List<String> nextPages = [
            LocaleKeys.sellwordsproductspecs.tr(),
            LocaleKeys.sellwordsapproval.tr(),
          ];
          return Scaffold(
            appBar: AppBar(
              leading: sellCubit.currentStep == 0
                  ? const Icon(Icons.close)
                  : AppBackarrow(screencontext: context),
            ),
            body: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Text(
                        '${LocaleKeys.sell.tr()} ${LocaleKeys.cars.tr()}',
                        style: Theme.of(context).textTheme.displayLarge,
                      ),
                    ),
                    Expanded(
                      child: Stepper(
                          controlsBuilder: (context, details) =>
                              const SizedBox(),
                          physics: const ClampingScrollPhysics(),
                          type: StepperType.horizontal,
                          currentStep: sellCubit.currentStep,
                          steps: sellCubit.stepsList()),
                    ),
                  ],
                ),
                Align(
                  alignment: const Alignment(0, -0.75),
                  child: Divider(
                    color: AppThemeData.cardColor,
                    thickness: 1.2,
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: sellCubit.currentStep == 2
                      ? const BottomAproval()
                      : SkipOrNextRow(
                          heightPercent: 1 / 18,
                          onButtonTap: () {
                            sellCubit.changeStep(sellCubit.currentStep + 1);
                          },
                          replaceSkip: NextStepText(
                            nextStep: nextPages[sellCubit.currentStep],
                          ),
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
