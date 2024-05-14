import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:ligare/core/lang/locale_keys.g.dart';
import 'package:ligare/presentation/pages/accountscreen.dart';
import 'package:ligare/presentation/pages/explorescreen.dart';
import 'package:ligare/presentation/pages/homescreen.dart';
import 'package:ligare/presentation/pages/searchscreen.dart';
import 'package:ligare/presentation/widgets/bottom_nav_child.dart';

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
    const ExploreScreen(),
    const AccountScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentPageIndex],
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: false,
        showSelectedLabels: false,
        selectedFontSize: 0,
        unselectedFontSize: 0,
        currentIndex: currentPageIndex,
        items: [
          BottomNavigationBarItem(
              icon: BottomNavChild(
                currentPageIndex: currentPageIndex,
                index: 0,
                icon: Icons.home_filled,
                label: LocaleKeys.home.tr(),
              ),
              label: LocaleKeys.home.tr()),
          BottomNavigationBarItem(
              icon: BottomNavChild(
                currentPageIndex: currentPageIndex,
                label: LocaleKeys.search.tr(),
                icon: Icons.search,
                index: 1,
              ),
              label: LocaleKeys.search.tr()),
          BottomNavigationBarItem(
              icon: BottomNavChild(
                currentPageIndex: currentPageIndex,
                label: LocaleKeys.sell.tr(),
                icon: Icons.add_circle,
                index: 2,
              ),
              label: LocaleKeys.sell.tr()),
          BottomNavigationBarItem(
              icon: BottomNavChild(
                currentPageIndex: currentPageIndex,
                label: LocaleKeys.explore.tr(),
                icon: Icons.explore,
                index: 3,
              ),
              label: LocaleKeys.explore.tr()),
          BottomNavigationBarItem(
              icon: BottomNavChild(
                currentPageIndex: currentPageIndex,
                label: LocaleKeys.account.tr(),
                icon: Icons.person,
                index: 4,
              ),
              label: LocaleKeys.account.tr()),
        ],
        onTap: (value) => setState(() {
          currentPageIndex = value;
        }),
      ),
    );
  }
}
