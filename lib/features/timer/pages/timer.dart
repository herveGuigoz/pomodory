import 'dart:math' as math;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:auto_size_text/auto_size_text.dart';

import '../../settings/bloc/bloc.dart';
import '../../settings/pages/settings.dart';
import '../bloc/bloc.dart';

part '../widgets/drawer.dart';
part '../widgets/drawer_icon_button.dart';
part '../widgets/footer.dart';
part '../widgets/circular_timer.dart';
part '../widgets/play_pause_button.dart';

class Timer extends HookWidget {
  const Timer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const PomodoroDrawer(),
      body: Stack(
        children: [
          AppBar(leading: const _DrawerIconButton()),
          Align(
            alignment: FractionalOffset.center,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                _CircularCountDownTimerImplementation(),
                SizedBox(height: 16),
                _PlayPauseButton(),
              ],
            ),
          ),
          const _LeftFooter(),
          const _RightFooter(),
        ],
      ),
    );
  }
}

class _CircularCountDownTimerImplementation extends HookWidget {
  const _CircularCountDownTimerImplementation({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = useProvider(themeProvider);
    final state = useProvider(
      timerControllerProvider.state.select((value) => value.currentRound),
    );

    return _CircularCountDownTimer(
      width: MediaQuery.of(context).size.width / 2,
      height: MediaQuery.of(context).size.height / 2,
      color: theme.primaryVariant,
      fillColor: state.when(
        work: () => theme.focusRound,
        shortBreak: () => theme.shortRound,
        longBreak: () => theme.longRound,
      ),
      strokeWidth: 8,
      // Text Style for Countdown Text
      countdownTextStyle: TextStyle(
        fontFamily: 'RobotoMono',
        fontSize: 40,
        color: theme.primaryVariant,
        fontWeight: FontWeight.bold,
      ),
      label: state.when(
        work: () => 'focus',
        shortBreak: () => 'short break',
        longBreak: () => 'long break',
      ),
      labelTextStyle: TextStyle(
        fontFamily: 'RobotoMono',
        fontSize: 16,
        letterSpacing: 0.1,
        color: theme.primaryVariant,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
