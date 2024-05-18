import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:ligare/presentation/widgets/textfield.dart';

class RegesterTextField extends StatelessWidget {
  const RegesterTextField({
    super.key,
    required this.label,
    required this.hint,
    this.suffixIcon,
    this.isHidden = false,
    this.prefixIcon,
    this.maxlines = 1,
    this.readonly = false,
    this.ontap,
  });
  final String label, hint;
  final Widget? suffixIcon, prefixIcon;
  final bool isHidden, readonly;
  final int? maxlines;
  final Function()? ontap;
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
        InkWell(
          onTap: ontap,
          child: AbsorbPointer(
            child: AppCustomTextField(
              readonly: readonly,
              prefix: prefixIcon,
              isHidden: isHidden,
              hint: hint,
              suffix: suffixIcon,
              maxlines: maxlines,
            ),
          ),
        )
      ],
    );
  }
}
