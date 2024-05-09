import 'package:flutter/material.dart';

class AppCheckBox extends StatelessWidget {
  const AppCheckBox({
    super.key,
    required this.groupValue,
  });

  final bool groupValue;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.white,
      side: const BorderSide(width: 0, color: Colors.black),
      checkColor: Colors.black,
      shape: RoundedRectangleBorder(
          side: const BorderSide(width: 0, style: BorderStyle.none),
          borderRadius: BorderRadius.circular(16)),
      onChanged: (value) {},
      value: groupValue,
    );
  }
}
