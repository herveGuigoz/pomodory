
import 'package:flutter/material.dart';
import 'package:pomodory/_internal/styles.dart';
import 'package:pomodory/core/theme/src/theme_constantes.dart';

part 'theme_data.dart';
part '../../../_internal/theme/text_theme.dart';

class PomodoroTheme extends PomodoroThemeData with PomodoroTextTheme {
  PomodoroTheme(
    this.name, {
    required Color primary,
    required Color primaryVariant,
    required Color secondary,
    required Color secondaryVariant,
    required Color textColor,
    required Color accent,
    required Color background,
    required this.longRound,
    required this.shortRound,
    required this.focusRound,
    Color error = Colors.red,
  }) : super(
          primary: primary,
          primaryVariant: primaryVariant,
          secondary: secondary,
          secondaryVariant: secondaryVariant,
          textColor: textColor,
          accent: accent,
          background: background,
          error: error,
        );

  final String name;

  // Long break countdown color
  final Color longRound;

  // Short break countdown color
  final Color shortRound;

  // Work countdown color
  final Color focusRound;

  @override
  double get backgroundLuminance => background.computeLuminance();
}
