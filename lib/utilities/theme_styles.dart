import 'package:flutter/material.dart';
import 'package:flutter_ui/utilities/theme_colors.dart';

class ThemeStyles {
  static TextStyle departureTextStyle = const TextStyle(
    color: Colors.white,
    fontSize: 25.0,
  );
  static TextStyle arrivalTextStyle = const TextStyle(
    color: Colors.white,
    fontSize: 40.0,
    fontWeight: FontWeight.w700,
  );
  static TextStyle travelDateTextStyle = const TextStyle(
    color: Colors.white,
    fontSize: 25.0,
    fontWeight: FontWeight.w100,
  );
  static TextStyle dropDownTextStyle = const TextStyle(
    color: Colors.white,
    fontSize: 15.0,
  );
  static TextStyle ticketPriceTextStyle = TextStyle(
    color: ThemeColors.orange,
    fontSize: 35.0,
    fontWeight: FontWeight.w900,
  );
  static TextStyle greyTextStyle = const TextStyle(
    color: Colors.grey,
    fontSize: 15.0,
  );
  static TextStyle mainBlackTextStyle = const TextStyle(
    color: Colors.black,
    fontSize: 30.0,
  );
  static TextStyle subBlackTextStyle = const TextStyle(
    color: Colors.black,
    fontSize: 15.0,
  );
}
