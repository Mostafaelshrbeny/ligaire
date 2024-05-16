import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:ligare/core/lang/locale_keys.g.dart';
import 'package:ligare/presentation/pages/accountscreen.dart';
import 'package:ligare/presentation/pages/explorescreen.dart';
import 'package:ligare/presentation/pages/homescreen.dart';
import 'package:ligare/presentation/pages/searchscreen.dart';
import 'package:ligare/presentation/pages/sellscreen.dart';

class MainLayerScreen extends StatefulWidget {
  const MainLayerScreen({super.key});

  @override
  State<MainLayerScreen> createState() => _MainLayerScreenState();
}

class _MainLayerScreenState extends State<MainLayerScreen> {
  int currentPageIndex = 0;
  List<Widget> pages = [
    const HomeScreen(),
    const SearchScreen(),
    const SellScreen(),
    const ExploreScreen(),
    const AccountScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentPageIndex],
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        showSelectedLabels: true,
        selectedFontSize: 10,
        unselectedFontSize: 10,
        selectedItemColor: Colors.white,
        currentIndex: currentPageIndex,
        // selectedLabelStyle: Theme.of(context).textTheme.labelSmall,
        items: [
          BottomNavigationBarItem(
              icon: const Icon(Icons.home_filled), label: LocaleKeys.home.tr()),
          BottomNavigationBarItem(
              icon: const Icon(Icons.search), label: LocaleKeys.search.tr()),
          BottomNavigationBarItem(
              icon: const Icon(Icons.add_circle), label: LocaleKeys.sell.tr()),
          BottomNavigationBarItem(
              icon: const Icon(Icons.explore), label: LocaleKeys.explore.tr()),
          BottomNavigationBarItem(
              icon: const Icon(Icons.person), label: LocaleKeys.account.tr()),
        ],
        onTap: (value) => setState(() {
          currentPageIndex = value;
        }),
      ),
    );
  }
}
