part of 'settings.dart';

class _Timer extends StatelessWidget {
  const _Timer({
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
      color: context.read(themeProvider).focusRound,
      onChanged: context.read(settingsProvider).setFocusDurationAsInt,
      selector: (setting) => setting.focusInMinutes,
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
      color: context.read(themeProvider).shortRound,
      onChanged: context.read(settingsProvider).setShortBreakDurationAsInt,
      selector: (setting) => setting.shortBreakInMinutes,
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
      color: context.read(themeProvider).longRound,
      onChanged: context.read(settingsProvider).setLongBreakDurationAsInt,
      selector: (setting) => setting.longBreakInMinutes,
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
      color: context.read(themeProvider).textColor,
      onChanged: context.read(settingsProvider).setRoundsLength,
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
    final theme = Theme.of(context).colorScheme;

    return Align(
      child: TextButton(
        style: TextButton.styleFrom(
          primary: theme.secondaryVariant,
          textStyle: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w200,
            letterSpacing: 0.05,
          ),
        ),
        onPressed: context.read(settingsProvider).resetAllValues,
        child: const Text('Reset Default'),
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
  final int Function(SettingsState) selector;

  @override
  Widget build(BuildContext context) {
    final value = useProvider(settingsProvider.state.select(selector));
    final theme = Theme.of(context);

    return SizedBox(
      height: 105,
      child: Column(
        children: [
          Text(
            item,
            style: TextStyle(
              color: theme.colorScheme.secondary,
              fontSize: 14,
              letterSpacing: 0.05,
            ),
          ),
          const SizedBox(height: 16),
          Container(
            color: theme.backgroundColor,
            padding: const EdgeInsets.all(6),
            child: Text(
              '$value:00',
              style: const TextStyle(
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
            inactiveColor: theme.backgroundColor,
            value: value.toDouble(),
            onChanged: (value) => onChanged(value.toInt()),
          )
        ],
      ),
    );
  }
}
