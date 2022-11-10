import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color bluegray900 = fromHex('#30323d');

  static Color black9007f = fromHex('#7f000000');

  static Color whiteA70000 = fromHex('#00ffffff');

  static Color black900 = fromHex('#000000');

  static Color bluegray400 = fromHex('#888888');

  static Color gray900 = fromHex('#232323');

  static Color bluegray100 = fromHex('#d9d9d9');

  static Color whiteA700 = fromHex('#ffffff');

  static Color indigo800 = fromHex('#243690');

  static Color gray50070 = fromHex('#70a3a3a3');

  static Color bluegray901 = fromHex('#333333');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
