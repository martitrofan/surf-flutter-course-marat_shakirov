import 'package:flutter/material.dart';
import 'package:places/res/res.dart';

///пустая страница, используется как загрушка
class EmptyScreen extends StatefulWidget {
  final String title;

  EmptyScreen({
    Key key,
    this.title,
  }) : super(key: key);

  @override
  _EmptyScreenState createState() => _EmptyScreenState();
}

class _EmptyScreenState extends State<EmptyScreen> {
  Widget _buildBody() {
    return Center(
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
