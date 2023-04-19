import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color deepOrange8007f = fromHex('#7fda4820');

  static Color whiteA70090 = fromHex('#90DADADA');

  static Color deepOrange40066 = fromHex('#66fe724c');

  static Color amber4004c = fromHex('#4cffc529');

  static Color gray2003f = fromHex('#3fe8e8e8');

  static Color teal500 = fromHex('#029094');

  static Color gray20001 = fromHex('#efefef');

  static Color blueGray90002 = fromHex('#272d2f');

  static Color blueGray90001 = fromHex('#323643');

  static Color gray20002 = fromHex('#f2eaea');

  static Color blueGray900 = fromHex('#313642');

  static Color gray400 = fromHex('#c4c4c4');

  static Color blueGray300 = fromHex('#9ea1b1');

  static Color deepOrange40033 = fromHex('#33fe724c');

  static Color gray200 = fromHex('#eeeeee');

  static Color gray40001 = fromHex('#b3b3b3');

  static Color blueGray100E5 = fromHex('#e5d2d5db');

  static Color bluegray400 = fromHex('#888888');

  static Color blueGray40005 = fromHex('#7e7c91');

  static Color blueGray40004 = fromHex('#858891');

  static Color blueGray40003 = fromHex('#898d9b');

  static Color blueGray40002 = fromHex('#7d8391');

  static Color blueGray40001 = fromHex('#8b9099');

  static Color whiteA700 = fromHex('#ffffff');

  static Color gray70001 = fromHex('#66666d');

  static Color blueGray10040 = fromHex('#40d3d1d8');

  static Color blueGray70000 = fromHex('#00494d62');

  static Color deepOrangeA200 = fromHex('#f56844');

  static Color blueGray50 = fromHex('#eef0f2');

  static Color deepOrange40040 = fromHex('#40fe724c');

  static Color gray50 = fromHex('#fbfcfc');

  static Color green400 = fromHex('#53d676');

  static Color whiteA70033 = fromHex('#33ffffff');

  static Color black900 = fromHex('#000000');

  static Color gray50001 = fromHex('#989ca2');

  static Color whiteA70035 = fromHex('#35ffffff');

  static Color blueGray1003f = fromHex('#3fd3d1d8');

  static Color deepOrange400 = fromHex('#fe724c');

  static Color gray700 = fromHex('#5b5b5e');

  static Color gray500 = fromHex('#9796a1');

  static Color blueGray800A9 = fromHex('#a92f384e');

  static Color blueGray400 = fromHex('#848688');

  static Color amber400 = fromHex('#ffc529');

  static Color gray900 = fromHex('#191b2e');

  static Color gray90001 = fromHex('#111719');

  static Color blueGray30001 = fromHex('#9a9fb3');

  static Color blueGray7001e = fromHex('#1e3f4b5e');

  static Color gray100 = fromHex('#f6f6f6');

  static Color blueGray507f = fromHex('#7fe9edf2');

  static Color black90033 = fromHex('#33000000');

  static Color blueGray1004c = fromHex('#4cd3d1d8');

  static Color whiteA70001 = fromHex('#fefefe');

  static Color indigo30028 = fromHex('#287a80be');

  static Color gray40066 = fromHex('#66c4c4c4');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
