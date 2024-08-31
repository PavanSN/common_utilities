
import 'package:flutter/material.dart';

import '../screen_const/screen_constants.dart';
import 'theme_handler.dart';

class TextStyles {
  TextStyles._i();

  static TextStyles i = TextStyles._i();

  factory TextStyles() => i;

  static String _fontFamily = 'poppins';

  set fontFamily(String fontFamily) => _fontFamily = fontFamily;

  static var resizeW = screenWidth < 750.0 ? (screenWidth * 0.00235) : 1.0;

  static TextStyle get textStyleSemiBold40 => TextStyle(
        color: ThemeHandler.currentTheme.fontPrimaryColor,
        fontSize: 40,
        fontWeight: FontWeight.w600,
      );

  static TextStyle get textStyleBold40 => TextStyle(
        color: ThemeHandler.currentTheme.fontPrimaryColor,
        fontSize: 40,
        fontWeight: FontWeight.w700,
      );

  static TextStyle get textStyleExtraBold40 => TextStyle(
        color: ThemeHandler.currentTheme.fontPrimaryColor,
        fontSize: 40,
        fontWeight: FontWeight.bold,
      );

  static TextStyle get textStyleRegular40 => TextStyle(
        color: ThemeHandler.currentTheme.fontPrimaryColor,
        fontSize: 40,
        fontWeight: FontWeight.w400,
      );

  static TextStyle get textStyleMedium40 => TextStyle(
        color: ThemeHandler.currentTheme.fontPrimaryColor,
        fontSize: 40,
        fontWeight: FontWeight.w500,
      );

  static TextStyle get textStyleSemiBold34 => TextStyle(
        color: ThemeHandler.currentTheme.fontPrimaryColor,
        fontSize: 34,
        fontWeight: FontWeight.w600,
      );

  static TextStyle get textStyleBold34 => TextStyle(
        color: ThemeHandler.currentTheme.fontPrimaryColor,
        fontSize: 34,
        fontWeight: FontWeight.w700,
      );

  static TextStyle get textStyleExtraBold34 => TextStyle(
        color: ThemeHandler.currentTheme.fontPrimaryColor,
        fontSize: 34,
        fontWeight: FontWeight.bold,
      );

  static TextStyle get textStyleRegular34 => TextStyle(
        color: ThemeHandler.currentTheme.fontPrimaryColor,
        fontSize: 34,
        fontWeight: FontWeight.w400,
      );

  static TextStyle get textStyleMedium34 => TextStyle(
        color: ThemeHandler.currentTheme.fontPrimaryColor,
        fontSize: 34,
        fontWeight: FontWeight.w500,
      );
  static TextStyle get textStyleSemiBold32 => TextStyle(
        color: ThemeHandler.currentTheme.fontPrimaryColor,
        fontSize: 32,
        fontWeight: FontWeight.w600,
      );

  static TextStyle get textStyleBold32 => TextStyle(
        color: ThemeHandler.currentTheme.fontPrimaryColor,
        fontSize: 32,
        fontWeight: FontWeight.w700,
      );

  static TextStyle get textStyleExtraBold32 => TextStyle(
        color: ThemeHandler.currentTheme.fontPrimaryColor,
        fontSize: 32,
        fontWeight: FontWeight.bold,
      );

  static TextStyle get textStyleRegular32 => TextStyle(
        color: ThemeHandler.currentTheme.fontPrimaryColor,
        fontSize: 32,
        fontWeight: FontWeight.w400,
      );

  static TextStyle get textStyleMedium32 => TextStyle(
        color: ThemeHandler.currentTheme.fontPrimaryColor,
        fontSize: 32,
        fontWeight: FontWeight.w500,
      );
  static TextStyle get textStyleSemiBold28 => TextStyle(
        color: ThemeHandler.currentTheme.fontPrimaryColor,
        fontSize: 28,
        fontWeight: FontWeight.w600,
      );

  static TextStyle get textStyleBold28 => TextStyle(
        color: ThemeHandler.currentTheme.fontPrimaryColor,
        fontSize: 28,
        fontWeight: FontWeight.w700,
      );

  static TextStyle get textStyleExtraBold28 => TextStyle(
        color: ThemeHandler.currentTheme.fontPrimaryColor,
        fontSize: 28,
        fontWeight: FontWeight.bold,
      );

  static TextStyle get textStyleRegular28 => TextStyle(
        color: ThemeHandler.currentTheme.fontPrimaryColor,
        fontSize: 28,
        fontWeight: FontWeight.w400,
      );

  static TextStyle get textStyleMedium28 => TextStyle(
        color: ThemeHandler.currentTheme.fontPrimaryColor,
        fontSize: 28,
        fontWeight: FontWeight.w500,
      );

  static TextStyle get textStyleSemiBold26 => TextStyle(
        color: ThemeHandler.currentTheme.fontPrimaryColor,
        fontSize: 26,
        fontWeight: FontWeight.w600,
      );

  static TextStyle get textStyleBold26 => TextStyle(
        color: ThemeHandler.currentTheme.fontPrimaryColor,
        fontSize: 26,
        fontWeight: FontWeight.w700,
      );

  static TextStyle get textStyleExtraBold26 => TextStyle(
        color: ThemeHandler.currentTheme.fontPrimaryColor,
        fontSize: 26,
        fontWeight: FontWeight.bold,
      );

  static TextStyle get textStyleRegular26 => TextStyle(
        color: ThemeHandler.currentTheme.fontPrimaryColor,
        fontSize: 26,
        fontWeight: FontWeight.w400,
      );

  static TextStyle get textStyleMedium26 => TextStyle(
        color: ThemeHandler.currentTheme.fontPrimaryColor,
        fontSize: 26,
        fontWeight: FontWeight.w500,
      );

  static TextStyle get textStyleSemiBold24 => TextStyle(
        color: ThemeHandler.currentTheme.fontPrimaryColor,
        fontSize: 24,
        fontWeight: FontWeight.w600,
      );

  static TextStyle get textStyleBold24 => TextStyle(
        color: ThemeHandler.currentTheme.fontPrimaryColor,
        fontSize: 24,
        fontWeight: FontWeight.w700,
      );

  static TextStyle get textStyleExtraBold24 => TextStyle(
        color: ThemeHandler.currentTheme.fontPrimaryColor,
        fontSize: 24,
        fontWeight: FontWeight.bold,
      );

  static TextStyle get textStyleRegular24 => TextStyle(
        color: ThemeHandler.currentTheme.fontPrimaryColor,
        fontSize: 24,
        fontWeight: FontWeight.w400,
      );

  static TextStyle get textStyleMedium24 => TextStyle(
        color: ThemeHandler.currentTheme.fontPrimaryColor,
        fontSize: 24,
        fontWeight: FontWeight.w500,
      );

  static TextStyle get textStyleSemiBold22 => TextStyle(
        color: ThemeHandler.currentTheme.fontPrimaryColor,
        fontSize: 22,
        fontWeight: FontWeight.w600,
      );

  static TextStyle get textStyleBold22 => TextStyle(
        color: ThemeHandler.currentTheme.fontPrimaryColor,
        fontSize: 22,
        fontWeight: FontWeight.w700,
      );

  static TextStyle get textStyleExtraBold22 => TextStyle(
        color: ThemeHandler.currentTheme.fontPrimaryColor,
        fontSize: 22,
        fontWeight: FontWeight.bold,
      );

  static TextStyle get textStyleRegular22 => TextStyle(
        color: ThemeHandler.currentTheme.fontPrimaryColor,
        fontSize: 22,
        fontWeight: FontWeight.w400,
      );

  static TextStyle get textStyleMedium22 => TextStyle(
        color: ThemeHandler.currentTheme.fontPrimaryColor,
        fontSize: 22,
        fontWeight: FontWeight.w500,
      );

  static TextStyle get textStyleSemiBold20 => TextStyle(
        color: ThemeHandler.currentTheme.fontPrimaryColor,
        fontSize: 20,
        fontWeight: FontWeight.w600,
      );

  static TextStyle get textStyleBold20 => TextStyle(
        color: ThemeHandler.currentTheme.fontPrimaryColor,
        fontSize: 20,
        fontWeight: FontWeight.w700,
      );

  static TextStyle get textStyleExtraBold20 => TextStyle(
        color: ThemeHandler.currentTheme.fontPrimaryColor,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      );

  static TextStyle get textStyleRegular20 => TextStyle(
        color: ThemeHandler.currentTheme.fontPrimaryColor,
        fontSize: 20,
        fontWeight: FontWeight.w400,
      );

  static TextStyle get textStyleMedium20 => TextStyle(
        color: ThemeHandler.currentTheme.fontPrimaryColor,
        fontSize: 20,
        fontWeight: FontWeight.w500,
      );

  static TextStyle get textStyleSemiBold18 => TextStyle(
        color: ThemeHandler.currentTheme.fontPrimaryColor,
        fontSize: 18,
        fontWeight: FontWeight.w600,
      );

  static TextStyle get textStyleBold18 => TextStyle(
        color: ThemeHandler.currentTheme.fontPrimaryColor,
        fontSize: 18,
        fontWeight: FontWeight.w700,
      );

  static TextStyle get textStyleExtraBold18 => TextStyle(
        color: ThemeHandler.currentTheme.fontPrimaryColor,
        fontSize: 18,
        fontWeight: FontWeight.bold,
      );

  static TextStyle get textStyleRegular18 => TextStyle(
        color: ThemeHandler.currentTheme.fontPrimaryColor,
        fontSize: 18,
        fontWeight: FontWeight.w400,
      );

  static TextStyle get textStyleMedium18 => TextStyle(
        color: ThemeHandler.currentTheme.fontPrimaryColor,
        fontSize: 18,
        fontWeight: FontWeight.w500,
      );

  static TextStyle get textStyleSemiBold16 => TextStyle(
        color: ThemeHandler.currentTheme.fontPrimaryColor,
        fontSize: 16,
        fontWeight: FontWeight.w600,
      );

  static TextStyle get textStyleBold16 => TextStyle(
        color: ThemeHandler.currentTheme.fontPrimaryColor,
        fontSize: 16,
        fontWeight: FontWeight.w700,
      );

  static TextStyle get textStyleExtraBold16 => TextStyle(
        color: ThemeHandler.currentTheme.fontPrimaryColor,
        fontSize: 16,
        fontWeight: FontWeight.bold,
      );

  static TextStyle get textStyleRegular16 => TextStyle(
        color: ThemeHandler.currentTheme.fontPrimaryColor,
        fontSize: 16,
        fontWeight: FontWeight.w400,
      );

  static TextStyle get textStyleMedium16 => TextStyle(
        color: ThemeHandler.currentTheme.fontPrimaryColor,
        fontSize: 16,
        fontWeight: FontWeight.w500,
      );

  static TextStyle get textStyleSemiBold14 => TextStyle(
        color: ThemeHandler.currentTheme.fontPrimaryColor,
        fontSize: 14,
        fontWeight: FontWeight.w600,
      );

  static TextStyle get textStyleBold14 => TextStyle(
        color: ThemeHandler.currentTheme.fontPrimaryColor,
        fontSize: 14,
        fontWeight: FontWeight.w700,
      );

  static TextStyle get textStyleExtraBold14 => TextStyle(
        color: ThemeHandler.currentTheme.fontPrimaryColor,
        fontSize: 14,
        fontWeight: FontWeight.bold,
      );

  static TextStyle get textStyleRegular14 => TextStyle(
        color: ThemeHandler.currentTheme.fontPrimaryColor,
        fontSize: 14,
        fontWeight: FontWeight.w400,
      );

  static TextStyle get textStyleMedium14 => TextStyle(
        color: ThemeHandler.currentTheme.fontPrimaryColor,
        fontSize: 14,
        fontWeight: FontWeight.w500,
      );

  static TextStyle get textStyleSemiBold12 => TextStyle(
        color: ThemeHandler.currentTheme.fontPrimaryColor,
        fontSize: 12,
        fontWeight: FontWeight.w600,
      );

  static TextStyle get textStyleSemiBold13 => TextStyle(
        color: ThemeHandler.currentTheme.fontPrimaryColor,
        fontSize: 13,
        fontWeight: FontWeight.w600,
      );

  static TextStyle get textStyleBold12 => TextStyle(
        color: ThemeHandler.currentTheme.fontPrimaryColor,
        fontSize: 12,
        fontWeight: FontWeight.w700,
      );

  static TextStyle get textStyleExtraBold12 => TextStyle(
        color: ThemeHandler.currentTheme.fontPrimaryColor,
        fontSize: 12,
        fontWeight: FontWeight.bold,
      );

  static TextStyle get textStyleRegular12 => TextStyle(
        color: ThemeHandler.currentTheme.fontPrimaryColor,
        fontSize: 12,
        fontWeight: FontWeight.w400,
      );

  static TextStyle get textStyleMedium12 => TextStyle(
        color: ThemeHandler.currentTheme.fontPrimaryColor,
        fontSize: 12,
        fontWeight: FontWeight.w500,
      );

  static TextStyle get textStyleSemiBold10 => TextStyle(
        color: ThemeHandler.currentTheme.fontPrimaryColor,
        fontSize: 10,
        fontWeight: FontWeight.w600,
      );

  static TextStyle get textStyleBold10 => TextStyle(
        color: ThemeHandler.currentTheme.fontPrimaryColor,
        fontSize: 10,
        fontWeight: FontWeight.w700,
      );

  static TextStyle get textStyleExtraBold10 => TextStyle(
        color: ThemeHandler.currentTheme.fontPrimaryColor,
        fontSize: 10,
        fontWeight: FontWeight.bold,
      );

  static TextStyle get textStyleRegular10 => TextStyle(
        color: ThemeHandler.currentTheme.fontPrimaryColor,
        fontSize: 10,
        fontWeight: FontWeight.w400,
      );

  static TextStyle get textStyleMedium10 => TextStyle(
        color: ThemeHandler.currentTheme.fontPrimaryColor,
        fontSize: 10,
        fontWeight: FontWeight.w500,
      );

  static TextStyle thin({Color? color, double? fs, double? height}) =>
      TextStyle(
          color: color ?? ThemeHandler.currentTheme.fontPrimaryColor,
          fontSize: (fs ?? 14) * resizeW,
          fontWeight: FontWeight.w300,
          fontFamily: _fontFamily,
          height: height);
  static TextStyle regular({Color? color, double? fs, double? height}) =>
      TextStyle(
          color: color ?? ThemeHandler.currentTheme.fontPrimaryColor,
          fontSize: (fs ?? 14) * resizeW,
          fontWeight: FontWeight.w400,
          fontFamily: _fontFamily,
          height: height);

  static TextStyle medium(
          {Color? color,
          double? fs,
          double? height,
          TextDecoration? decoration}) =>
      TextStyle(
        color: color ?? ThemeHandler.currentTheme.fontPrimaryColor,
        fontSize: (fs ?? 14) * resizeW,
        fontWeight: FontWeight.w500,
        fontFamily: _fontFamily,
        height: height,
        decoration: decoration,
        decorationColor: color,
      );

  static TextStyle semiBold({Color? color, double? fs, double? height}) =>
      TextStyle(
        color: color ?? ThemeHandler.currentTheme.fontPrimaryColor,
        fontSize: (fs ?? 14) * resizeW,
        fontWeight: FontWeight.w600,
        fontFamily: _fontFamily,
        height: height,
      );

  static TextStyle bold({Color? color, double? fs, double? height}) =>
      TextStyle(
        color: color ?? ThemeHandler.currentTheme.fontPrimaryColor,
        fontSize: (fs ?? 14) * resizeW,
        fontWeight: FontWeight.w700,
        fontFamily: _fontFamily,
        height: height,
      );
  static TextStyle bold800({Color? color, double? fs, double? height}) =>
      TextStyle(
        color: color ?? ThemeHandler.currentTheme.fontPrimaryColor,
        fontSize: (fs ?? 14) * resizeW,
        fontWeight: FontWeight.w800,
        fontFamily: _fontFamily,
        height: height,
      );

  static TextStyle bold900({Color? color, double? fs, double? height}) =>
      TextStyle(
          color: color ?? ThemeHandler.currentTheme.fontPrimaryColor,
          fontSize: (fs ?? 14) * resizeW,
          fontWeight: FontWeight.w900,
          fontFamily: _fontFamily,
          height: height);

  static TextStyle extraBold({Color? color, double? fs, double? height}) =>
      TextStyle(
          color: color ?? ThemeHandler.currentTheme.fontPrimaryColor,
          fontSize: (fs ?? 14) * resizeW,
          fontWeight: FontWeight.bold,
          fontFamily: _fontFamily,
          height: height);
}
