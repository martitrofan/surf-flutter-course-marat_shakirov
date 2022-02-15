import 'package:flutter/material.dart';

///Картинка из интернета, до загрузки отображается индикатор загрузки
/// Формирует виджет в соответствии с переданными обязательными полями
/// * [url] - путь до картинки;
/// * [fit]- как вписать картинку в контейнер, не обязательный;
/// * [width]- ширина, не обязательный. Если не передать, то будет использована ширина картинки, может испортить верстку;
/// * [height]- высота, не обязательный. Если не передать, то будет использована высота картинки, может испортить верстку;
class NetworkImageWithIndicator extends StatelessWidget {
  final String url;
  final BoxFit? fit;
  final double? width;
  final double? height;

  const NetworkImageWithIndicator({
    Key? key,
    required this.url,
    this.fit,
    this.height,
    this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.network(
      url,
      fit: fit,
      height: height,
      width: width,
      loadingBuilder: (context, child, loadingProgress) {
        if (loadingProgress == null) {
          return child;
        } else {
          if (loadingProgress.expectedTotalBytes == null ||
              loadingProgress.expectedTotalBytes == 0) {
            return const CircularProgressIndicator();
          } else {
            num totalBytes = loadingProgress.expectedTotalBytes ?? 1;
            final progress = loadingProgress.cumulativeBytesLoaded / totalBytes;
            return Center(
              child: CircularProgressIndicator(value: progress),
            );
          }
        }
      },
    );
  }
}
