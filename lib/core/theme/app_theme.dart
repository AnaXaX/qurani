import 'package:flutter/material.dart';
import '../constants/app_colors.dart';

enum AppThemeMode { light, dark, sepia, amoled }

class AppTheme {
  AppTheme._();

  static ThemeData get light => _buildTheme(
        brightness: Brightness.light,
        primary: AppColors.primaryGreen,
        onPrimary: Colors.white,
        primaryContainer: const Color(0xFFE8F5E9),
        secondary: AppColors.secondaryGold,
        onSecondary: Colors.white,
        secondaryContainer: const Color(0xFFFFF8E1),
        tertiary: const Color(0xFF0D47A1),
        onTertiary: Colors.white,
        surface: AppColors.lightSurface,
        onSurface: AppColors.lightOnSurface,
        scaffoldBackground: AppColors.lightBackground,
        shadowColor: const Color(0x1A000000),
      );

  static ThemeData get dark => _buildTheme(
        brightness: Brightness.dark,
        primary: AppColors.primaryGreenLight,
        onPrimary: AppColors.primaryGreenDark,
        primaryContainer: const Color(0xFF1B3A1E),
        secondary: AppColors.secondaryGoldLight,
        onSecondary: AppColors.secondaryGoldDark,
        secondaryContainer: AppColors.secondaryGoldDark,
        tertiary: const Color(0xFF64B5F6),
        onTertiary: const Color(0xFF0A1628),
        surface: AppColors.darkSurface,
        onSurface: AppColors.darkOnSurface,
        scaffoldBackground: AppColors.darkBackground,
        shadowColor: const Color(0x33000000),
      );

  static ThemeData get sepia => _buildTheme(
        brightness: Brightness.light,
        primary: AppColors.sepiaPrimary,
        onPrimary: Colors.white,
        primaryContainer: const Color(0xFFD7CCC8),
        secondary: AppColors.secondaryGold,
        onSecondary: Colors.white,
        secondaryContainer: const Color(0xFFFFF8E1),
        tertiary: const Color(0xFF795548),
        onTertiary: Colors.white,
        surface: AppColors.sepiaSurface,
        onSurface: AppColors.sepiaOnSurface,
        scaffoldBackground: AppColors.sepiaBackground,
        shadowColor: const Color(0x1A3E2723),
      );

  static ThemeData get amoled => _buildTheme(
        brightness: Brightness.dark,
        primary: AppColors.primaryGreenLight,
        onPrimary: AppColors.primaryGreenDark,
        primaryContainer: const Color(0xFF1B3A1E),
        secondary: AppColors.secondaryGoldLight,
        onSecondary: AppColors.secondaryGoldDark,
        secondaryContainer: AppColors.secondaryGoldDark,
        tertiary: const Color(0xFF64B5F6),
        onTertiary: const Color(0xFF000000),
        surface: AppColors.amoledSurface,
        onSurface: AppColors.amoledOnSurface,
        scaffoldBackground: AppColors.amoledBackground,
        shadowColor: const Color(0x00000000),
      );

  static ThemeData forMode(AppThemeMode mode) {
    switch (mode) {
      case AppThemeMode.light:
        return light;
      case AppThemeMode.dark:
        return dark;
      case AppThemeMode.sepia:
        return sepia;
      case AppThemeMode.amoled:
        return amoled;
    }
  }

  static ThemeData _buildTheme({
    required Brightness brightness,
    required Color primary,
    required Color onPrimary,
    required Color primaryContainer,
    required Color secondary,
    required Color onSecondary,
    required Color secondaryContainer,
    required Color tertiary,
    required Color onTertiary,
    required Color surface,
    required Color onSurface,
    required Color scaffoldBackground,
    required Color shadowColor,
  }) {
    final colorScheme = ColorScheme(
      brightness: brightness,
      primary: primary,
      onPrimary: onPrimary,
      primaryContainer: primaryContainer,
      onPrimaryContainer: onSurface,
      secondary: secondary,
      onSecondary: onSecondary,
      secondaryContainer: secondaryContainer,
      onSecondaryContainer: onSurface,
      tertiary: tertiary,
      onTertiary: onTertiary,
      surface: surface,
      onSurface: onSurface,
      error: AppColors.error,
      onError: Colors.white,
      shadow: shadowColor,
    );

    return ThemeData(
      useMaterial3: true,
      colorScheme: colorScheme,
      scaffoldBackgroundColor: scaffoldBackground,
      appBarTheme: AppBarTheme(
        backgroundColor: surface,
        foregroundColor: onSurface,
        elevation: 0,
        centerTitle: true,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: surface,
        selectedItemColor: primary,
        unselectedItemColor: onSurface.withAlpha(153),
        type: BottomNavigationBarType.fixed,
        elevation: 8,
      ),
      cardTheme: CardThemeData(
        color: surface,
        elevation: 2,
        shadowColor: shadowColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: primary,
          foregroundColor: onPrimary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        ),
      ),
      fontFamily: 'NotoSansArabic',
    );
  }
}
