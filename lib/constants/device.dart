import 'package:flutter/material.dart';

class Device {
  static hideKeyboard(BuildContext context) {
    FocusScope.of(context).unfocus();
  }

  static double deviceHeight(
      {required BuildContext context, double percent = 1}) {
    return MediaQuery.of(context).size.height * percent;
  }

  static double deviceWidth(
      {required BuildContext context, double percent = 1}) {
    return MediaQuery.of(context).size.width * percent;
  }

  static closeKeyboard() {
    FocusManager.instance.primaryFocus?.unfocus();
  }
}
