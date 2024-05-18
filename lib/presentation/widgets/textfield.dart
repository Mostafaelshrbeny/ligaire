import 'package:flutter/material.dart';
import 'package:ligare/constants/app_theme.dart';
import 'package:ligare/constants/device.dart';

class AppCustomTextField extends StatelessWidget {
  const AppCustomTextField({
    super.key,
    this.onChange,
    this.hint,
    this.suffix,
    this.isHidden = false,
    this.prefix,
    this.initial,
    this.maxlines = 1,
    this.readonly = false,
    this.ontap,
  });
  final Function(String)? onChange;
  final Function()? ontap;
  final String? hint, initial;
  final bool isHidden, readonly;
  final Widget? suffix, prefix;
  final int? maxlines;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:
          Device.deviceHeight(context: context, percent: 1 / (16 / maxlines!)),
      child: TextFormField(
        initialValue: initial,
        onChanged: onChange,
        readOnly: readonly,
        maxLines: maxlines,
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
