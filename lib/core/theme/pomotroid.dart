import 'package:flutter/material.dart';

import 'src/theme.dart';

class PomotroidTheme extends PomodoroTheme {
  PomotroidTheme()
      : super(
          'Pomotroid',
          longRound: Color(0xff0bbddb),
          shortRound: Color(0xff05ec8c),
          focusRound: Color(0xffff4e4d),
          background: Color(0xff2f384b),
          backgroundLight: Color(0xff3d4457),
          backgroundLightest: Color(0xff9ca5b5),
          foreground: Color(0xfff6f2eb),
          foregroundDarker: Color(0xffc0c9da),
          foregroundDarkest: Color(0xffdbe1ef),
          accent: Color(0xff05ec8c),
        );
}
