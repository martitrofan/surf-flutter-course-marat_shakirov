import 'package:flutter/material.dart';
import 'package:places/mocks.dart';
import 'package:places/ui/screens/res/res.dart';
import 'package:places/ui/screens/sight_card.dart';
import 'package:places/ui/screens/sight_details.dart';


///список мест для посещения
class SightListScreen extends StatefulWidget {
  const SightListScreen({Key? key}) : super(key: key);

  @override
  _SightListScreenState createState() => _SightListScreenState();
}

class _SightListScreenState extends State<SightListScreen> {
  Widget _buildBody() {
    return ListView.builder(
      itemCount: mocks.length,
      itemBuilder: (context, index) => GestureDetector(
        child: SightCard(
          sight: mocks[index],
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => SightDetails(
                sight: mocks[index],
              ),
            ),
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _MyAppBar(),
      body: _buildBody(),
    );
  }
}

class _MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  static const double appBarToolbarHeight = 128;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        appBarMainText,
        textAlign: TextAlign.left,
        style: Theme.of(context).textTheme.headline1,
      ),
      elevation: 0,
      toolbarHeight: appBarToolbarHeight,
    );
  }

  @override
  Size get preferredSize => const Size(double.infinity, appBarToolbarHeight);
}
