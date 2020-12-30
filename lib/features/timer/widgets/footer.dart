part of '../pages/timer.dart';

class _LeftFooter extends HookWidget {
  const _LeftFooter({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final round = useProvider(
      timerControllerProvider.state.select((value) => value.round),
    );
    final totalRounds = useProvider(
      settingsProvider.state.select((value) => value.roundsLength),
    );

    return Positioned(
      bottom: 16,
      left: 16,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Text(
              '$round/$totalRounds',
              style: TextStyle(
                color: theme.colorScheme.secondaryVariant,
              ),
            ),
          ),
          const SizedBox(height: 8),
          TextButton(
            style: TextButton.styleFrom(
              primary: theme.colorScheme.secondary,
              textStyle: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w200,
                letterSpacing: 0.05,
              ),
            ),
            onPressed: () => context.read(timerControllerProvider).reset(),
            child: const Text('Reset'),
          ),
        ],
      ),
    );
  }
}

class _RightFooter extends StatelessWidget {
  const _RightFooter({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 16,
      right: 16,
      child: IconButton(
        icon: const Icon(CupertinoIcons.forward),
        onPressed: () => context.read(timerControllerProvider).setNextRound(),
      ),
    );
  }
}
