import 'package:flutter/material.dart';
import 'package:ui_demo_flutter/untils/Colors/colors.dart';

class TextStyles {
  TextStyles._();
  static TextStyle tittle = TextStyle(
      fontFamily: 'Lato',
      fontWeight: FontWeight.w400,
      fontSize: 28.91,
      color: CustomColors.textColor);
  static TextStyle lato400Size19 = TextStyle(
      fontFamily: 'Lato',
      fontWeight: FontWeight.w400,
      fontSize: 19.27,
      color: CustomColors.textColor);
  static TextStyle IMDb = TextStyle(
      fontFamily: 'Lato',
      fontWeight: FontWeight.w400,
      fontSize: 9.64,
      color: CustomColors.textColor);
  static TextStyle hintSearch = TextStyle(
      fontFamily: 'Inter',
      fontWeight: FontWeight.w500,
      fontSize: 16.86,
      color: CustomColors.hintSearch);
  static TextStyle selected = TextStyle(
      fontFamily: 'Lato',
      fontWeight: FontWeight.w400,
      fontSize: 19.27,
      color: CustomColors.selected);
}
