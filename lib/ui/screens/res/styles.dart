import 'package:flutter/material.dart';
import 'package:places/ui/screens/res/res.dart';

const appBarStyle = TextStyle(
  color: appBarTitleColor,
  fontSize: 32,
  fontFamily: 'Roboto',
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.w700,
);

const titleStyle = TextStyle(
  color: sightCardTitleColor,
  fontSize: 16.0,
  fontWeight: FontWeight.w500,
);

const detailsStyle = TextStyle(
  color: sightCardDetailsColor,
  fontSize: 14.0,
  fontWeight: FontWeight.w400,
);

const typeStyle = TextStyle(
  color: sightCardTypeColor,
  fontSize: 14.0,
  fontWeight: FontWeight.w700,
);

const emptyAppBarTitleStyle = TextStyle(
  color: enabledColor,
  fontWeight: FontWeight.w500,
  fontSize: 18.0,
  height: 18.0 / 24.0,
);

const visitingAppBarTitleStyle = TextStyle(
  color: enabledColor,
  fontWeight: FontWeight.w500,
  fontSize: 18.0,
  height: 18.0 / 24.0,
);

const tabLabelStyle = TextStyle(
  fontSize: 14,
  fontWeight: FontWeight.bold,
  color: Colors.white,
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

  static TextStyle getButtonWithImageAndCaptionStyle(Color color) {
    return TextStyle(
      color: color,
      fontSize: 14,
    );
  }
}

