import 'package:flutter/material.dart';
import 'package:places/res/res.dart';
import 'package:places/screens/sight_card.dart';
import 'package:places/widgets/custom_tab_bar.dart';

import '../mocks.dart';

///класс для отображения списка мест которые уже посетил и планируешь посетить
class VisitingScreen extends StatefulWidget {
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
          title: Text(
            appBarLikedText,
            style: visitingAppBarTitleStyle,
          ),
          backgroundColor: transparent,
          elevation: 0,
          bottom: CustomTabBar(),
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
    Key key,
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
    Key key,
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


