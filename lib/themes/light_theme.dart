import 'package:flutter/material.dart';

import 'app_theme.dart';

class LightTheme implements AppTheme {
  @override
  Color get primaryColor => Colors.white;

  @override
  Color get secondaryColor => Colors.white70;

  @override
  Color get shadowColor => Colors.white30;

  @override
  Color get tertiaryColor => Colors.blue;

  @override
  Color get fontPrimaryColor => Colors.black;
}
