import 'package:flutter/material.dart';
import 'package:hooks_riverpod/all.dart';

import '../../_internal/color_utils.dart';
import '../../components/styled_text_input.dart';
import 'themes.dart';

enum ThemeType {
  FlockGreen,
  FlockGreen_Dark,
}

final appThemeProvider = StateNotifierProvider((ref) {
  return AppThemeController();
});

class AppTheme with PomodoroTextTheme {
  /// Default constructor
  AppTheme({
    @required this.isDark,
  })  : textColor = isDark ? Colors.white : Colors.black,
        accentTxt = isDark ? Colors.black : Colors.white;

  /// fromType factory constructor
  factory AppTheme.fromType(ThemeType type) {
    // Color color(String value) => ColorUtils.parseHex(value);
    switch (type) {
      case ThemeType.FlockGreen:
        return AppTheme(isDark: true)
          ..bg1 = const Color(0xfff1f7f0)
          ..bg2 = const Color(0xffc1dcbc)
          ..surface = Colors.white
          ..accent1 = const Color(0xff00a086)
          ..accent1Dark = const Color(0xff00856f)
          ..accent1Darker = const Color(0xff006b5a)
          ..accent2 = const Color(0xfff09433)
          ..accent3 = const Color(0xff5bc91a)
          ..greyWeak = const Color(0xff909f9c)
          ..grey = const Color(0xff515d5a)
          ..greyStrong = const Color(0xff151918)
          ..error = Colors.red.shade900
          ..focus = const Color(0xFF0ee2b1);

      case ThemeType.FlockGreen_Dark:
        return AppTheme(isDark: true)
          ..bg1 = const Color(0xff121212)
          ..bg2 = const Color(0xff2c2c2c)
          ..surface = const Color(0xff252525)
          ..accent1 = const Color(0xff00a086)
          ..accent1Dark = const Color(0xff00caa5)
          ..accent1Darker = const Color(0xff00caa5)
          ..accent2 = const Color(0xfff19e46)
          ..accent3 = const Color(0xff5BC91A)
          ..greyWeak = const Color(0xffa8b3b0)
          ..grey = const Color(0xffced4d3)
          ..greyStrong = const Color(0xffffffff)
          ..error = const Color(0xffe55642)
          ..focus = const Color(0xff0ee2b1);
    }

    return AppTheme.fromType(defaultTheme);
  }

  static ThemeType defaultTheme = ThemeType.FlockGreen;

  bool isDark;
  Color bg1; //
  Color surface; //
  Color bg2;
  Color accent1;
  Color accent1Dark;
  Color accent1Darker;
  Color accent2;
  Color accent3;
  Color grey;
  Color greyStrong;
  Color greyWeak;
  Color error;
  Color focus;
  Color accentTxt;
  @override
  Color textColor;

  ThemeData get themeData {
    final theme = ThemeData.from(
      textTheme: textTheme,
      colorScheme: ColorScheme(
        brightness: isDark ? Brightness.dark : Brightness.light,
        primary: accent1,
        primaryVariant: accent1Darker,
        secondary: accent2,
        secondaryVariant: ColorUtils.shiftHsl(accent2, -.2),
        background: bg1,
        surface: surface,
        onBackground: textColor,
        onSurface: textColor,
        onError: textColor,
        onPrimary: accentTxt,
        onSecondary: accentTxt,
        error: error ?? Colors.red.shade400,
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
        cursorColor: accent1,
      ),
      buttonColor: accent1,
      highlightColor: accent1,
      toggleableActiveColor: accent1,
    );
  }

  Color shift(Color color, double value) => ColorUtils.shiftHsl(
        color,
        value * (isDark ? -1 : 1),
      );
}

class AppThemeController extends StateNotifier<AppTheme> {
  AppThemeController({
    AppTheme state,
  }) : super(state ?? AppTheme.fromType(AppTheme.defaultTheme));

  set theme(ThemeType type) => AppTheme.fromType(type);
}
