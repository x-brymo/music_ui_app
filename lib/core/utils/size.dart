import 'package:flutter/material.dart';

class SizeConfig {
  static MediaQueryData? _mediaQueryData;
  static double? screenW;
  static double? screenH;
  static double? blockH;
  static double? blockV;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenW = _mediaQueryData!.size.width;
    screenH = _mediaQueryData!.size.height;
    blockH = screenW! / 100;
    blockV = screenH! / 100;
  }
}

extension SizedApp on num {
  get geth => SizedBox(
        height: toDouble(),
      );
  get getw => SizedBox(
        width: toDouble(),
      );
}

extension ColorApp on int {
  get getC => Color(toInt());
 
}
