part of '../main.dart';

class _TimerBloc extends StatelessWidget {
  const _TimerBloc({
    Key? key,
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

class _PeriodsButton extends ConsumerWidget {
  const _PeriodsButton({
    Key? key,
  }) : super(key: key);

  static const _kBgColor = Color.fromRGBO(0, 0, 0, 0.15);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final round = ref.watch(currentRoundProvider);
    final theme = ref.watch(appThemeProvider);

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
              ref
                  .read(timerControllerProvider.notifier)
                  .setNextRound(next: const Round.work());
            },
            child: const Text('Pomodoro'),
          ),
          TextButton(
            style: TextButton.styleFrom(
              backgroundColor: round is ShortBreak ? _kBgColor : null,
            ),
            onPressed: () {
              ref
                  .read(timerControllerProvider.notifier)
                  .setNextRound(next: const Round.shortBreak());
            },
            child: const Text('Short Break'),
          ),
          TextButton(
            style: TextButton.styleFrom(
              backgroundColor: round is LongBreak ? _kBgColor : null,
            ),
            onPressed: () {
              ref
                  .read(timerControllerProvider.notifier)
                  .setNextRound(next: const Round.longBreak());
            },
            child: const Text('Long Break'),
          ),
        ],
      ),
    );
  }
}

class _TimeText extends ConsumerWidget {
  const _TimeText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final time = ref.watch(
      timerControllerProvider.select((value) => value.time),
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

class _PlayPauseButton extends ConsumerWidget {
  const _PlayPauseButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final color = ref.watch(colorFromCurrentRoundProvider);

    final isPLaying = ref.watch(
      timerControllerProvider.select((value) => value.isPlaying),
    );

    return AnimatedButton(
      onPressed: () => ref.read(timerControllerProvider.notifier).playOrPause(),
      child: TextWithAnimatedColor(
        isPLaying ? ' PAUSE' : 'START',
        fontFamily: 'ArialRoundedBold',
        fontSize: 21,
        color: color,
      ),
    );
  }
}
