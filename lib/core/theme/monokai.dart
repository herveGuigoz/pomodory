part of 'themes.dart';

class MonokaiTheme extends PomodoroTheme {
  MonokaiTheme()
      : super(
          'Monokai',
          longRound: const Color(0xff66d9ef),
          shortRound: const Color(0xffa6e22e),
          focusRound: const Color(0xfff92672),
          background: const Color(0xff272822),
          // background-light
          primary: const Color(0xff393a34),
          // background-lightest
          primaryVariant: const Color(0xff9c9e92),
          // foreground
          textColor: const Color(0xffFDF9F3),
          // foreground-darker
          secondary: const Color(0xffdad2c6),
          // foreground-darkest
          secondaryVariant: const Color(0xffd8cbb6),
          accent: const Color(0xffAE81FF),
        );
}
