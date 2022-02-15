import 'package:flutter/material.dart';
import 'package:places/ui/screens/res/res.dart';

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

  const ButtonWithImageAndCaption({
    Key? key,
    required this.color,
    required this.caption,
    required this.image,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
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
  final Function onPressed;

  const RouteButton({
    Key? key,
    required this.color,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        onPressed.call();
      },
      child: SizedBox(
        height: 48,
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(goImage),
            Text(
              sightDetailsRouteBtn,
              style: DetailsTheme.getButtonWithImageAndCaptionStyle(
                  routeButtonCaptionColor),
            ),
          ],
        ),
      ),
    );
  }
}

///Кнопка назад
///Нужна для выполнения команды Navigator.of(context).pop();
class MyBackButton extends StatelessWidget {
  const MyBackButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 32,
      height: 32,
      decoration: BoxDecoration(
        color: Theme.of(context).backgroundColor,
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(10),
      ),
      child: IconButton(
        padding: const EdgeInsets.all(0),
        onPressed: () {
          Navigator.of(context).pop();
        },
        color: Colors.white,
        splashColor: Colors.red,
        icon: const Icon(Icons.chevron_left),
      ),
    );
  }
}
