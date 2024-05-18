import 'package:flutter/material.dart';
import 'package:ligare/presentation/widgets/horizintalscroll.dart';

class ShopByCollectionScroll extends StatelessWidget {
  const ShopByCollectionScroll({
    super.key,
    required this.image,
    required this.hasCover,
    required this.item,
    required this.description,
  });
  final String image;
  final bool hasCover;
  final Widget item, description;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          description,
          AppHorizintalScroll(
            itemHeightpercent: 1 / 5,
            hasCover: hasCover,
            coverImage: image,
            item: item,
          ),
        ],
      ),
    );
  }
}
