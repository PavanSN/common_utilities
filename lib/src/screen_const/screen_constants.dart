import 'package:flutter/material.dart';

Size? screenSize;
double defaultScreenWidth = 390.0;
double defaultScreenHeight = 844.0;
double screenWidth = defaultScreenWidth;
double screenHeight = defaultScreenHeight;

//break point for responsive
double widthBP = 700.0;

class ScreenConstant {
  static void setDefaultSize(context) {
    screenSize = MediaQuery.of(context).size;
    screenWidth = screenSize?.width ?? 0;
    screenHeight = screenSize?.height ?? 0;
  }

  static void setScreenAwareConstant(context) {
    setDefaultSize(context);
  }
}
