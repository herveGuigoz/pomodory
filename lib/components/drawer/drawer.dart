import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../core/icons/pomodoro_icons.dart';
import '../settings/settings.dart';
import '../settings/views/info.dart';
import '../settings/views/preferences.dart';
import '../settings/views/theme.dart';
import '../settings/views/timer.dart';

part 'nav.dart';

/// Forked from Flutter Drawer to allow full screen modal.
class PomodoroDrawer extends StatelessWidget {
  const PomodoroDrawer({
    this.elevation = 16.0,
    this.semanticLabel,
  });

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
          child: const Settings(),
        ),
      ),
    );
  }
}
