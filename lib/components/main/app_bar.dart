part of 'main.dart';

class MainAppBarIconButton extends StatelessWidget {
  const MainAppBarIconButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) => IconButton(
        color: Theme.of(context).colorScheme.secondary,
        splashRadius: 0.01,
        splashColor: Colors.transparent,
        hoverColor: Colors.transparent,
        icon: Icon(CupertinoIcons.line_horizontal_3),
        onPressed: () {
          Scaffold.of(context).openDrawer();
        },
      ),
    );
  }
}
