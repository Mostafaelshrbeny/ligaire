import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ligare/constants/countries.dart';

class CountryCheckBox extends StatelessWidget {
  const CountryCheckBox({
    super.key,
    required this.groupValue,
    required this.index,
  });

  final String groupValue;
  final int index;

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
      value: Country.countriesValue[index] == groupValue,
    );
  }
}
