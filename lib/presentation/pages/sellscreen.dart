import 'package:flutter/material.dart';
import 'package:ligare/domain/use_cases/appbottomsheet.dart';

class SellScreen extends StatefulWidget {
  const SellScreen({super.key});

  @override
  State<SellScreen> createState() => _SellScreenState();
}

class _SellScreenState extends State<SellScreen> {
  @override
  void initState() {
    Future.delayed(Duration.zero).then(
      (value) => AppBottomSheet.sellOperation(context),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
