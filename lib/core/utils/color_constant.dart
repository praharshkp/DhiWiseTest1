import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color gray5000 = fromHex('#00fcfcfc');

  static Color gray90014 = fromHex('#140d0140');

  static Color bluegray51 = fromHex('#ecf1f6');

  static Color bluegray50 = fromHex('#edf2f7');

  static Color deepPurple400 = fromHex('#8b47ab');

  static Color deepPurple40065 = fromHex('#657850ad');

  static Color gray30059 = fromHex('#59dcdcdc');

  static Color greenA700 = fromHex('#00c566');

  static Color gray90068 = fromHex('#680d0140');

  static Color gray600 = fromHex('#66707a');

  static Color tealA700 = fromHex('#00cc9a');

  static Color tealA70065 = fromHex('#6500cc9a');

  static Color gray90065 = fromHex('#650d0140');

  static Color redA200 = fromHex('#ff4747');

  static Color bluegray40087 = fromHex('#8778828a');

  static Color gray5094 = fromHex('#94fcfcfc');

  static Color gray200 = fromHex('#eeeeee');

  static Color gray201 = fromHex('#ececec');

  static Color bluegray401 = fromHex('#888888');

  static Color bluegray400 = fromHex('#78828a');

  static Color whiteA701 = fromHex('#fcfcff');

  static Color whiteA700 = fromHex('#ffffff');

  static Color whiteA703 = fromHex('#fefefe');

  static Color whiteA702 = fromHex('#fdfcff');

  static Color gray51 = fromHex('#fef5f5');

  static Color deepOrangeA200 = fromHex('#ff6b2c');

  static Color whiteA7001e = fromHex('#1effffff');

  static Color red51 = fromHex('#ffeded');

  static Color gray50 = fromHex('#fcfcfc');

  static Color red50 = fromHex('#fff2ed');

  static Color black900 = fromHex('#000000');

  static Color deepOrange400 = fromHex('#ff784b');

  static Color gray70014 = fromHex('#145a5555');

  static Color gray907 = fromHex('#171725');

  static Color gray500 = fromHex('#92929d');

  static Color gray901 = fromHex('#151517');

  static Color indigo50 = fromHex('#e3e7eb');

  static Color whiteA700A2 = fromHex('#a2ffffff');

  static Color gray900 = fromHex('#0d0140');

  static Color indigo51 = fromHex('#e3e9ed');

  static Color orange50065 = fromHex('#65fe970f');

  static Color bluegray90014 = fromHex('#141f2c37');

  static Color green50 = fromHex('#e6f9f0');

  static Color gray100 = fromHex('#f6f6f6');

  static Color bluegray900 = fromHex('#1f2c37');

  static Color gray50A2 = fromHex('#a2fcfcfc');

  static Color gray6007c = fromHex('#7c66707a');

  static Color bluegray300 = fromHex('#9ca4ab');

  static Color gray9003d = fromHex('#3d1f1d2b');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
