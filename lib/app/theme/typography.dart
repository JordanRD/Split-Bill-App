import 'package:flutter/cupertino.dart';

abstract class TypoStyle {
  static double baseFontSize = 14;
  static final h1 =
      TextStyle(fontSize: baseFontSize * 2.488, fontWeight: FontWeight.w600);
  static final h2 =
      TextStyle(fontSize: baseFontSize * 2.074, fontWeight: FontWeight.w600);
  static final h3 =
      TextStyle(fontSize: baseFontSize * 1.728, fontWeight: FontWeight.w600);
  static final h4 =
      TextStyle(fontSize: baseFontSize * 1.44, fontWeight: FontWeight.w600);
  static final h5 =
      TextStyle(fontSize: baseFontSize * 1.2, fontWeight: FontWeight.w600);
  static final body =
      TextStyle(fontSize: baseFontSize, fontWeight: FontWeight.w400);
  static final buttonText =
      TextStyle(fontSize: baseFontSize, fontWeight: FontWeight.w600);
  static final small = TextStyle(
    fontSize: baseFontSize * 0.833,
    fontWeight: FontWeight.w400,
  );
}



// var iconSmall=IconStyle