import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../pages/settings.dart';

class NavigationBar extends HookWidget {
  const NavigationBar({
    Key key,
    @required this.index,
    @required this.onTap,
  }) : super(key: key);

  final int index;
  final Function(int newIndex) onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedItemColor: theme.colorScheme.secondary,
      unselectedItemColor: theme.iconTheme.color,
      currentIndex: index,
      items: navigationItems.map((item) {
        return BottomNavigationBarItem(
          label: item.label,
          icon: Icon(item.iconData, size: 18),
        );
      }).toList(),
      onTap: onTap,
    );
  }
}
