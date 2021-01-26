import 'package:hooks_riverpod/all.dart';
import 'package:package_info/package_info.dart';

import '../../../_internal/cache/hydrated_state_notifier.dart';
import '../../../core/theme/themes.dart';
import '../../../models/settings_state.dart';

export '../../../models/settings_state.dart';

part 'settings_controller.dart';

final settingsProvider = StateNotifierProvider(
  (_) => SettingsController(),
);

final themeProvider = Provider<PomodoroTheme>((ref) {
  final settings = ref.watch(settingsProvider.state);
  return settings.theme;
});

final appInfo = FutureProvider<PackageInfo>((ref) async {
  final packageInfo = await PackageInfo.fromPlatform();
  return packageInfo;
});
