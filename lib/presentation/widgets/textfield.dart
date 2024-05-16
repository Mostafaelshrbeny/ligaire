import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ligare/constants/app_theme.dart';
import 'package:ligare/constants/device.dart';
import 'package:ligare/core/lang/locale_keys.g.dart';

class AppCustomTextField extends StatelessWidget {
  const AppCustomTextField({
    super.key,
    this.onChange,
    this.hint,
    this.suffix,
    this.isHidden = false,
    this.prefix,
    this.initial,
  });
  final Function(String)? onChange;
  final String? hint, initial;
  final bool isHidden;
  final Widget? suffix, prefix;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Device.deviceHeight(context: context, percent: 1 / 16),
      child: TextFormField(
        initialValue: initial,
        onChanged: onChange,
        maxLines: 1,
        obscureText: isHidden,
        decoration: InputDecoration(
            prefixIcon: prefix,
            suffixIcon: suffix,
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    style: BorderStyle.none,
                    color: AppThemeData.cardColor,
                    width: 0)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    style: BorderStyle.none,
                    color: AppThemeData.cardColor,
                    width: 0)),
            hintText: hint,
            hintStyle: Theme.of(context)
                .textTheme
                .displaySmall!
                .copyWith(color: Colors.grey),
            filled: true,
            fillColor: AppThemeData.cardColor),
      ),
    );
  }
}
