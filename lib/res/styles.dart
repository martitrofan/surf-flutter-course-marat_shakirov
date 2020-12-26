import 'package:flutter/material.dart';
import 'package:places/res/res.dart';

final appBarStyle = TextStyle(
  color: appBarTitleColor,
  fontSize: 32,
  fontFamily: 'Roboto',
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.w700,
);

final titleStyle = TextStyle(
  color: sightCardTitleColor,
  fontSize: 16.0,
  fontWeight: FontWeight.w500,
);

final detailsStyle = TextStyle(
  color: sightCardDetailsColor,
  fontSize: 14.0,
  fontWeight: FontWeight.w400,
);

final typeStyle = TextStyle(
  color: sightCardTypeColor,
  fontSize: 14.0,
  fontWeight: FontWeight.w700,
);

class DetailsTheme {
  static const sightDetailsName = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );

  static const sightDetailsType = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );

  static const sightDetailsDetails = TextStyle(
    fontSize: 14,
    color: Colors.black,
  );

  static const workTimeStyle = TextStyle(
    fontSize: 14,
    color: disabledColor,
  );

  static TextStyle getButtonWithImageAndCaptionStyle(Color color){
    return TextStyle(
      color: color,
      fontSize: 14,
    );
  }
}
