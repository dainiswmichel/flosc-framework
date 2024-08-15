// File: lib/themes/dark_theme.dart
import 'package:flutter/material.dart';

/// Dark theme adhering to industry standards.
class DarkTheme {
  /// Generates the dark theme data.
  static ThemeData get themeData {
    return ThemeData.dark().copyWith(
      textTheme: ThemeData.dark().textTheme.apply(fontFamily: 'Roboto'),
    );
  }
}
