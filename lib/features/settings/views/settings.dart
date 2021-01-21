import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/all.dart';

import '../../../core/icons/pomodoro_icons.dart';
import '../../../core/theme/themes.dart';
import '../../stats/views/stats.dart';
import '../bloc/bloc.dart';
import '../bloc/settings_state.dart';
import '../section.dart';

part 'info.dart';
part 'intervals.dart';
part 'preferences.dart';
part 'themes.dart';

const List<Section> navigationItems = <Section>[
  Section(
    label: 'Intervals',
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
    label: 'Stats',
    child: Stats(),
    iconData: PomodoroIcons.statistics,
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
    final theme = useProvider(themeProvider);

    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        backgroundColor: theme.background,
        activeColor: theme.textColor,
        iconSize: 18,
        items: navigationItems
            .map((item) => BottomNavigationBarItem(
                  icon: Icon(item.iconData),
                  label: item.label,
                ))
            .toList(),
      ),
      tabBuilder: (context, index) {
        return CupertinoPageScaffold(
          backgroundColor: theme.primary,
          navigationBar: CupertinoNavigationBar(
            actionsForegroundColor: theme.secondaryVariant,
            backgroundColor: theme.background,
            leading: IconButton(
              icon: const Icon(PomodoroIcons.back, size: 16),
              onPressed: () => Navigator.of(context).pop(),
            ),
            middle: Text(
              navigationItems[index].label,
              style: TextStyle(
                color: theme.secondaryVariant,
                fontFamily: 'SFProDisplay',
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w400,
                fontSize: 16,
              ),
            ),
            trailing: index == 0
                ? IconButton(
                    icon: const Icon(PomodoroIcons.reset, size: 16),
                    onPressed: () {
                      context.read(settingsProvider).resetAllValues();
                    },
                  )
                : null,
          ),
          child: navigationItems[index].child,
        );
      },
    );
  }
}
