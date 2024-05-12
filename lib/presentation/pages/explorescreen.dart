import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ligare/core/lang/locale_keys.g.dart';
import 'package:ligare/presentation/widgets/bid_adwithcontact.dart';
import 'package:ligare/presentation/widgets/diveded_ad.dart';
import 'package:ligare/presentation/widgets/floatingadcoverd.dart';
import 'package:ligare/presentation/widgets/ligairetitile.dart';
import 'package:ligare/presentation/widgets/shopbycollection.dart';
import 'package:ligare/presentation/widgets/twolinedescription.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const LigaireTitle(),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.only(top: 14, left: 16),
        children: [
          const DividedAdRow(),
          const Gap(48),
          ShopByCollectionScroll(
              description: TwoLinesDescription(
                label: '16',
                description: 'Auctions are running now',
                actionName: LocaleKeys.bidswordstartbidding.tr(),
              ),
              image: 'assets/images/Frame 98.png',
              hasCover: false,
              item: Center(
                child: Image.asset('assets/images/Frame 98.png'),
              )),
          const Gap(48),
          const FloatingAdWithCover(),
          const Gap(48),
          const BidAdWithContacting()
        ],
      ),
    );
  }
}
