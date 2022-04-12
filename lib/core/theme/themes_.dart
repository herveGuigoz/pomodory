import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pomodory/_internal/color_utils.dart';
import 'package:pomodory/components/styled_text_input.dart';
import 'package:pomodory/core/theme/src/theme.dart';

enum ThemeType {
  flockGreen,
  flockGreenDark,
}

final appThemeProvider = StateNotifierProvider<AppThemeController, AppTheme>(
  (ref) => AppThemeController(),
);

class AppTheme with PomodoroTextTheme {
  /// Default constructor
  AppTheme._({
    required this.isDark,
    required this.bg1,
    required this.surface,
    required this.bg2,
    required this.accent1,
    required this.accent1Dark,
    required this.accent1Darker,
    required this.accent2,
    required this.accent3,
    required this.grey,
    required this.greyStrong,
    required this.greyWeak,
    required this.error,
    required this.focus,
  })  : textColor = isDark ? Colors.white : Colors.black,
        accentTxt = isDark ? Colors.black : Colors.white;

  /// fromType factory constructor
  factory AppTheme.fromType(ThemeType type) {
    // Color color(String value) => ColorUtils.parseHex(value);
    switch (type) {
      case ThemeType.flockGreen:
        return AppTheme._(
          isDark: true,
          bg1: const Color(0xfff1f7f0),
          bg2: const Color(0xffc1dcbc),
          surface: Colors.white,
          accent1: const Color(0xff00a086),
          accent1Dark: const Color(0xff00856f),
          accent1Darker: const Color(0xff006b5a),
          accent2: const Color(0xfff09433),
          accent3: const Color(0xff5bc91a),
          greyWeak: const Color(0xff909f9c),
          grey: const Color(0xff515d5a),
          greyStrong: const Color(0xff151918),
          error: Colors.red.shade900,
          focus: const Color(0xFF0ee2b1),
        );

      case ThemeType.flockGreenDark:
        return AppTheme._(
          isDark: true,
          bg1: const Color(0xff121212),
          bg2: const Color(0xff2c2c2c),
          surface: const Color(0xff252525),
          accent1: const Color(0xff00a086),
          accent1Dark: const Color(0xff00caa5),
          accent1Darker: const Color(0xff00caa5),
          accent2: const Color(0xfff19e46),
          accent3: const Color(0xff5BC91A),
          greyWeak: const Color(0xffa8b3b0),
          grey: const Color(0xffced4d3),
          greyStrong: const Color(0xffffffff),
          error: const Color(0xffe55642),
          focus: const Color(0xff0ee2b1),
        );
    }
  }

  static ThemeType defaultTheme = ThemeType.flockGreen;

  final bool isDark;
  final Color bg1; //
  final Color surface; //
  final Color bg2;
  final Color accent1;
  final Color accent1Dark;
  final Color accent1Darker;
  final Color accent2;
  final Color accent3;
  final Color grey;
  final Color greyStrong;
  final Color greyWeak;
  final Color error;
  final Color focus;
  final Color? accentTxt;
  @override
  late final Color textColor;

  ThemeData get themeData {
    final theme = ThemeData.from(
      textTheme: textTheme,
      colorScheme: ColorScheme(
        brightness: isDark ? Brightness.dark : Brightness.light,
        primary: accent1,
        primaryContainer: accent1Darker,
        secondary: accent2,
        secondaryContainer: ColorUtils.shiftHsl(accent2, -.2),
        background: bg1,
        surface: surface,
        onBackground: textColor,
        onSurface: textColor,
        onError: textColor,
        onPrimary: accentTxt ?? (isDark ? Colors.white : Colors.black),
        onSecondary: accentTxt ?? (isDark ? Colors.white : Colors.black),
        error: error,
      ),
    );

    return theme.copyWith(
      inputDecorationTheme: const InputDecorationTheme(
        border: ThinUnderlineBorder(),
      ),
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      textSelectionTheme: TextSelectionThemeData(
        selectionColor: greyWeak,
        selectionHandleColor: Colors.transparent,
        cursorColor: const Color.fromRGBO(85, 85, 85, .4),
      ),
      highlightColor: accent1,
      toggleableActiveColor: accent1,
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      scaffoldBackgroundColor: Colors.white,
      dividerTheme: const DividerThemeData(space: 0),
    );
  }

  Color shift(Color color, double value) => ColorUtils.shiftHsl(
        color,
        value * (isDark ? -1 : 1),
      );
}

class AppThemeController extends StateNotifier<AppTheme> {
  AppThemeController({
    AppTheme? state,
  }) : super(state ?? AppTheme.fromType(AppTheme.defaultTheme));

  void setTheme(ThemeType type) => AppTheme.fromType(type);
}
