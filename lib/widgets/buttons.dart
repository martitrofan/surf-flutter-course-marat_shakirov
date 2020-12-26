import 'package:flutter/material.dart';
import 'package:places/res/res.dart';

/// Кнопка с картинкой слува и текстом справа
/// Формирует кнопку в соответствии с переданными обязательными полями
/// * [color] - цвет текста и картинки;
/// * [caption]- текст ;
/// * [image] - виджет c картинкой;
/// * [onPressed] - функция которая должна отработать при нажатии на кнопку;
class ButtonWithImageAndCaption extends StatelessWidget {
  final Color color;
  final String caption;
  final Image image;
  final void Function() onPressed;

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
      onPressed: onPressed,
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

///кнопка построения маршрута.
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
      icon: Image.asset(goImage),
      label: Text(
        sightDetailsRouteBtn,
        style: DetailsTheme.getButtonWithImageAndCaptionStyle(RouteButtonCaptionColor),
      ),
    );
  }
}

///Кнопка назад
///Нужна для выполнения команды Navigator.of(context).pop();
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
