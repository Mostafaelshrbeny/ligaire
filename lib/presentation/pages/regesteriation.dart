import 'package:flutter/material.dart';

import 'package:ligare/presentation/widgets/backarrowbutton.dart';

import 'package:ligare/presentation/widgets/regesterfieldslist.dart';

class RegesteriationScreen extends StatelessWidget {
  const RegesteriationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: AppBackarrow(
          screencontext: context,
        ),
      ),
      body: const RegesterFieldsList(),
    );
  }
}
