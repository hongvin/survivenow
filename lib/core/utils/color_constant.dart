import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color black9007f = fromHex('#7f000000');

  static Color black9003d = fromHex('#3d000000');

  static Color gray90075 = fromHex('#75242424');

  static Color red500 = fromHex('#ff3131');

  static Color lightGreenA200 = fromHex('#8aff78');

  static Color red400 = fromHex('#eb5757');

  static Color gray80001 = fromHex('#4e4e4e');

  static Color amberA200 = fromHex('#ffca42');

  static Color black9003f = fromHex('#3f000000');

  static Color gray50 = fromHex('#f8f8f8');

  static Color teal200 = fromHex('#8ce7c7');

  static Color red100 = fromHex('#fccdd2');

  static Color redA700Ea = fromHex('#eaff0000');

  static Color black90087 = fromHex('#87000000');

  static Color red500Ea = fromHex('#eaff3030');

  static Color black900 = fromHex('#000000');

  static Color blueGray1007f = fromHex('#7fd9d9d9');

  static Color gray100Cc = fromHex('#ccf4f4f4');

  static Color black90026 = fromHex('#26000000');

  static Color gray600 = fromHex('#8a8484');

  static Color red500Ea01 = fromHex('#eaff3131');

  static Color gray400 = fromHex('#c4c4c4');

  static Color blueGray100 = fromHex('#d9d9d9');

  static Color blueGray400 = fromHex('#8c8c8c');

  static Color gray90087 = fromHex('#87242424');

  static Color amber600 = fromHex('#ffb700');

  static Color gray800 = fromHex('#404040');

  static Color gray900 = fromHex('#242424');

  static Color gray200 = fromHex('#eeecec');

  static Color gray100 = fromHex('#fcf3f4');

  static Color black900Cc = fromHex('#cc000000');

  static Color gray9007e = fromHex('#7e242424');

  static Color bluegray400 = fromHex('#888888');

  static Color black90095 = fromHex('#95000000');

  static Color blue30075 = fromHex('#756393f2');

  static Color blue300 = fromHex('#6393f2');

  static Color black90014 = fromHex('#14000000');

  static Color red50002 = fromHex('#ff4141');

  static Color whiteA700 = fromHex('#ffffff');

  static Color red50001 = fromHex('#fd3f3f');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
