import 'dart:ui';
import 'src/theme.dart';
export 'src/theme.dart';

part 'dracula.dart';
part 'pomotroid.dart';
part 'andromeda.dart';
part 'ayu.dart';
part 'city_lights.dart';
part 'dva.dart';
part 'github.dart';
part 'graphite.dart';
part 'gruvbox.dart';
part 'monokai.dart';

/// A list of [PomodoroTheme]s that can be used as the theme for the app.
final themes = <PomodoroTheme>[
  PomotroidTheme(),
  AndromedaTheme(),
  AyuTheme(),
  DraculaTheme(),
  CityLightsTheme(),
  DvaTheme(),
  GithubTheme(),
  GraphiteTheme(),
  GruvboxTheme(),
  MonokaiTheme(),
];

// extension PomodoryThemesExt on List<PomotroidTheme> {
//   PomodoroTheme getThemeByName(String value) => themes.firstWhere(
//         (theme) => theme.name == value,
//         orElse: () => themes.first,
//       );
// }
