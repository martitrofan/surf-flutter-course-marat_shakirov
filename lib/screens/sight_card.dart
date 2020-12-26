import 'package:flutter/material.dart';
import 'package:places/domain/sight.dart';
import 'package:places/res/res.dart';

/// карточка для отображения в списке на экране SightListScreen
class SightCard extends StatelessWidget {
  final Sight sight;

  const SightCard({Key key, this.sight}) : super(key: key);

  Widget _buildHeader() {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(sight.url),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(sight.type, style: typeStyle),
            Image.asset('res/images/like.png'),
          ],
        ),
      ),
    );
  }

  Widget _buildBody() {
    return Container(
      color: bottomBackgroundColor,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              sight.name,
              style: titleStyle,
            ),
            Text(
              sight.details,
              overflow: TextOverflow.ellipsis,
              style: detailsStyle,
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(16.0)),
        child: Container(
          height: 188.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: _buildHeader(),
              ),
              Expanded(
                child: _buildBody(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}