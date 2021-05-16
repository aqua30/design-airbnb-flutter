import 'package:flutter/material.dart';

/* colors */
const COLOR_BLACK = Colors.black;
const COLOR_WHITE = Colors.white;
const COLOR_GRAY = Colors.grey;
const COLOR_GRAY_1 = Color(0xff262626);
const COLOR_GRAY_2 = Color(0xff999999);
const COLOR_GRAY_3 = Color(0xff222222);

/* fonts */
const FONT_REGULAR = 'Regular';
const FONT_BOLD = 'Bold';
const FONT_EXTRA_BOLD = 'ExtraBold';
const FONT_SEMI_BOLD = 'SemiBold';
const FONT_THIN = 'Thin';
const FONT_LIGHT = 'Light';

/* theme */
const TextTheme TEXT_THEME = TextTheme(
  headline1:
      TextStyle(color: COLOR_BLACK, fontWeight: FontWeight.w700, fontSize: 26),
  headline2:
      TextStyle(color: COLOR_BLACK, fontWeight: FontWeight.w700, fontSize: 22),
  headline3: /* title */
      TextStyle(color: COLOR_BLACK, fontWeight: FontWeight.w200, fontSize: 18),
  headline4:
      TextStyle(color: COLOR_BLACK, fontWeight: FontWeight.w100, fontSize: 14),
  bodyText1: /* text in body */
      TextStyle(
          color: COLOR_BLACK, fontWeight: FontWeight.normal, fontSize: 12),
  subtitle1:  /* subheading */
      TextStyle(color: COLOR_BLACK, fontWeight: FontWeight.w100, fontSize: 12),
  subtitle2:  /* subheading */
  TextStyle(color: COLOR_BLACK, fontWeight: FontWeight.normal, fontSize: 12),
);

Widget EmptySpace({height = 0.0, width = 0.0}) {
  return SizedBox(
    width: width,
    height: height,
  );
}