// File: lib/themes/flosc_default_theme.dart
import 'package:flutter/material.dart';

/// Custom Flosc Default Theme.
class FloscDefaultTheme {
  /// Generates the Flosc default theme data.
  static ThemeData get themeData {
    // Define the colors for the theme.
    const Color primaryColor = Color(0xFF228B22); // Forest Green
    const Color primaryColorLight = Color(0xFF6EB183); // Light Forest Green
    const Color primaryColorDark = Color(0xFF005005); // Dark Forest Green
    const Color secondaryColor = Color(0xFF424242); // Dark Grey
    const Color backgroundColor = Color(0xFFF5F5F5); // Very Light Grey
    const Color textColor = Colors.black87; // Black
    const Color hintColor = Colors.grey; // Grey

    return ThemeData(
      // Define the color scheme.
      colorScheme: ColorScheme.light(
        primary: primaryColor,
        secondary: secondaryColor,
        background: backgroundColor,
        surface: Colors.white,
        onSurface: textColor,
        onPrimary: Colors.white,
      ),
      // Define the default font family.
      fontFamily: 'Roboto',
      // Define the default TextTheme.
      textTheme: TextTheme(
        headline1: TextStyle(
          fontSize: 72.0,
          fontWeight: FontWeight.bold,
          color: textColor,
        ),
        headline6: TextStyle(
          fontSize: 36.0,
          fontStyle: FontStyle.italic,
          color: textColor,
        ),
        bodyText2: TextStyle(
          fontSize: 14.0,
          fontFamily: 'Roboto',
          color: textColor,
        ),
      ),
      // Define the default button theme.
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(primaryColor),
          foregroundColor: MaterialStateProperty.all(Colors.white),
        ),
      ),
      // Define the default AppBar theme.
      appBarTheme: AppBarTheme(
        backgroundColor: primaryColorDark,
        titleTextStyle: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      // Define the default input decoration theme.
      inputDecorationTheme: InputDecorationTheme(
        fillColor: backgroundColor,
        hintStyle: TextStyle(color: hintColor),
      ),
      // Define the default scaffold background color.
      scaffoldBackgroundColor: backgroundColor,
      // Define the default card theme.
      cardTheme: CardTheme(
        color: Colors.white,
        shadowColor: Colors.grey[300]!,
      ),
    );
  }
}
