part of 'themes.dart';

class GithubTheme extends PomodoroTheme {
  GithubTheme()
      : super(
          'Github',
          longRound: const Color(0xff6F42C1),
          shortRound: const Color(0xff005CC5),
          focusRound: const Color(0xffCD3131),
          background: const Color(0xffFFFFFF),
          // background-light
          primary: const Color(0xfff6f8fa),
          // background-lightest
          primaryVariant: const Color(0xff24292e),
          // foreground
          textColor: const Color(0xff24292e),
          // foreground-darker
          secondary: const Color(0xff586069),
          // foreground-darkest
          secondaryVariant: const Color(0xff80878e),
          accent: const Color(0xff005CC5),
        );
}
