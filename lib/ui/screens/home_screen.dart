import 'package:flutter/material.dart';
import 'package:places/ui/screens/empty_screen.dart';
import 'package:places/ui/screens/res/res.dart';
import 'package:places/ui/screens/sight_list_screen.dart';
import 'package:places/ui/screens/visiting_screen.dart';

///Домашняя (базовая) страница для навигатора между другими окнами
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _index = 0;

  List<Widget> pages = const [
    SightListScreen(),
    EmptyScreen(title: appBarMapText,),
    VisitingScreen(),
    EmptyScreen(title: appBarSettingsText,),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_index],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Theme
            .of(context)
            .primaryColor,
        unselectedItemColor: Theme
            .of(context)
            .primaryColorLight,
        onTap: (newIndex) => setState(() => _index = newIndex),
        currentIndex: _index,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset('res/images/navBarList.png'),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('res/images/navBarMap.png'),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('res/images/navBarHeart.png'),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('res/images/navBarSettings.png'),
            label: '',
          ),
        ],
      ),
    );
  }
}

