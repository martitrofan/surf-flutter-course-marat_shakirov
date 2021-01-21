import 'package:flutter/material.dart';
import 'package:places/res/res.dart';
import 'package:places/widgets/bubble_tab_indicator.dart';

///красивые кнопки в tabbar
class CustomTabBar extends PreferredSize {
  @override
  Size get preferredSize => const Size.fromHeight(52);

  @override
  Widget get child => Padding(
    padding: const EdgeInsets.symmetric(
      horizontal: 16,
      vertical: 6,
    ),
    child: Container(
      child: const TabBar(
        indicatorSize: TabBarIndicatorSize.tab,
        indicator: BubbleTabIndicator(
          indicatorHeight: 40.0,
          indicatorColor: appBarActiveColor,
          tabBarIndicatorSize: TabBarIndicatorSize.tab,
        ),
        unselectedLabelColor: Colors.black54,
        labelStyle: tabLabelStyle,
        tabs: [
          Tab(text: visitingWantVisitTab),
          Tab(text: visitingVisitedTab),
        ],
      ),
    ),
  );

  @override
  Widget build(BuildContext context) => child;
}
