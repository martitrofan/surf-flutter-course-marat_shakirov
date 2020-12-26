import 'package:flutter/material.dart';
import 'package:places/res/res.dart';

///кнопка с картинкой и текстом
class ButtonWithImageAndCaption extends StatelessWidget {
  final Color color;
  final String caption;
  final Image image;
  Function onPressed;

  ButtonWithImageAndCaption({
    Key key,
    @required this.color,
    @required this.caption,
    @required this.image,
    @required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton.icon(
      onPressed: () {
        onPressed();
      },
      icon: ColorFiltered(
        child: image,
        colorFilter: ColorFilter.mode(
          color,
          BlendMode.modulate,
        ),
      ),
      label: Text(
        caption,
        style: DetailsTheme.getButtonWithImageAndCaptionStyle(color),
      ),
    );
  }
}

///кнопка для планирования похода
class PlanButton extends StatelessWidget {
  final Color color;
  Function onPressed;

  PlanButton({
    Key key,
    this.color,
    @required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ButtonWithImageAndCaption(
      color: color,
      onPressed: onPressed,
      caption: sightDetailsPlanBtn,
      image: Image.asset('res/images/calendar.png'),
    );
  }
}

///кнопка для установки/снятия like
class FavoritesButton extends StatelessWidget {
  final Color color;
  Function onPressed;

  FavoritesButton({
    Key key,
    this.color,
    @required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ButtonWithImageAndCaption(
      color: color,
      onPressed: onPressed,
      caption: sightDetailsFavoriteBtn,
      image: Image.asset('res/images/like.png'),
    );
  }
}

class RouteButton extends StatelessWidget {
  final Color color;
  Function onPressed;

  RouteButton({
    Key key,
    this.color,
    @required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton.icon(
      onPressed: onPressed,
      color: color,
      height: 48,
      minWidth: double.infinity,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      icon: Image.asset('res/images/go.png'),
      label: Text(
        sightDetailsRouteBtn,
        style: DetailsTheme.getButtonWithImageAndCaptionStyle(Colors.white),
      ),
    );
  }
}

class MyBackButton extends StatelessWidget {
  const MyBackButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 32,
      height: 32,
      child: FlatButton(
        padding: const EdgeInsets.all(0),
        onPressed: () {
          Navigator.of(context).pop();
        },
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: const Icon(Icons.chevron_left),
      ),
    );
  }
}
