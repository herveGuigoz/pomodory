import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/all.dart';

import '../../_internal/styles.dart';
import '../../core/theme/themes_.dart';
import 'base_styled_button.dart';

class PrimaryBtn extends HookWidget {
  const PrimaryBtn({
    Key key,
    this.child,
    this.onPressed,
    this.bigMode = false,
  }) : super(key: key);

  final Widget child;
  final Function() onPressed;
  final bool bigMode;

  @override
  Widget build(BuildContext context) {
    final theme = useProvider(appThemeProvider.state);

    return BaseStyledBtn(
      minWidth: bigMode ? 160 : 78,
      minHeight: bigMode ? 60 : 42,
      contentPadding: EdgeInsets.all(bigMode ? Insets.l : Insets.m),
      bgColor: theme.accent1Darker,
      hoverColor: theme.isDark ? theme.accent1 : theme.accent1Dark,
      downColor: theme.accent1Darker,
      borderRadius: bigMode ? Corners.s8 : Corners.s5,
      onPressed: onPressed,
      child: child,
    );
  }
}

class PrimaryTextBtn extends StatelessWidget {
  const PrimaryTextBtn(
    this.label, {
    Key key,
    this.onPressed,
    this.bigMode = false,
  }) : super(key: key);

  final String label;
  final Function() onPressed;
  final bool bigMode;

  @override
  Widget build(BuildContext context) {
    return PrimaryBtn(
      bigMode: bigMode,
      onPressed: onPressed,
      child: Text(
        label,
        style: bigMode ? TextStyles.arialRounded : TextStyles.arialRoundedBold,
      ),
    );
  }
}
