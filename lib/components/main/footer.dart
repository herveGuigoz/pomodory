part of 'main.dart';

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
      intervalsProvider.state.select((value) => value.roundsLength),
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

// focus 7h30 - 7h55 (25 min)
// pause 7h55 - 8h00 (5 min)
// focus 8h00 - 8h25 (25 min)
// pause 8h25 - 8h30 (5 min)
// focus 8h30 - 8h55 (25 min)
// pause 8h55 - 9h00 (5 min)
// focus 9h00 - 9h25 (25 min)
// pause 9h25 - 9h40 (15 min)
// 1h40

// focus 9h40 - 10h05 (25 min)
// pause 10h05 - 10h20 (5 min)
// focus 10h20 - 10h45 (25 min)
// pause 10h45 - 10h50 (5 min)
// focus 10h50 - 11h15 (25 min)
// pause 11h15 - 11h20 (5 min)
// focus 11h20 - 11h45 (25 min)
// 3h20

// focus 12h30 - 12h55 (25 min)
// pause 12h55 - 13h00 (5 min)
// focus 13h00 - 13h25 (25 min)
// pause 13h25 - 13h30 (5 min)
// focus 13h30 - 13h55 (25 min)
// pause 13h55 - 14h00 (5 min)
// focus 14h00 - 14h25 (25 min)
// pause 14h25 - 14h40 (15 min)
// 4h00

// focus 14h40 - 15h05 (25 min)
// pause 15h05 - 15h10 (5 min)
// focus 15h10 - 15h35 (25 min)
// pause 15h35 - 15h40 (5 min)
// focus 15h40 - 16h05 (25 min)
// pause 16h05 - 16h10 (5 min)
// focus 16h10 - 16h35 (25 min)
// pause 16h35 - 16h50 (15 min)
// 5h40
