part of '../pages/timer.dart';

class _RoundsCount extends HookWidget {
  const _RoundsCount({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final round = useProvider(
      timerControllerProvider.state.select((value) => value.round),
    );
    final totalRounds = useProvider(
      settingsProvider.state.select((value) => value.roundsLength),
    );

    return Positioned(
      top: 24,
      right: 24,
      child: Text(
        '$round/$totalRounds',
        style: TextStyle(
          color: Theme.of(context).colorScheme.secondaryVariant,
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
