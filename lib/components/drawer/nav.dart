part of 'drawer.dart';

class _NavigationBar extends HookWidget {
  const _NavigationBar({
    Key key,
    @required this.index,
    @required this.onTap,
  }) : super(key: key);

  final int index;
  final Function(int newIndex) onTap;

  @override
  Widget build(BuildContext context) {
    final theme = useProvider(themeControllerProvider.state);

    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedItemColor: theme.foregroundDarker,
      unselectedItemColor: theme.backgroundLightest,
      currentIndex: index,
      items: _items.map((item) {
        return BottomNavigationBarItem(
          label: '',
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

const List<Item> _items = <Item>[
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
    child: SizedBox(),
    iconData: PomodoroIcons.settings,
  ),
  Item(
    label: 'Info',
    child: Info(),
    iconData: PomodoroIcons.info,
  ),
];
