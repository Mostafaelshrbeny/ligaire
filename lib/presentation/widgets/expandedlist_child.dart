import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ExpandedListChild extends StatelessWidget {
  const ExpandedListChild({
    super.key,
    required this.filterText,
  });
  final String filterText;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 16),
      child: Row(
        children: [
          Text(
            filterText,
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .copyWith(color: Colors.white),
          ),
          const Gap(4),
          const Icon(
            Icons.arrow_forward_ios_rounded,
            size: 10,
          )
        ],
      ),
    );
  }
}
