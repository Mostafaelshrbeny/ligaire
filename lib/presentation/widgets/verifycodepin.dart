import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class VerifyCodePin extends StatelessWidget {
  const VerifyCodePin({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Pinput(
      length: 6,
      defaultPinTheme: PinTheme(
        width: 56,
        height: 56,
        textStyle: Theme.of(context).textTheme.headlineSmall,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 34, 34, 34),
          border: Border.all(color: const Color.fromARGB(255, 34, 34, 34)),
          borderRadius: BorderRadius.circular(5),
        ),
      ),
    );
  }
}
