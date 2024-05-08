import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ligare/presentation/widgets/textfield.dart';

class RegesterTextField extends StatelessWidget {
  const RegesterTextField({
    super.key,
    required this.label,
    required this.hint,
    this.suffixIcon,
    this.isHidden = false,
  });
  final String label, hint;
  final Widget? suffixIcon;
  final bool isHidden;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          label,
          style: Theme.of(context).textTheme.displaySmall,
        ),
        const Gap(4),
        AppCustomTextField(
          isHidden: isHidden,
          hint: hint,
          suffix: suffixIcon,
        )
      ],
    );
  }
}
