import 'package:flutter/material.dart';

class LigaireTitle extends StatelessWidget {
  const LigaireTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const Alignment(0, -0.8),
      child: Text(
        'L    I    G    A    I    R    E',
        style: Theme.of(context).textTheme.displayLarge,
      ),
    );
  }
}
