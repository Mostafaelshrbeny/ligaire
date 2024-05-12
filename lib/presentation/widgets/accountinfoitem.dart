import 'package:flutter/material.dart';

class AccountInfoItem extends StatelessWidget {
  const AccountInfoItem({
    super.key,
    required this.label,
    required this.suffixRow,
  });
  final String label;
  final Widget suffixRow;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          label,
          style: Theme.of(context).textTheme.displayMedium,
        ),
        const Spacer(),
        suffixRow
      ],
    );
  }
}
