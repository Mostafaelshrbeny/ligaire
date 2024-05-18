import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ligare/core/lang/locale_keys.g.dart';
import 'package:ligare/presentation/blocs/SellCycle/sell_cycle_state.dart';
import 'package:ligare/presentation/widgets/product_info.dart';
import 'package:ligare/presentation/widgets/productspecslist.dart';

class SellCycleCubit extends Cubit<SellCycleState> {
  SellCycleCubit() : super(SellCycleInitial());
  static SellCycleCubit get(context) => BlocProvider.of(context);
  int currentStep = 0;
  changeStep(int newStep) {
    if (newStep < 3) {
      currentStep = newStep;
    }

    emit(ChangeStepState());
  }

  List<Step> stepsList() {
    return [
      Step(
          isActive: currentStep == 0,
          title: currentStep == 0
              ? Text(LocaleKeys.sellwordsproductinfo.tr())
              : const SizedBox(),
          content: const ProductInfoList()),
      Step(
          isActive: currentStep == 1,
          title: currentStep == 1
              ? Text(LocaleKeys.sellwordsproductspecs.tr())
              : const SizedBox(),
          content: const ProductSpecsList()),
      Step(
          isActive: currentStep == 2,
          title: currentStep == 2
              ? Text(LocaleKeys.sellwordsapproval.tr())
              : const SizedBox(),
          content: Container())
    ];
  }
}
