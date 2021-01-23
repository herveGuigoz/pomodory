import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:pomodory/_internal/styles.dart';

import '../../../_internal/icons/pomodoro_icons.dart';
import '../../settings/controllers/bloc.dart';
import '../../settings/views/settings.dart';
import '../bloc/bloc.dart';
import 'components/animated_button.dart';
import 'components/linear_painter.dart';

part 'components/drawer.dart';
part 'components/drawer_icon_button.dart';
part 'components/next_interval_icon_button.dart';
part 'components/play_pause_button.dart';
part 'components/rollback_icon_button.dart';
part 'components/round_count.dart';

const double _kPadding = 16;
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
          // const _DrawerIconButton(),
          // const _RoundsCount(),
          const Positioned(
            top: _kPadding,
            left: _kPadding,
            right: _kPadding,
            child: LinearPainter(),
          ),
          Align(
            alignment: FractionalOffset.center,
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 32),
              width: MediaQuery.of(context).size.width - _kPadding * 2,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(255, 255, 255, 0.1),
                borderRadius: BorderRadius.circular(4),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  // _CircularCountDownTimerImplementation(),
                  _PeriodsButton(),
                  SizedBox(height: 32),
                  _TimeText(),
                  SizedBox(height: 48),
                  _PlayPauseButton(),
                ],
              ),
            ),
          ),
          const _RollbackIconButton(),
          const _NextIntervalIconButton(),
        ],
      ),
    );
  }
}

class _TimeText extends HookWidget {
  const _TimeText();

  @override
  Widget build(BuildContext context) {
    final time = useProvider(
      timerControllerProvider.state.select((value) => value.time),
    );

    return Text(
      time,
      style: const TextStyle(
        fontFamily: Fonts.arialRoundedBold,
        fontSize: 125,
        color: Colors.white,
      ),
    );
  }
}

class _PeriodsButton extends StatelessWidget {
  const _PeriodsButton({
    Key key,
  }) : super(key: key);

  static const double _fontSize = 14;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: _kPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextButton(
            onPressed: () {},
            child: const Text(
              'Pomodoro',
              style: TextStyle(color: Colors.white, fontSize: _fontSize),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: const Text(
              'Short Break',
              style: TextStyle(color: Colors.white, fontSize: _fontSize),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: const Text(
              'Long Break',
              style: TextStyle(color: Colors.white, fontSize: _fontSize),
            ),
          ),
        ],
      ),
    );
  }
}
