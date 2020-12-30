import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/all.dart';

import '../../../core/icons/pomodoro_icons.dart';
import '../../../core/theme/themes.dart';
import '../bloc/bloc.dart';
import '../bloc/settings_state.dart';
import '../section.dart';
import '../widgets/navigation_bar.dart';

part 'info.dart';
part 'preferences.dart';
part 'themes.dart';
part 'timer.dart';

const List<Section> navigationItems = <Section>[
  Section(
    label: 'Timer',
    child: _Timer(),
    iconData: PomodoroIcons.timer,
    // iconData: CupertinoIcons.time,
  ),
  Section(
    label: 'Theme',
    child: _Themes(),
    iconData: PomodoroIcons.color_palette,
  ),
  Section(
    label: 'Settings',
    child: _Preferences(),
    iconData: PomodoroIcons.settings,
  ),
  Section(
    label: 'Info',
    child: _Info(),
    iconData: PomodoroIcons.info,
  ),
];

class SettingsPage extends HookWidget {
  const SettingsPage();

  @override
  Widget build(BuildContext context) {
    final index = useState<int>(0);
    final theme = Theme.of(context).colorScheme;

    return Scaffold(
      backgroundColor: theme.primary,
      appBar: AppBar(
        leading: IconButton(
          splashRadius: 0.01,
          color: Theme.of(context).colorScheme.secondary,
          icon: const Icon(CupertinoIcons.chevron_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text(
          navigationItems[index.value].label,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.normal,
            letterSpacing: 0.05,
          ),
        ),
      ),
      body: AnimatedSwitcher(
        duration: kThemeAnimationDuration,
        child: navigationItems[index.value].child,
      ),
      bottomNavigationBar: NavigationBar(
        index: index.value,
        onTap: (i) => index.value = i,
      ),
    );
  }
}
