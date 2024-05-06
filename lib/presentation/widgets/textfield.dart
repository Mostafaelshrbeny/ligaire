import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ligare/constants/device.dart';
import 'package:ligare/core/lang/locale_keys.g.dart';

class AppCustomTextField extends StatelessWidget {
  const AppCustomTextField({
    super.key,
    this.onChange,
    required this.hint,
    this.suffix,
  });
  final Function(String)? onChange;
  final String hint;
  final Widget? suffix;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Device.deviceHeight(context: context, percent: 1 / 16),
      child: TextFormField(
        onChanged: onChange,
        maxLines: 1,
        decoration: InputDecoration(
            suffixIcon: suffix,
            enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                    style: BorderStyle.none,
                    color: Color.fromRGBO(36, 36, 37, 1),
                    width: 0)),
            focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                    style: BorderStyle.none,
                    color: Color.fromRGBO(36, 36, 37, 1),
                    width: 0)),
            hintText: hint,
            hintStyle: Theme.of(context)
                .textTheme
                .displaySmall!
                .copyWith(color: Colors.grey),
            filled: true,
            fillColor: const Color.fromRGBO(36, 36, 37, 1)),
      ),
    );
  }
}
