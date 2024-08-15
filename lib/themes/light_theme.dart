// File: lib/themes/light_theme.dart
import 'package:flutter/material.dart';

/// Light theme adhering to industry standards.
class LightTheme {
  /// Generates the light theme data.
  static ThemeData get themeData {
    return ThemeData.light().copyWith(
      textTheme: ThemeData.light().textTheme.apply(fontFamily: 'Roboto'),
    );
  }
}
