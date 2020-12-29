import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../core/theme/themes.dart';
import '../controllers/theme.dart';

class ThemeSection extends HookWidget {
  const ThemeSection({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final currentTheme = useProvider(
      themeControllerProvider.state.select((value) => value.name),
    );
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
                    color: theme.foreground,
                    fontSize: 14,
                    letterSpacing: 0.05,
                  ),
                ),
                trailing: currentTheme == theme.name
                    ? const Icon(CupertinoIcons.check_mark)
                    : null,
                onTap: () =>
                    context.read(themeControllerProvider).theme = theme,
              ),
            ),
          );
        },
      ),
    );
  }
}
