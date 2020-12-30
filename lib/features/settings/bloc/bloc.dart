import 'package:hooks_riverpod/all.dart';
import 'package:package_info/package_info.dart';

import '../../../core/theme/themes.dart';
import 'settings_state.dart';

part 'settings_controller.dart';

final settingsProvider = StateNotifierProvider(
  (_) => SettingsController(),
);

final themeProvider = Provider((ref) {
  final settings = ref.watch(settingsProvider.state);
  return settings.theme;
});

final appInfo = FutureProvider((ref) async {
  final packageInfo = await PackageInfo.fromPlatform();
  return packageInfo;
});
