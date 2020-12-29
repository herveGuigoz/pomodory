import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'theme_constantes.dart';

part 'theme_data.dart';
part 'text_theme.dart';

class PomodoroTheme extends PomodoroThemeData with PomodoroTextTheme {
  PomodoroTheme(
    this.name, {
    @required this.longRound,
    @required this.shortRound,
    @required this.focusRound,
    @required this.background,
    @required this.backgroundLight,
    @required this.backgroundLightest,
    @required this.foreground,
    @required this.foregroundDarker,
    @required this.foregroundDarkest,
    @required this.accent,
    this.error = Colors.red,
  });

  final String name;

  // Long break countdown color
  final Color longRound;

  // Short break countdown color
  final Color shortRound;

  // Work countdown color
  final Color focusRound;

  @override
  final Color background;

  final Color backgroundLight;

  @override
  final Color backgroundLightest;

  @override
  final Color foreground;

  @override
  final Color foregroundDarker;

  final Color foregroundDarkest;

  @override
  final Color accent;

  @override
  final Color error;

  @override
  double get backgroundLuminance => background.computeLuminance();
}
