import 'package:flutter/material.dart';
import 'package:places/mocks.dart';
import 'package:places/ui/screens/res/res.dart';
import 'package:places/ui/screens/sight_card.dart';
import 'package:places/ui/widgets/bubble_tab_indicator.dart';
import 'package:places/ui/widgets/custom_tab_bar.dart';

///класс для отображения списка мест которые уже посетил и планируешь посетить
class VisitingScreen extends StatefulWidget {
  const VisitingScreen({Key? key}) : super(key: key);

  @override
  _VisitingScreenState createState() => _VisitingScreenState();
}

class _VisitingScreenState extends State<VisitingScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            appBarLikedText,
          ),
          //backgroundColor: transparent,
          elevation: 0,
          bottom: const CustomTabBar(
              preferredSize: Size.fromHeight(52),
              child: Padding(
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
              )),
        ),
        body: const Padding(
          padding: EdgeInsets.only(top: 16.0),
          child: TabBarView(
            children: [
              WantVisit(),
              Visited(),
            ],
          ),
        ),
      ),
    );
  }
}

///места которые уже посетил
class Visited extends StatelessWidget {
  const Visited({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => ListView(
        children: [
          for (int i = 0; i < mocks.length; i++)
            if (mocks[i].visiting)
              SightCard(
                sight: mocks[i],
              ),
        ],
      );
}

///места которые планируется посетить
class WantVisit extends StatelessWidget {
  const WantVisit({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => ListView(
        children: [
          for (int i = 0; i < mocks.length; i++)
            if (!mocks[i].visiting)
              SightCard(
                sight: mocks[i],
              ),
        ],
      );
}
