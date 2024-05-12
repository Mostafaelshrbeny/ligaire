import 'package:flutter/material.dart';

class BorderdGreyText extends StatelessWidget {
  const BorderdGreyText({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 4),
      decoration: BoxDecoration(
          border: Border.all(color: const Color.fromRGBO(71, 71, 72, 1)),
          color: ThemeData.dark().cardColor),
      child: Text(text, style: Theme.of(context).textTheme.headlineSmall),
    );
  }
}
