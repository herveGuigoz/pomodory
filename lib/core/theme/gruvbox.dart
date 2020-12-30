part of 'themes.dart';

class GruvboxTheme extends PomodoroTheme {
  GruvboxTheme()
      : super(
          'Gruvbox',
          longRound: const Color(0xff83A598),
          shortRound: const Color(0xffB8BB26),
          focusRound: const Color(0xffFB4934),
          background: const Color(0xff282828),
          // background-light
          primary: const Color(0xff3c3836),
          // background-lightest
          primaryVariant: const Color(0xffbdae93),
          // foreground
          textColor: const Color(0xffebdbb2),
          // foreground-darker
          secondary: const Color(0xffbdae93),
          // foreground-darkest
          secondaryVariant: const Color(0xff928374),
          accent: const Color(0xffFABD2F),
        );
}
