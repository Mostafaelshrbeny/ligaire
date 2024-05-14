import 'package:flutter/material.dart';

class BottomNavChild extends StatelessWidget {
  const BottomNavChild({
    super.key,
    required this.currentPageIndex,
    required this.index,
    required this.label,
    required this.icon,
  });

  final int currentPageIndex, index;
  final String label;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, color: currentPageIndex == index ? Colors.white : null),
        Text(
          label,
          style: Theme.of(context)
              .textTheme
              .labelSmall!
              .copyWith(color: currentPageIndex == index ? Colors.white : null),
        )
      ],
    );
  }
}
