/// Creating custom color palettes is part of creating a custom app. The idea is to create
/// your class of custom colors, in this case `CompanyColors` and then create a `ThemeData`
/// object with those colors you just defined.
///
/// Resource:
/// A good resource would be this website: http://mcg.mbitson.com/
/// You simply need to put in the colour you wish to use, and it will generate all shades
/// for you. Your primary colour will be the `500` value.
///
/// Colour Creation:
/// In order to create the custom colours you need to create a `Map<int, Color>` object
/// which will have all the shade values. `const Color(0xFF...)` will be how you create
/// the colours. The six character hex code is what follows. If you wanted the colour
/// #114488 or #D39090 as primary colours in your setting, then you would have
/// `const Color(0x114488)` and `const Color(0xD39090)`, respectively.
///
/// Usage:
/// In order to use this newly created setting or even the colours in it, you would just
/// `import` this file in your project, anywhere you needed it.
/// `import 'path/to/setting.dart';`
library;

import 'package:flutter/material.dart';
import 'package:ligare/constants/font_family.dart';

class AppThemeData {
  static const _lightFillColor = Colors.black;
  static const _darkFillColor = Colors.white;

  static final Color _darkFocusColor = Colors.white.withOpacity(0.12);

  static ThemeData darkThemeData = themeData(darkColorScheme, _darkFocusColor);

  static ThemeData themeData(ColorScheme colorScheme, Color focusColor) {
    return ThemeData(
      colorScheme: colorScheme,
      textTheme: _textTheme,
      // Matches manifest.json colors and background color.
      primaryColor: const Color(0xFF030303),
      appBarTheme: AppBarTheme(
        backgroundColor: colorScheme.background,
        elevation: 0,
        iconTheme: IconThemeData(color: colorScheme.primary),
      ),
      iconTheme: IconThemeData(color: colorScheme.onPrimary),

      canvasColor: colorScheme.background,
      scaffoldBackgroundColor: colorScheme.background,
      highlightColor: Colors.transparent,
      focusColor: focusColor,
      snackBarTheme: SnackBarThemeData(
        behavior: SnackBarBehavior.floating,
        backgroundColor: Color.alphaBlend(
          _lightFillColor.withOpacity(0.80),
          _darkFillColor,
        ),
      ),
    );
  }

  static const ColorScheme darkColorScheme = ColorScheme(
    primary: Colors.white,
    primaryContainer: Color(0xFF1CDEC9),
    secondary: Colors.grey,
    secondaryContainer: Colors.grey,
    background: Color.fromARGB(27, 27, 28, 1),
    surface: Colors.grey,
    onBackground: Color(0x0DFFFFFF),
    // White with 0.05 opacity
    error: _darkFillColor,
    onError: _darkFillColor,
    onPrimary: _darkFillColor,
    onSecondary: _darkFillColor,
    onSurface: _darkFillColor,
    brightness: Brightness.dark,
  );

  // static const _regular = FontWeight.w400;
  // static const _medium = FontWeight.w500;
  // static const _semiBold = FontWeight.w600;
  // static const _bold = FontWeight.w700;

  static const TextTheme _textTheme = TextTheme(
      displayLarge: TextStyle(
          fontFamily: FontFamily.appFontFamily,
          color: Color.fromRGBO(226, 227, 228, 1),
          fontSize: 24),
      headlineLarge: TextStyle(
          fontFamily: FontFamily.appFontFamily,
          color: Color.fromRGBO(226, 227, 228, 1),
          fontSize: 18),
      headlineSmall: TextStyle(
          fontFamily: FontFamily.appFontFamily,
          color: Colors.grey,
          fontSize: 12),
      displayMedium: TextStyle(
          fontFamily: FontFamily.appFontFamily,
          color: Color.fromRGBO(226, 227, 228, 1),
          fontSize: 16),
      displaySmall: TextStyle(
          fontFamily: FontFamily.appFontFamily,
          color: Color.fromRGBO(226, 227, 228, 1),
          fontSize: 14),
      labelLarge: TextStyle(
          fontFamily: FontFamily.appFontFamily,
          color: Color.fromRGBO(226, 227, 228, 1),
          fontSize: 20),
      labelSmall: TextStyle(
          fontFamily: FontFamily.appFontFamily,
          color: Colors.grey,
          fontSize: 10));

  static TextStyle buttonTextThem(BuildContext context) {
    return Theme.of(context)
        .textTheme
        .displaySmall!
        .copyWith(color: Colors.black);
  }

  static Color cardColor = const Color.fromRGBO(36, 36, 37, 1);
}
