import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppBackarrow extends StatelessWidget {
  const AppBackarrow({
    super.key,
    required this.screencontext,
  });
  final BuildContext screencontext;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: InkWell(
          onTap: () => Navigator.pop(context),
          child: Image.asset('assets/images/Long-arroe.png')),
    );
  }
}
