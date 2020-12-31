import 'dart:math' as math;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:auto_size_text/auto_size_text.dart';

import '../../../core/icons/pomodoro_icons.dart';
import '../../settings/bloc/bloc.dart';
import '../../settings/views/settings.dart';
import '../bloc/bloc.dart';

part 'components/drawer.dart';
part 'components/drawer_icon_button.dart';
part 'components/next_interval_icon_button.dart';
part 'components/circular_timer.dart';
part 'components/play_pause_button.dart';
part 'components/round_count.dart';
part 'components/rollback_icon_button.dart';

const double _kIconSizes = 21;
const _kSplashRadius = 0.01;
const _kSplashColor = Colors.transparent;
const _kHoverColor = Colors.transparent;

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
          const _DrawerIconButton(),
          const _RoundsCount(),
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
          const _RollbackIconButton(),
          const _NextIntervalIconButton(),
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
        fontSize: 30,
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
