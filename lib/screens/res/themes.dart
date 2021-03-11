import 'package:flutter/material.dart';

import 'res.dart';

/// lightTheme - светлая тема для приложения
final lightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: AppColorsLight.white,
  backgroundColor: AppColorsLight.background,
  secondaryHeaderColor: AppColorsLight.main,
  scaffoldBackgroundColor: AppColorsLight.white,
  dividerColor: AppColorsLight.secondary2,
  buttonColor: AppColorsLight.green,
  /*appBarTheme: AppBarTheme(
      color: AppColorsLight.white,
      textTheme: TextTheme(
        headline2: AppTextStyles.subTitle.copyWith(
          color: AppColorsLight.white,
        ),
      )),*/
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: AppColorsLight.white,
    selectedItemColor: AppColorsLight.white,
    unselectedItemColor: AppColorsLight.white,
  ),
  textTheme: TextTheme(
    headline1: appBarStyle.copyWith(
      color: AppColorsLight.main,
    ),
    subtitle1: titleStyle.copyWith(
      color: AppColorsLight.secondary,
    ),
    bodyText1: DetailsTheme.sightDetailsName.copyWith(
      color: AppColorsDark.secondary2,
    ),
    bodyText2: detailsStyle.copyWith(
      color: AppColorsDark.secondary2,
    ),
  ),
);

/// darkTheme - темная тема для приложения
final darkTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: AppColorsDark.main,
  backgroundColor: AppColorsDark.background,
  secondaryHeaderColor: AppColorsDark.white,
  scaffoldBackgroundColor: AppColorsDark.main,
  dividerColor: AppColorsDark.secondary2,
  buttonColor: AppColorsDark.green,
  /*appBarTheme: AppBarTheme(
      color: AppColorsDark.main,
      textTheme: TextTheme(
        headline2: AppTextStyles.subTitle.copyWith(
          color: AppColorsDark.white,
        ),
      )),*/
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: AppColorsDark.main,
    selectedItemColor: AppColorsDark.white,
    unselectedItemColor: AppColorsDark.white,
  ),
  tabBarTheme: TabBarTheme(
    unselectedLabelColor: AppColorsDark.secondary2,
    labelColor: AppColorsDark.secondary,
  ),
  textTheme: TextTheme(
    headline1: appBarStyle.copyWith(
      color: AppColorsDark.white,
    ),
    subtitle1: titleStyle.copyWith(
      color: AppColorsDark.white,
    ),
    bodyText1: DetailsTheme.sightDetailsName.copyWith(
      color: AppColorsDark.secondary2,
    ),
    bodyText2: detailsStyle.copyWith(
      color: AppColorsDark.secondary2,
    ),
    /*headline2: AppTextStyles.subTitle.copyWith(
      color: AppColorsDark.white,
    ),
    subtitle1: AppTextStyles.title.copyWith(
      color: AppColorsDark.white,
    ),
    subtitle2: AppTextStyles.text.copyWith(
      color: AppColorsDark.white,
    ),
    bodyText1: AppTextStyles.smallBold.copyWith(
      color: AppColorsDark.white,
    ),
    bodyText2: AppTextStyles.small.copyWith(
      color: AppColorsDark.secondary2,
    ),
    headline3: AppTextStyles.small.copyWith(
      color: AppColorsDark.green,
    ),
    headline4: AppTextStyles.small.copyWith(
      color: AppColorsDark.inactiveBlack,
    ),
    headline5: AppTextStyles.small.copyWith(
      color: AppColorsDark.white,
    ),
    overline: AppTextStyles.superSmall.copyWith(
      color: AppColorsDark.white,
    ),
    button: AppTextStyles.button.copyWith(
      color: AppColorsDark.white,
    ),*/
  ),
);
