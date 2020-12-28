import 'package:hooks_riverpod/all.dart';
import 'package:pomodoro/core/theme/src/theme.dart';
import 'package:pomodoro/core/theme/themes.dart';
import 'package:state_notifier/state_notifier.dart';

final themeControllerProvider = StateNotifierProvider((_) => ThemeControler());

class ThemeControler extends StateNotifier<PomodoroTheme> {
  ThemeControler() : super(themes.first);

  void setTheme(PomodoroTheme value) => state = value;
}
