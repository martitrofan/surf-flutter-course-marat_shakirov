import 'package:flutter/material.dart';
import 'package:places/domain/sight.dart';
import 'package:places/res/res.dart';
import 'package:places/widgets/buttons.dart';

class SightDetails extends StatelessWidget {
  final Sight sight;

  const SightDetails({
    Key key,
    @required this.sight,
  }) : super(key: key);

  Widget _buldHeader() {
    return Stack(
      children: [
        Image.network(
          sight.url,
          fit: BoxFit.cover,
          height: 360,
        ),
        const Positioned(
          top: 36,
          left: 16,
          child: MyBackButton(),
        ),
      ],
    );
  }

  Widget _buldFooter() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        PlanButton(
          color: disabledColor,
          onPressed: () {
            print('PlanButton Click');
          },
        ),
        FavoritesButton(
          color: enabledColor,
          onPressed: () {
            print('FavoritesButton Click');
          },
        ),
      ],
    );
  }

  Widget _buldBody() {
    return Padding(
      padding: const EdgeInsets.only(
        left: 16,
        right: 16,
        top: 24,
      ),
      child: Column(
        children: [
          ConstrainedBox(
            constraints: const BoxConstraints(
              minWidth: double.infinity,
            ),
            child: Text(
              sight.name,
              style: DetailsTheme.sightDetailsName,
            ),
          ),
          Row(
            children: [
              Text(
                sight.type,
                style: DetailsTheme.sightDetailsType,
              ),
              const SizedBox(width: 16),
              Text(
                sight.workedTime ?? '',
                style: DetailsTheme.workTimeStyle,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 24),
            child: Text(
              sight.details,
              style: DetailsTheme.sightDetailsDetails,
            ),
          ),
          RouteButton(
            color: RouteButtonColor,
            onPressed: () {
              print('RouteButton Click');
            },
          ),
          const SizedBox(height: 24),
          const Divider(),
          _buldFooter(),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buldHeader(),
            _buldBody(),
          ],
        ),
      ),
    );
  }
}
