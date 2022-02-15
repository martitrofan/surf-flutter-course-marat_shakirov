import 'package:flutter/material.dart';
import 'package:places/ui/screens/res/res.dart';

///пустая страница, используется как загрушка
class EmptyScreen extends StatefulWidget {
  final String title;

  const EmptyScreen({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  _EmptyScreenState createState() => _EmptyScreenState();
}

class _EmptyScreenState extends State<EmptyScreen> {
  Widget _buildBody() {
    return const Center(
      child: Text('пусто'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          widget.title,
          style: emptyAppBarTitleStyle,
        ),
        backgroundColor: transparent,
        elevation: 0,
      ),
      body: _buildBody(),
    );
  }
}
