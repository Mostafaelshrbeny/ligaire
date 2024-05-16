import 'package:flutter/material.dart';
import 'package:ligare/constants/device.dart';
import 'package:ligare/presentation/widgets/gridsproduct.dart';

class GridListProduct extends StatelessWidget {
  const GridListProduct({
    super.key,
    required this.itemsNumber,
    required this.hPadding,
    this.twoInRow = true,
  });
  final int itemsNumber;
  final double hPadding;
  final bool twoInRow;
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
          childAspectRatio: twoInRow ? 1 / 1.5 : 1.4 / 1,
          crossAxisCount: twoInRow ? 2 : 1),
      itemBuilder: (context, index) => GridsProuduct(
        widthpercent: twoInRow ? 1 / 2.3 : 1,
      ),
      itemCount: itemsNumber,
    );
  }
}
