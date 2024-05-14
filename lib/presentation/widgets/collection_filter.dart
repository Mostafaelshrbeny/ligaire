import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ligare/constants/app_routs.dart';
import 'package:ligare/constants/collections.dart';
import 'package:ligare/core/lang/locale_keys.g.dart';
import 'package:ligare/presentation/widgets/expandedlist_child.dart';
import 'package:ligare/presentation/widgets/leadingfilter.dart';
import 'package:ligare/presentation/widgets/trailingfadedimage.dart';

class CollectionFilterList extends StatefulWidget {
  const CollectionFilterList({
    super.key,
  });

  @override
  State<CollectionFilterList> createState() => _CollectionFilterListState();
}

class _CollectionFilterListState extends State<CollectionFilterList> {
  int filterSelection = 0;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      itemBuilder: (context, index) => ExpansionTile(
        onExpansionChanged: (value) {
          setState(() {
            value ? filterSelection = index + 1 : filterSelection = 0;
          });
        },
        tilePadding: const EdgeInsetsDirectional.all(0),
        backgroundColor: const Color.fromRGBO(36, 36, 37, 1),
        collapsedBackgroundColor: const Color.fromRGBO(36, 36, 37, 1),
        trailing: TrailingFadedImage(
          index: index,
          opacity: index + 1 == filterSelection ? 0 : 1,
        ),
        leading: LeadingFilterOption(
          filterSelection: filterSelection,
          index: index,
        ),
        controlAffinity: ListTileControlAffinity.leading,
        title: const SizedBox(),
        children: Collections.carFilter
            .map((e) => InkWell(
                  onTap: () => Navigator.pushNamed(
                      context,
                      e == LocaleKeys.cutsomfilterpricerange.tr()
                          ? Routes.priceRangeRoute
                          : Routes.selectedFilterRoute,
                      arguments: {'Filtertype': e}),
                  child: ExpandedListChild(
                    filterText: e,
                  ),
                ))
            .toList(),
      ),
      itemCount: Collections.collectionsName.length,
      separatorBuilder: (BuildContext context, int index) => const Gap(12),
    );
  }
}
