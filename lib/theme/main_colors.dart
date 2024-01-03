import 'package:flutter/material.dart';

class TColor {
  static Color get primary => const Color(0xffed1c24);
  static Color get secondarytext => const Color(0xff9098B1);
  static Color get secondarybutton => const Color(0xffBA6400);
  static Color get primaryblue => const Color(0xff40bfff);
  static Color get offwhite => const Color(0xffebf0ff);
  static Color get lightbrown => const Color(0xfff3f3f3);
  static Color get title3 => const Color(0xff50555C);
  static Color get bink => const Color(0xfffb7181);
  static Color get detailscolor => const Color(0xfffb7181);
  static Color get iconcolor => const Color(0xff979797);
  static Color get text3 => const Color(0xff898A8D);
  static Color get textTittle => const Color(0xff223263);
  static Color get textsemiappear => const Color(0xff9098B1);
  static Color get darkGray => const Color(0xff4C4F4D);
  static Color get white => const Color(0xffffffff);
  static Color get black => const Color(0xff000000);
  static Color get primaryborder => const Color(0xff7cb1FF);
}

extension HexColor on Color {
  /// String is in the format "aabbcc" or "ffaabbcc" with an optional leading "#".
  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }

  /// Prefixes a hash sign if [leadingHashSign] is set to `true` (default is `true`).
  String toHex({bool leadingHashSign = true}) => '${leadingHashSign ? '#' : ''}'
      '${alpha.toRadixString(16).padLeft(2, '0')}'
      '${red.toRadixString(16).padLeft(2, '0')}'
      '${green.toRadixString(16).padLeft(2, '0')}'
      '${blue.toRadixString(16).padLeft(2, '0')}';
}
