part of '../pages/timer.dart';

class _DrawerIconButton extends StatelessWidget {
  const _DrawerIconButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 16,
      left: 16,
      child: Builder(
        builder: (context) => IconButton(
          splashRadius: _kSplashRadius,
          splashColor: _kSplashColor,
          hoverColor: _kHoverColor,
          icon: const Icon(PomodoroIcons.menu),
          // icon: const Icon(CupertinoIcons.line_horizontal_3),
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
        ),
      ),
    );
  }
}
