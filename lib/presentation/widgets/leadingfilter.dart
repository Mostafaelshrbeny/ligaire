import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ligare/constants/collections.dart';

class LeadingFilterOption extends StatelessWidget {
  const LeadingFilterOption({
    super.key,
    required this.filterSelection,
    required this.index,
  });

  final int filterSelection, index;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Gap(12),
        Text(
          Collections.collectionsName[index],
          style: Theme.of(context).textTheme.displayMedium,
        ),
        const Gap(8),
        Icon(
          index + 1 == filterSelection
              ? Icons.keyboard_arrow_down_rounded
              : Icons.arrow_forward_ios_rounded,
          size: index + 1 == filterSelection ? 16 : 10,
        )
      ],
    );
  }
}
