part of '../main.dart';

class _Header extends StatelessWidget {
  const _Header({
    Key key,
  }) : super(key: key);

  static const double _kPadding = 8;
  static const double _kIconSize = 18;

  @override
  Widget build(BuildContext context) {
    return TextButtonTheme(
      data: TextButtonThemeData(style: TextButtonStyle.small),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          TextButton.icon(
            onPressed: () {},
            icon: const Icon(PomodoroIcons.statistics, size: _kIconSize),
            label: const Text('Report'),
          ),
          const SizedBox(width: _kPadding),
          TextButton.icon(
            onPressed: () {},
            icon: const Icon(PomodoroIcons.settings, size: _kIconSize),
            label: const Text('Setting'),
          )
        ],
      ),
    );
  }
}
