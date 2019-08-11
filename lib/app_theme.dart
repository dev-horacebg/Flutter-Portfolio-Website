import 'package:flutter_portfolio/colours.dart';
import 'package:flutter_web/material.dart';

class AppTheme {
  AppTheme._();

  static ThemeData buildTheme() {
    final ThemeData base = ThemeData.light();

    return base.copyWith(
      colorScheme: ColorScheme.light().copyWith(
        primary: kPrimaryColour,
        secondary: kSecondaryColour,
      ),
      accentColor: kSecondaryColour,
      primaryColor: kPrimaryColour,
      buttonColor: kSecondaryColour,
      hintColor: kTextHintColour,
      textSelectionColor: kOrange,
      errorColor: kErrorColour,
      buttonTheme: ButtonThemeData(
        textTheme: ButtonTextTheme.accent,
      ),
      textTheme: _buildTextTheme(base.textTheme),
      primaryTextTheme: _buildTextTheme(base.primaryTextTheme),
      accentTextTheme: _buildTextTheme(base.accentTextTheme),
    );
  }

  static TextTheme _buildTextTheme(TextTheme base) {
    return base
        .copyWith(
          display4: base.display4.copyWith(
              fontWeight: FontWeight.w200, fontSize: 96.0, color: kTextColour),
          display3: base.display3.copyWith(
              fontWeight: FontWeight.w300, fontSize: 60.0, color: kTextColour),
          display2: base.display2.copyWith(
              fontWeight: FontWeight.w700, fontSize: 48.0, color: kTextColour),
          display1: base.display1.copyWith(
              fontWeight: FontWeight.w700, fontSize: 34.0, color: kTextColour),
          headline: base.headline.copyWith(
              fontWeight: FontWeight.w700, fontSize: 24.0, color: kTextColour),
          title: base.title.copyWith(
              fontWeight: FontWeight.w700, fontSize: 20.0, color: kTextColour),
          subhead: base.subhead.copyWith(
            fontWeight: FontWeight.w700,
            fontSize: 18.0,
            letterSpacing: 0.5,
          ),
          subtitle: base.subtitle.copyWith(
            fontWeight: FontWeight.w700,
            fontSize: 14.0,
            color: kGrey,
          ),
          body2: base.body2.copyWith(
              fontWeight: FontWeight.w200, fontSize: 16.0, color: kTextColour),
          body1: base.body1.copyWith(
              fontWeight: FontWeight.w300, fontSize: 14.0, color: kTextColour),
          button: base.button.copyWith(
              fontWeight: FontWeight.w700, fontSize: 14.0, color: kTextColour),
          caption: base.caption.copyWith(
            fontWeight: FontWeight.w400,
            fontSize: 12.0,
            color: kGrey,
          ),
          overline: base.overline.copyWith(
            fontWeight: FontWeight.w700,
            fontSize: 12.0,
          ),
        )
        .apply(
          fontFamily: 'Raleway',
        );
  }
}
