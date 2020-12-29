import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/all.dart';

import '../../core/theme/pomodoro_icons.dart';
import '../settings/controllers/theme.dart';
import '../settings/views/intervals.dart';
import '../settings/views/theme.dart';

part 'nav.dart';

/// Forked from Flutter Drawer to allow full screen modal.
class PomodoroDrawer extends StatelessWidget {
  const PomodoroDrawer({
    Key key,
    this.elevation = 16.0,
    this.semanticLabel,
  })  : assert(elevation != null && elevation >= 0.0),
        super(key: key);

  final double elevation;

  final String semanticLabel;

  @override
  Widget build(BuildContext context) {
    assert(debugCheckHasMaterialLocalizations(context));
    var label = semanticLabel;
    switch (Theme.of(context).platform) {
      case TargetPlatform.iOS:
      case TargetPlatform.macOS:
        break;
      case TargetPlatform.android:
      case TargetPlatform.fuchsia:
      case TargetPlatform.linux:
      case TargetPlatform.windows:
        label = semanticLabel ?? MaterialLocalizations.of(context).drawerLabel;
    }
    return Semantics(
      scopesRoute: true,
      namesRoute: true,
      explicitChildNodes: true,
      label: label,
      child: ConstrainedBox(
        constraints: const BoxConstraints.expand(),
        child: Material(
          elevation: elevation,
          child: const _Content(),
        ),
      ),
    );
  }
}

class _Content extends HookWidget {
  const _Content({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final index = useState<int>(0);
    final theme = useProvider(themeControllerProvider.state);

    return Scaffold(
      backgroundColor: theme.backgroundLight,
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
          _items[index.value].label,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.normal,
            letterSpacing: 0.05,
          ),
        ),
      ),
      body: AnimatedSwitcher(
        duration: kThemeAnimationDuration,
        child: _items[index.value].child,
      ),
      bottomNavigationBar: _NavigationBar(
        index: index.value,
        onTap: (i) => index.value = i,
      ),
    );
  }
}
