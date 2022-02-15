import 'package:flutter/material.dart';
import 'package:places/ui/screens/res/strings.dart';
import 'package:places/ui/widgets/bubble_tab_indicator.dart';

///красивые кнопки в tabbar
class CustomTabBar extends PreferredSize {
  const CustomTabBar({Key? key,  required Widget child, required Size preferredSize}) : super(key: key, child: child, preferredSize: preferredSize);

  @override
  Size get preferredSize => const Size.fromHeight(52);

  @override
  Widget get child => const Padding(
    padding: EdgeInsets.symmetric(
      horizontal: 16,
      vertical: 6,
    ),
    child: TabBar(
      indicatorSize: TabBarIndicatorSize.tab,
      indicator: BubbleTabIndicator(
        indicatorHeight: 40.0,
        //indicatorColor: appBarActiveColor,
        tabBarIndicatorSize: TabBarIndicatorSize.tab,
      ),
      //unselectedLabelColor: Colors.black54,
      //labelStyle: tabLabelStyle,
      tabs: [
        Tab(text: visitingWantVisitTab),
        Tab(text: visitingVisitedTab),
      ],
    ),
  );

  @override
  Widget build(BuildContext context) => child;
}
