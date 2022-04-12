import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:pomodory/_internal/cache/hydrated_state_notifier.dart';
import 'package:pomodory/core/theme/src/theme.dart';
import 'package:pomodory/models/settings_state.dart';

part 'settings_controller.dart';

final settingsProvider =
    StateNotifierProvider<SettingsController, SettingsState>(
  (_) => SettingsController(),
);

final themeProvider = Provider<PomodoroTheme>((ref) {
  final settings = ref.watch(settingsProvider);
  return settings.theme;
});

final appInfo = FutureProvider<PackageInfo>((ref) async {
  final packageInfo = await PackageInfo.fromPlatform();
  return packageInfo;
});
