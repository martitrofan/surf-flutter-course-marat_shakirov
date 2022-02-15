import 'package:flutter/material.dart';
import 'package:places/domain/sight.dart';
import 'package:places/ui/screens/res/res.dart';
import 'package:places/ui/widgets/buttons.dart';
import 'package:places/ui/widgets/network_image_with_indicator.dart';

///детализация карточки места из экрана SightListScreen
class SightDetails extends StatelessWidget {
  final Sight sight;

  const SightDetails({
    Key? key,
    required this.sight,
  }) : super(key: key);

  Widget _buldHeader() {
    return Stack(
      children: [
        NetworkImageWithIndicator(
          url: sight.url,
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
        ButtonWithImageAndCaption(
          color: disabledColor,
          onPressed: () {
            debugPrint('Click $sightDetailsPlanBtn');
          },
          caption: sightDetailsPlanBtn,
          image: Image.asset(calendarImage),
        ),
        ButtonWithImageAndCaption(
          color: enabledColor,
          onPressed: () {
            debugPrint('Click $sightDetailsFavoriteBtn');
          },
          caption: sightDetailsFavoriteBtn,
          image: Image.asset(likeImage),
        ),
      ],
    );
  }

  Widget _buldBody(BuildContext context) {
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
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ),
          Row(
            children: [
              Text(
                sight.type,
                style: Theme.of(context).textTheme.bodyText2,
              ),
              const SizedBox(width: 16),
              Text(
                sight.workedTime ?? '',
                style: Theme.of(context).textTheme.bodyText2,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 24),
            child: Text(
              sight.details,
              style: Theme.of(context).textTheme.bodyText2,
            ),
          ),
          RouteButton(
            color: routeButtonColor,
            onPressed: () {
              debugPrint('RouteButton Click');
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
            _buldBody(context),
          ],
        ),
      ),
    );
  }
}
