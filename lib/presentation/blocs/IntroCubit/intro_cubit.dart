import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ligare/presentation/blocs/IntroCubit/intro_state.dart';

import 'package:ligare/presentation/widgets/Referralcode.dart';
import 'package:ligare/presentation/widgets/countriesgrid.dart';
import 'package:ligare/presentation/widgets/introtext.dart';

class IntroCubit extends Cubit<IntroState> {
  IntroCubit() : super(IntroInitial());
  static IntroCubit get(context) => BlocProvider.of(context);
  int widgetIndex = 0;
  bool buttonShow = false;
  String groupValue = "initial";
  introWidget({required BuildContext context}) {
    List<Widget> introWidget = [
      ChooseCountry(groupValue: IntroCubit.get(context).groupValue),
      const IntroWelcomeText(),
      const ReferralcodeWidget()
    ];
    return introWidget[widgetIndex];
  }

  selectCountry({required String countryName}) {
    groupValue = countryName;
    buttonShow = true;
    emit(CountryChangeState());
  }

  increaseWidgetIndex() {
    if (widgetIndex < 2) {
      if (widgetIndex == 1) {
        widgetIndex++;
        buttonShow = false;
      } else {
        widgetIndex++;
      }
    }
    emit(ChangeWidgetState());
  }
}
