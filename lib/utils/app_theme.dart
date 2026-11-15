import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_palette.dart';

/// Readex Pro for Arabic (stand-in for 29LT Baseet), Inter for English, JetBrains Mono for numbers and IDs.
abstract final class AppTheme {
  static ThemeData build({required bool dark, required bool arabic}) {
    final p = dark ? AppPalette.dark : AppPalette.light;
    final base = ThemeData(
      useMaterial3: true,
      brightness: dark ? Brightness.dark : Brightness.light,
      colorScheme: ColorScheme.fromSeed(
        seedColor: AppPalette.navy,
        brightness: dark ? Brightness.dark : Brightness.light,
        primary: p.primary,
        secondary: p.accent,
        surface: p.surface,
        error: AppPalette.red,
      ),
      scaffoldBackgroundColor: p.bg,
      extensions: [p],
    );
    final textTheme = (arabic ? GoogleFonts.readexProTextTheme(base.textTheme) : GoogleFonts.interTextTheme(base.textTheme))
        .apply(bodyColor: p.text, displayColor: p.text);

    OutlineInputBorder border(Color c, [double w = 1]) =>
        OutlineInputBorder(borderRadius: BorderRadius.circular(14), borderSide: BorderSide(color: c, width: w));

    return base.copyWith(
      textTheme: textTheme,
      appBarTheme: AppBarTheme(
        backgroundColor: p.bg,
        foregroundColor: p.text,
        elevation: 0,
        scrolledUnderElevation: 0,
        centerTitle: false,
        titleTextStyle: textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w700, color: p.chipText),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: p.surface,
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        hintStyle: TextStyle(color: p.text3),
        border: border(p.line),
        enabledBorder: border(p.line),
        focusedBorder: border(p.accent, 1.6),
        errorBorder: border(AppPalette.red),
        focusedErrorBorder: border(AppPalette.red, 1.6),
      ),
      filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
          backgroundColor: p.primary,
          foregroundColor: Colors.white,
          minimumSize: const Size.fromHeight(54),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          textStyle: textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w700),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: p.chipText,
          minimumSize: const Size.fromHeight(52),
          side: BorderSide(color: p.line),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          textStyle: textTheme.titleSmall?.copyWith(fontWeight: FontWeight.w700),
        ),
      ),
      dividerTheme: DividerThemeData(color: p.line, space: 1),
      snackBarTheme: SnackBarThemeData(behavior: SnackBarBehavior.floating, backgroundColor: p.text),
      bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: p.surface,
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(24))),
      ),
      progressIndicatorTheme: ProgressIndicatorThemeData(color: p.accent),
    );
  }

  /// Numbers, request numbers, codes.
  static TextStyle mono({double size = 14, FontWeight weight = FontWeight.w700, Color? color}) =>
      GoogleFonts.jetBrainsMono(fontSize: size, fontWeight: weight, color: color);
}
