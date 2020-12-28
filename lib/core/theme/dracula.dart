import 'package:flutter/material.dart';

import 'src/theme.dart';

class DraculaTheme extends PomodoroTheme {
  DraculaTheme()
      : super(
          'Dracula',
          longRound: Color(0xff8be9fd),
          shortRound: Color(0xff50fa7b),
          focusRound: Color(0xffff5555),
          background: Color(0xff282a36),
          backgroundLight: Color(0xff363846),
          backgroundLightest: Color(0xff6272a4),
          foreground: Color(0xfff8f8f2),
          foregroundDarker: Color(0xffffb86c),
          foregroundDarkest: Color(0xffff79c6),
          accent: Color(0xffbd93f9),
        );
}
