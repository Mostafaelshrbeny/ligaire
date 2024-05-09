import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ligare/constants/assets.dart';
import 'package:ligare/constants/collections.dart';
import 'package:ligare/presentation/blocs/SetPrefrencesCubit/set_prefrences_cubit.dart';
import 'package:ligare/presentation/widgets/collectioncheckbox.dart';

class SetYourCollectionList extends StatelessWidget {
  const SetYourCollectionList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) => CollectionCheckBox(
              onCheck: (p0) {
                SetPrefrencesCubit.get(context).onCollectionClick(index: index);
              },
              collectionName: Collections.collectionsName[index],
              collectionImage: Assets.collectionAssets[index],
              ischecked: SetPrefrencesCubit.get(context)
                  .selectedCollections
                  .contains(index),
            ),
        separatorBuilder: (context, index) => const Gap(12),
        itemCount: Collections.collectionsName.length);
  }
}
