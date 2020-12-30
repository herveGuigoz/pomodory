import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import '../drawer/drawer.dart';

class Settings extends HookWidget {
  const Settings();

  @override
  Widget build(BuildContext context) {
    final index = useState<int>(0);
    final theme = Theme.of(context).colorScheme;

    return Scaffold(
      backgroundColor: theme.primary,
      appBar: AppBar(
        leading: IconButton(
          splashRadius: 0.01,
          color: Theme.of(context).colorScheme.secondary,
          icon: const Icon(CupertinoIcons.chevron_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text(
          navigationItems[index.value].label,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.normal,
            letterSpacing: 0.05,
          ),
        ),
      ),
      body: AnimatedSwitcher(
        duration: kThemeAnimationDuration,
        child: navigationItems[index.value].child,
      ),
      bottomNavigationBar: NavigationBar(
        index: index.value,
        onTap: (i) => index.value = i,
      ),
    );
  }
}
