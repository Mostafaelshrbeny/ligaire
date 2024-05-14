import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:ligare/core/lang/locale_keys.g.dart';
import 'package:ligare/presentation/widgets/ligairetitile.dart';
import 'package:ligare/presentation/widgets/searchrow.dart';
import 'package:ligare/presentation/widgets/yourinterest_list.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(title: const LigaireTitle(), centerTitle: true),
        body: Column(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: SearchRowWidget(),
            ),
            SizedBox(
              height: 50,
              child: AppBar(
                bottom: TabBar(isScrollable: true, dividerHeight: 0, tabs: [
                  Tab(
                    text: LocaleKeys.yourinterests.tr(),
                  ),
                  Tab(
                    text: LocaleKeys.allitems.tr(),
                  ),
                  Tab(
                    text: LocaleKeys.auction.tr(),
                  ),
                  Tab(
                    text: LocaleKeys.recommended.tr(),
                  ),
                ]),
              ),
            ),
            const Expanded(
                child: TabBarView(children: [
              YourInterestsList(),
              YourInterestsList(),
              YourInterestsList(),
              YourInterestsList(),
            ]))
          ],
        ),
      ),
    );
  }
}
