import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'app_colors_scheme.dart';

/// Application theme configuration with Material Design 3 support
class AppTheme {
  static ThemeData get darkTheme {
    return ThemeData(
      useMaterial3: true,
      colorScheme: AppColorScheme.lightScheme,
      appBarTheme: AppBarTheme(
        backgroundColor: AppColorScheme.lightScheme.surface,
        foregroundColor: AppColorScheme.lightScheme.onSurface,
        elevation: 0,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primary,
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        ),
      ),
    );
  }
}
