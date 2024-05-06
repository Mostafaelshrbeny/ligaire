import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ligare/presentation/widgets/textfield.dart';

class RegesterTextField extends StatelessWidget {
  const RegesterTextField({
    super.key,
    required this.label,
    required this.hint,
  });
  final String label, hint;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            label,
            style: Theme.of(context).textTheme.displaySmall,
          ),
          const Gap(4),
          AppCustomTextField(hint: hint)
        ],
      ),
    );
  }
}
