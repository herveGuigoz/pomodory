import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:pomodoro/components/settings/controllers/intervals.dart';
import 'package:pomodoro/components/settings/controllers/theme.dart';
import 'package:pomodoro/components/timer/circular_timer.dart';
import 'package:pomodoro/components/timer/timer_controller.dart';

import '../drawer/drawer.dart';
import '../timer/circular_timer.dart';

part 'app_bar.dart';
part 'footer.dart';

class Main extends HookWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const PomodoroDrawer(),
      body: Stack(
        children: [
          AppBar(leading: const MainAppBarIconButton()),
          Align(
            alignment: FractionalOffset.center,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                _Timer(),
                SizedBox(height: 16),
                _ActionButton(),
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

class _ActionButton extends HookWidget {
  const _ActionButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isPLaying = useProvider(
      timerControllerProvider.state.select((value) => value.isPlaying),
    );
    return RawMaterialButton(
      onPressed: () => context.read(timerControllerProvider).playOrPause(),
      elevation: 2.0,
      child: Icon(
        isPLaying ? CupertinoIcons.pause_circle : CupertinoIcons.play_circle,
        size: 45.0,
      ),
      padding: EdgeInsets.all(0),
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
      shape: CircleBorder(),
    );
  }
}

class _Timer extends HookWidget {
  const _Timer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = useProvider(themeControllerProvider.state);
    final state = useProvider(
      timerControllerProvider.state.select((value) => value.currentRound),
    );

    return CircularCountDownTimer(
      width: MediaQuery.of(context).size.width / 2,
      height: MediaQuery.of(context).size.height / 2,
      color: theme.backgroundLightest,
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
        color: theme.backgroundLightest,
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
        color: theme.backgroundLightest,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
