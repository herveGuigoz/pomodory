import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:pomodoro/components/settings/controllers/intervals.dart';
import 'package:pomodoro/components/settings/controllers/theme.dart';

class TimerSection extends StatelessWidget {
  const TimerSection({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: ListView(
        children: const [
          _Focus(),
          _ShortBreak(),
          _LongBreak(),
          _Rounds(),
          _ResetButton(),
        ],
      ),
    );
  }
}

class _Focus extends StatelessWidget {
  const _Focus({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _Row(
      item: 'Focus',
      min: kMinDurationValue,
      max: kMaxDurationValue,
      color: context.read(themeControllerProvider.state).focusRound,
      onChanged: context.read(intervalsProvider).setFocusDurationAsInt,
      selector: (setting) => setting.focus,
    );
  }
}

class _ShortBreak extends StatelessWidget {
  const _ShortBreak({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _Row(
      item: 'Short Break',
      min: kMinDurationValue,
      max: kMaxDurationValue,
      color: context.read(themeControllerProvider.state).shortRound,
      onChanged: context.read(intervalsProvider).setShortBreakDurationAsInt,
      selector: (setting) => setting.shortBreak,
    );
  }
}

class _LongBreak extends StatelessWidget {
  const _LongBreak({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _Row(
      item: 'Long Break',
      min: kMinDurationValue,
      max: kMaxDurationValue,
      color: context.read(themeControllerProvider.state).longRound,
      onChanged: context.read(intervalsProvider).setLongBreakDurationAsInt,
      selector: (setting) => setting.longBreak,
    );
  }
}

class _Rounds extends StatelessWidget {
  const _Rounds({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _Row(
      item: 'Rounds',
      min: kMinRoundsNubers,
      max: kMaxRoundsNubers,
      color: context.read(themeControllerProvider.state).foreground,
      onChanged: context.read(intervalsProvider).setRoundsLength,
      selector: (setting) => setting.roundsLength,
    );
  }
}

class _ResetButton extends HookWidget {
  const _ResetButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = useProvider(themeControllerProvider.state);

    return Align(
      child: TextButton(
        style: TextButton.styleFrom(
          primary: theme.foregroundDarker,
          textStyle: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w200,
            letterSpacing: 0.05,
          ),
        ),
        child: Text('Reset Default'),
        onPressed: context.read(intervalsProvider).resetAllValues,
      ),
    );
  }
}

class _Row extends HookWidget {
  const _Row({
    Key key,
    @required this.item,
    @required this.min,
    @required this.max,
    @required this.color,
    @required this.onChanged,
    @required this.selector,
  }) : super(key: key);

  final String item;
  final int min;
  final int max;
  final Color color;
  final void Function(int) onChanged;
  final int Function(IntervalsSettings) selector;

  @override
  Widget build(BuildContext context) {
    final value = useProvider(intervalsProvider.state.select(selector));
    final theme = useProvider(themeControllerProvider.state);

    return SizedBox(
      height: 105,
      child: Column(
        children: [
          Text(
            item,
            style: TextStyle(
              color: theme.foregroundDarker,
              fontSize: 14,
              letterSpacing: 0.05,
            ),
          ),
          const SizedBox(height: 16),
          Container(
            color: theme.background,
            padding: EdgeInsets.all(6),
            child: Text(
              '$value:00',
              style: TextStyle(
                fontFamily: 'RobotoMono',
                fontSize: 12,
              ),
            ),
          ),
          // const SizedBox(height: 8),
          Slider.adaptive(
            min: min.toDouble(),
            max: max.toDouble(),
            activeColor: color,
            inactiveColor: theme.background,
            value: value.toDouble(),
            onChanged: (value) => onChanged(value.toInt()),
          )
        ],
      ),
    );
  }
}
