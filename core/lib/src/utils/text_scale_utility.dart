import 'dart:math';

import 'package:flutter/cupertino.dart';

class TextScaleUtility {
  static double textScaleFactor(
    BuildContext context, {
    double maxTextScaleFactor = 1.3,
  }) {
    final Size size = MediaQuery.of(context).size;
    final bool isPortrait = size.height > size.width;

    final double baseSize = isPortrait ? size.width : min(size.width, size.height);
    final double val = (baseSize / 500) * maxTextScaleFactor;

    return max(1, min(val, maxTextScaleFactor));
  }
}
