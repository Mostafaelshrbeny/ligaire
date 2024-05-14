import 'package:flutter/material.dart';
import 'package:ligare/constants/device.dart';
import 'package:ligare/presentation/widgets/gridsproduct.dart';

class GridListProduct extends StatelessWidget {
  const GridListProduct({
    super.key,
    required this.itemsNumber,
    required this.hPadding,
  });
  final int itemsNumber;
  final double hPadding;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.only(top: 16, right: hPadding, left: hPadding),
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing:
              Device.deviceWidth(context: context, percent: 1 / 15),
          mainAxisSpacing:
              Device.deviceHeight(context: context, percent: 1 / 15),
          childAspectRatio: 1 / 1.5,
          crossAxisCount: 2),
      itemBuilder: (context, index) => const GridsProuduct(),
      itemCount: itemsNumber,
    );
  }
}
