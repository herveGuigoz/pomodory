import 'package:flutter/material.dart';

import 'src/theme.dart';

class DraculaTheme extends PomodoroTheme {
  DraculaTheme()
      : super(
          'Dracula',
          longRound: const Color(0xff8be9fd),
          shortRound: const Color(0xff50fa7b),
          focusRound: const Color(0xffff5555),
          background: const Color(0xff282a36),
          backgroundLight: const Color(0xff363846),
          backgroundLightest: const Color(0xff6272a4),
          foreground: const Color(0xfff8f8f2),
          foregroundDarker: const Color(0xffffb86c),
          foregroundDarkest: const Color(0xffff79c6),
          accent: const Color(0xffbd93f9),
        );
}
