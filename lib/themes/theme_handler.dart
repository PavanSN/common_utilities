
import 'package:flutter/material.dart';

import 'app_theme.dart';
import 'light_theme.dart';

class ThemeHandler with ChangeNotifier{
  static final ThemeHandler i = ThemeHandler._i();

  ThemeHandler._i();

  factory ThemeHandler() => i;

  static late AppTheme currentTheme;

  initializeTheme() => currentTheme = LightTheme();

  updateTheme(AppTheme theme) => currentTheme = theme;
}
