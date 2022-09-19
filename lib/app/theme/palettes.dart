import 'package:flutter/animation.dart';

abstract class Palette {
  static const primary = Color(0xff4543a5);
  static const success = Color(0xff6E9D67);
  static const danger = Color(0xffE26162);
  static const warning = Color(0xffF8AC45);
  static const secondary = Color(0xffBEBFBF);
  static const black = Color(0xff333944);
  static const white = Color(0xffF2F2F0);

  static get text => black;
  static get textContrast => white;
  static get textSecondary => secondary;
  static get textPrimary => primary;
}
