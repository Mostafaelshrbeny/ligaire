import 'package:flutter/material.dart';
import 'package:ligare/presentation/widgets/gridsproduct.dart';

class GridListProduct extends StatelessWidget {
  const GridListProduct({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.only(top: 16, right: 16, left: 16),
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 16,
          crossAxisSpacing: 16,
          childAspectRatio: 0.6),
      itemBuilder: (context, index) => const GridsProuduct(),
      itemCount: 4,
    );
  }
}
