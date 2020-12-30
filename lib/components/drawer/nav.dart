part of 'drawer.dart';

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

class Item {
  const Item({
    @required this.child,
    @required this.label,
    @required this.iconData,
  })  : assert(child != null, 'child must not be null'),
        assert(label != null, 'label must not be null'),
        assert(iconData != null, 'Icon must not be null');

  final Widget child;
  final String label;
  final IconData iconData;
}

const List<Item> navigationItems = <Item>[
  Item(
    label: 'Timer',
    child: TimerSection(),
    iconData: PomodoroIcons.timer,
    // iconData: CupertinoIcons.time,
  ),
  Item(
    label: 'Theme',
    child: ThemeSection(),
    iconData: PomodoroIcons.color_palette,
  ),
  Item(
    label: 'Settings',
    child: PreferencesSection(),
    iconData: PomodoroIcons.settings,
  ),
  Item(
    label: 'Info',
    child: Info(),
    iconData: PomodoroIcons.info,
  ),
];
