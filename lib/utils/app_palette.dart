import 'package:flutter/material.dart';

/// Colour tokens from the design (`Home.dc.html` → `themeOf`), light and dark.
@immutable
class AppPalette extends ThemeExtension<AppPalette> {
  const AppPalette({
    required this.bg,
    required this.surface,
    required this.surface2,
    required this.line,
    required this.text,
    required this.text2,
    required this.text3,
    required this.primary,
    required this.accent,
    required this.electric,
    required this.sky,
    required this.header,
    required this.chip,
    required this.chipText,
    required this.shadow,
    required this.reviewBg,
    required this.reviewFg,
    required this.receivedBg,
    required this.receivedFg,
    required this.repairBg,
    required this.repairFg,
    required this.doneBg,
    required this.doneFg,
    required this.cancelBg,
    required this.cancelFg,
    required this.warnBg,
    required this.warnFg,
    required this.warnLine,
  });

  final Color bg, surface, surface2, line, text, text2, text3;
  final Color primary, accent, electric, sky, header, chip, chipText, shadow;
  final Color reviewBg, reviewFg, receivedBg, receivedFg, repairBg, repairFg, doneBg, doneFg, cancelBg, cancelFg;
  final Color warnBg, warnFg, warnLine;

  // Brand book
  static const navy = Color(0xFF001780);
  static const rayaBlue = Color(0xFF225FAC);
  static const navyBlue = Color(0xFF282F76);
  static const electricBlue = Color(0xFF3C67B1);
  static const skyBlue = Color(0xFF85AADD);
  static const teal = Color(0xFF11968A);
  static const mustard = Color(0xFFE3A13F);
  static const orange = Color(0xFFE07F45);
  static const red = Color(0xFFC9252C);

  static const light = AppPalette(
    bg: Color(0xFFF3F6FB),
    surface: Color(0xFFFFFFFF),
    surface2: Color(0xFFEDF1F8),
    line: Color(0xFFDFE6F1),
    text: Color(0xFF0B1240),
    text2: Color(0xFF47507A),
    text3: Color(0xFF687192),
    primary: Color(0xFF001780),
    accent: Color(0xFF225FAC),
    electric: Color(0xFF3C67B1),
    sky: Color(0xFF85AADD),
    header: Color(0xFF001780),
    chip: Color(0xFFE3EBF8),
    chipText: Color(0xFF001780),
    shadow: Color(0x38001780),
    reviewBg: Color(0xFFE3EBF8),
    reviewFg: Color(0xFF001780),
    receivedBg: Color(0xFFDCEAF8),
    receivedFg: Color(0xFF1B4F8F),
    repairBg: Color(0xFFFBEED6),
    repairFg: Color(0xFF8A4F06),
    doneBg: Color(0xFFD9F0EC),
    doneFg: Color(0xFF0A6259),
    cancelBg: Color(0xFFF9E1E2),
    cancelFg: Color(0xFF9E1C22),
    warnBg: Color(0xFFFCEBDD),
    warnFg: Color(0xFF8A3D10),
    warnLine: Color(0xFFF2C3A2),
  );

  static const dark = AppPalette(
    bg: Color(0xFF050920),
    surface: Color(0xFF0E1434),
    surface2: Color(0xFF151C47),
    line: Color(0xFF232C60),
    text: Color(0xFFEEF2FF),
    text2: Color(0xFFB0B9DC),
    text3: Color(0xFF8A93BA),
    primary: Color(0xFF3C67B1),
    accent: Color(0xFF85AADD),
    electric: Color(0xFF6F93D6),
    sky: Color(0xFF85AADD),
    header: Color(0xFF0B1240),
    chip: Color(0xFF1B2658),
    chipText: Color(0xFFCFDCF6),
    shadow: Color(0x99000000),
    reviewBg: Color(0xFF1B2658),
    reviewFg: Color(0xFFC3D4F3),
    receivedBg: Color(0xFF12325E),
    receivedFg: Color(0xFFA9C8F2),
    repairBg: Color(0xFF3A2A0F),
    repairFg: Color(0xFFF0C27A),
    doneBg: Color(0xFF0C3631),
    doneFg: Color(0xFF6FD8CB),
    cancelBg: Color(0xFF3D1316),
    cancelFg: Color(0xFFF49A9F),
    warnBg: Color(0xFF3A1E0E),
    warnFg: Color(0xFFF5B48A),
    warnLine: Color(0xFF6B3618),
  );

  /// Chip colours for a request status code from the API.
  (Color bg, Color fg) status(String code) => switch (code) {
        'ccSubmit' => (reviewBg, reviewFg),
        'hub1' => (receivedBg, receivedFg),
        'maintenance' => (repairBg, repairFg),
        'hub2' => (doneBg, doneFg),
        'cancelled' => (cancelBg, cancelFg),
        _ => (chip, chipText),
      };

  @override
  AppPalette copyWith() => this;

  @override
  AppPalette lerp(ThemeExtension<AppPalette>? other, double t) => t < .5 ? this : (other as AppPalette? ?? this);
}

extension PaletteX on BuildContext {
  AppPalette get palette => Theme.of(this).extension<AppPalette>()!;
}
