import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ligare/core/lang/locale_keys.g.dart';
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
