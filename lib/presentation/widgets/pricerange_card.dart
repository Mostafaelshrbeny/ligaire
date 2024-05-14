import 'package:flutter/material.dart';

class PriceRangeCard extends StatelessWidget {
  const PriceRangeCard({
    super.key,
    required this.price,
  });

  final double price;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ThemeData.dark().cardColor,
      margin: const EdgeInsets.only(left: 12, right: 16),
      padding: const EdgeInsets.symmetric(horizontal: 20.5, vertical: 11.5),
      child: Text(
        '$price M',
        style: Theme.of(context)
            .textTheme
            .displaySmall!
            .copyWith(color: Colors.grey),
      ),
    );
  }
}
