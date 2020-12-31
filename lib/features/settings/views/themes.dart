part of 'settings.dart';

class _Themes extends HookWidget {
  const _Themes({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final currentTheme = useProvider(themeProvider).name;
    return Padding(
      padding: const EdgeInsets.all(8),
      child: ListView.builder(
        itemCount: themes.length,
        itemBuilder: (context, index) {
          final theme = themes[index];
          return ListTileTheme(
            style: ListTileStyle.drawer,
            tileColor: theme.background,
            minVerticalPadding: 18,
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 4),
              decoration: BoxDecoration(
                border: Border(
                  left: BorderSide(width: 3, color: theme.accent),
                ),
              ),
              child: ListTile(
                title: Text(
                  theme.name,
                  style: TextStyle(
                    color: theme.textColor,
                    fontSize: 14,
                    letterSpacing: 0.05,
                  ),
                ),
                trailing: currentTheme == theme.name
                    ? const Icon(CupertinoIcons.check_mark)
                    : null,
                onTap: () => context.read(settingsProvider).theme = theme,
              ),
            ),
          );
        },
      ),
    );
  }
}
