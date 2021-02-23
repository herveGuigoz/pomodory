part of '../main.dart';

class _Header extends StatelessWidget {
  const _Header({
    Key key,
  }) : super(key: key);

  static const double _kIconSize = 18;

  @override
  Widget build(BuildContext context) {
    return TextButtonTheme(
      data: TextButtonThemeData(style: TextButtonStyle.small),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          TextButton.icon(
            icon: const Icon(PomodoroIcons.statistics, size: _kIconSize),
            label: const Text('Report'),
            onPressed: () {
              Navigator.of(context).push<void>(ReportView.route());
            },
          ),
          const SizedBox(width: 8),
          TextButton.icon(
            icon: const Icon(PomodoroIcons.settings, size: _kIconSize),
            label: const Text('Setting'),
            onPressed: () {
              Navigator.of(context).push<void>(SettingsView.route());
            },
          )
        ],
      ),
    );
  }
}
