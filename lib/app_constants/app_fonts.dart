
import 'package:flutter/material.dart';

double getResponsiveFontSize(BuildContext context, double fontSize) {
  double scaleFactor = getScaleFactor(context);
  double responsiveSize = fontSize * scaleFactor;
  double lowerLimit = fontSize * 0.8;
  double upperLimit = fontSize * 1.2;
  return responsiveSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(BuildContext context) {
  double width = MediaQuery.of(context).size.width;
  if (width < 400) {
    return width / 400;
  } else if (width < 600) {
    return width / 700;
  } else {
    return width / 1000;
  }
}
