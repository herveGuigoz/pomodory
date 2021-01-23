part of '../main.dart';

class _TimerBloc extends StatelessWidget {
  const _TimerBloc({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 32),
      decoration: BoxDecoration(
        color: const Color.fromRGBO(255, 255, 255, 0.1),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: _PeriodsButton(),
          ),
          _TimeText(),
          SizedBox(height: 16),
          _PlayPauseButton(),
        ],
      ),
    );
  }
}

class _PeriodsButton extends HookWidget {
  const _PeriodsButton({
    Key key,
  }) : super(key: key);

  static const _kBgColor = Color.fromRGBO(0, 0, 0, 0.15);

  @override
  Widget build(BuildContext context) {
    final round = useProvider(currentRoundProvider);
    final theme = useProvider(appThemeProvider.state);

    return TextButtonTheme(
      data: TextButtonThemeData(
        style: TextButton.styleFrom(
          primary: theme.textColor,
          textStyle: TextStyles.btn,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextButton(
            style: TextButton.styleFrom(
              backgroundColor: round is Work ? _kBgColor : null,
            ),
            onPressed: () {
              context
                  .read(timerControllerProvider)
                  .setNextRound(next: const Round.work());
            },
            child: const Text('Pomodoro'),
          ),
          TextButton(
            style: TextButton.styleFrom(
              backgroundColor: round is ShortBreak ? _kBgColor : null,
            ),
            onPressed: () {
              context
                  .read(timerControllerProvider)
                  .setNextRound(next: const Round.shortBreak());
            },
            child: const Text('Short Break'),
          ),
          TextButton(
            style: TextButton.styleFrom(
              backgroundColor: round is LongBreak ? _kBgColor : null,
            ),
            onPressed: () {
              context
                  .read(timerControllerProvider)
                  .setNextRound(next: const Round.longBreak());
            },
            child: const Text('Long Break'),
          ),
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
        fontSize: 100,
        color: Colors.white,
      ),
    );
  }
}

class _PlayPauseButton extends HookWidget {
  const _PlayPauseButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final color = useProvider(colorFromCurrentRoundProvider);

    final isPLaying = useProvider(
      timerControllerProvider.state.select((value) => value.isPlaying),
    );

    return AnimatedButton(
      onPressed: () => context.read(timerControllerProvider).playOrPause(),
      child: TextWithAnimatedColor(
        isPLaying ? ' PAUSE' : 'START',
        fontFamily: 'ArialRoundedBold',
        fontSize: 21,
        color: color,
      ),
    );
  }
}
