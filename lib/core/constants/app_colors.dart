import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  // Primary
  static const Color primaryGreen = Color(0xFF1B5E20);
  static const Color primaryGreenLight = Color(0xFF81C784);
  static const Color primaryGreenDark = Color(0xFF003300);

  // Secondary (Islamic Gold)
  static const Color secondaryGold = Color(0xFFBF8C2C);
  static const Color secondaryGoldLight = Color(0xFFFFD54F);
  static const Color secondaryGoldDark = Color(0xFF3E2E00);

  // Light Theme
  static const Color lightSurface = Color(0xFFFFFBF5);
  static const Color lightBackground = Color(0xFFFAF8F2);
  static const Color lightOnSurface = Color(0xFF1C1B1F);

  // Dark Theme
  static const Color darkSurface = Color(0xFF1C1B1F);
  static const Color darkBackground = Color(0xFF121212);
  static const Color darkOnSurface = Color(0xFFE6E1E5);

  // Sepia Theme
  static const Color sepiaSurface = Color(0xFFF5E6CA);
  static const Color sepiaBackground = Color(0xFFFAEDD6);
  static const Color sepiaOnSurface = Color(0xFF3E2723);
  static const Color sepiaPrimary = Color(0xFF5D4037);

  // AMOLED Theme
  static const Color amoledSurface = Color(0xFF000000);
  static const Color amoledBackground = Color(0xFF000000);
  static const Color amoledOnSurface = Color(0xFFE6E1E5);

  // Functional
  static const Color error = Color(0xFFB00020);
  static const Color success = Color(0xFF4CAF50);
  static const Color warning = Color(0xFFFF9800);

  // Feature Accent Colors (for colorful grid icons)
  static const Color accentQuran = Color(0xFF2E7D32);
  static const Color accentListen = Color(0xFF6A1B9A);
  static const Color accentTajweed = Color(0xFFAD1457);
  static const Color accentDua = Color(0xFFEF6C00);
  static const Color accentAzkar = Color(0xFF5C6BC0);
  static const Color accentPrayer = Color(0xFF00897B);
  static const Color accentQibla = Color(0xFFE64A19);
  static const Color accentHijri = Color(0xFF8E24AA);
  static const Color accentHifz = Color(0xFF43A047);
  static const Color accentKhatmah = Color(0xFF1E88E5);
  static const Color accentAhkam = Color(0xFF00ACC1);
  static const Color accentAhadith = Color(0xFFC62828);

  // Gradient pairs (light theme)
  static const List<Color> gradientSky = [Color(0xFF0D47A1), Color(0xFF1565C0)];
  static const List<Color> gradientSkyDark = [Color(0xFF0A1628), Color(0xFF102040)];
  static const List<Color> gradientWarm = [Color(0xFFEF6C00), Color(0xFFFF8F00)];
  static const List<Color> gradientWarmDark = [Color(0xFF4E2600), Color(0xFF5C3000)];
  static const List<Color> gradientGreen = [Color(0xFF1B5E20), Color(0xFF2E7D32)];
  static const List<Color> gradientGreenDark = [Color(0xFF0A2E10), Color(0xFF143D18)];
  static const List<Color> gradientRed = [Color(0xFFB71C1C), Color(0xFFC62828)];
  static const List<Color> gradientRedDark = [Color(0xFF3E0A0A), Color(0xFF4E1010)];
  static const List<Color> gradientCyan = [Color(0xFF00838F), Color(0xFF00ACC1)];
  static const List<Color> gradientCyanDark = [Color(0xFF002F35), Color(0xFF003D45)];
  static const List<Color> gradientGold = [Color(0xFFBF8C2C), Color(0xFFD4A03C)];
  static const List<Color> gradientGoldDark = [Color(0xFF3E2E00), Color(0xFF4E3A00)];

  // ── Daily Header Gradients (7 weekday palettes, morning/night x light/dark) ──

  // Monday — Blue
  static const List<Color> _monMorningL = [Color(0xFF0D47A1), Color(0xFF1976D2)];
  static const List<Color> _monNightL   = [Color(0xFF0D47A1), Color(0xFF1565C0)];
  static const List<Color> _monMorningD = [Color(0xFF0A1628), Color(0xFF102040)];
  static const List<Color> _monNightD   = [Color(0xFF06101A), Color(0xFF0C1830)];

  // Tuesday — Teal
  static const List<Color> _tueMorningL = [Color(0xFF00695C), Color(0xFF00897B)];
  static const List<Color> _tueNightL   = [Color(0xFF004D40), Color(0xFF00695C)];
  static const List<Color> _tueMorningD = [Color(0xFF002925), Color(0xFF003832)];
  static const List<Color> _tueNightD   = [Color(0xFF001A17), Color(0xFF002620)];

  // Wednesday — Purple
  static const List<Color> _wedMorningL = [Color(0xFF4A148C), Color(0xFF6A1B9A)];
  static const List<Color> _wedNightL   = [Color(0xFF38006B), Color(0xFF4A148C)];
  static const List<Color> _wedMorningD = [Color(0xFF1A0830), Color(0xFF260C40)];
  static const List<Color> _wedNightD   = [Color(0xFF10041C), Color(0xFF1A0828)];

  // Thursday — Warm Amber
  static const List<Color> _thuMorningL = [Color(0xFFE65100), Color(0xFFF57C00)];
  static const List<Color> _thuNightL   = [Color(0xFFBF360C), Color(0xFFE64A19)];
  static const List<Color> _thuMorningD = [Color(0xFF4E1C00), Color(0xFF5C2400)];
  static const List<Color> _thuNightD   = [Color(0xFF3A1200), Color(0xFF4E1800)];

  // Friday — Jumu'ah Green
  static const List<Color> _friMorningL = [Color(0xFF1B5E20), Color(0xFF2E7D32)];
  static const List<Color> _friNightL   = [Color(0xFF1B5E20), Color(0xFF33691E)];
  static const List<Color> _friMorningD = [Color(0xFF0A2E10), Color(0xFF143D18)];
  static const List<Color> _friNightD   = [Color(0xFF081A09), Color(0xFF0F2E0F)];

  // Saturday — Cyan / Ocean
  static const List<Color> _satMorningL = [Color(0xFF006064), Color(0xFF00838F)];
  static const List<Color> _satNightL   = [Color(0xFF004D40), Color(0xFF006064)];
  static const List<Color> _satMorningD = [Color(0xFF002025), Color(0xFF003035)];
  static const List<Color> _satNightD   = [Color(0xFF001218), Color(0xFF002025)];

  // Sunday — Islamic Green (warmer)
  static const List<Color> _sunMorningL = [Color(0xFF1B5E20), Color(0xFF388E3C)];
  static const List<Color> _sunNightL   = [Color(0xFF1B5E20), Color(0xFF2E7D32)];
  static const List<Color> _sunMorningD = [Color(0xFF0A2E10), Color(0xFF143D18)];
  static const List<Color> _sunNightD   = [Color(0xFF062010), Color(0xFF0A2E15)];

  /// Header gradient based on current weekday + time of day.
  /// Morning = 5 AM–4:59 PM, Night = 5 PM–4:59 AM.
  static List<Color> getDailyHeaderGradient(bool isDark) {
    final now = DateTime.now();
    final isMorning = now.hour >= 5 && now.hour < 17;
    switch (now.weekday) {
      case 1: return isDark ? (isMorning ? _monMorningD : _monNightD) : (isMorning ? _monMorningL : _monNightL);
      case 2: return isDark ? (isMorning ? _tueMorningD : _tueNightD) : (isMorning ? _tueMorningL : _tueNightL);
      case 3: return isDark ? (isMorning ? _wedMorningD : _wedNightD) : (isMorning ? _wedMorningL : _wedNightL);
      case 4: return isDark ? (isMorning ? _thuMorningD : _thuNightD) : (isMorning ? _thuMorningL : _thuNightL);
      case 5: return isDark ? (isMorning ? _friMorningD : _friNightD) : (isMorning ? _friMorningL : _friNightL);
      case 6: return isDark ? (isMorning ? _satMorningD : _satNightD) : (isMorning ? _satMorningL : _satNightL);
      case 7: return isDark ? (isMorning ? _sunMorningD : _sunNightD) : (isMorning ? _sunMorningL : _sunNightL);
      default: return isDark ? gradientSkyDark : gradientSky;
    }
  }
}
