import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pomodory/views/stats/controllers/stats_controller.dart';

class Stats extends ConsumerWidget {
  const Stats({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final stats = ref.watch(statsProvider);
    return ListView.builder(
      itemCount: stats.length,
      itemBuilder: (context, index) {
        final totalFocusedRound = stats[index].totalFocusedRoundInSeconds;
        final totalShortBreak = stats[index].totalShortBreaksInSeconds;
        final totalLongBreak = stats[index].totalLongBreaksInSeconds;
        return Column(
          children: [
            Text('totalFocusedRound: $totalFocusedRound'),
            Text('totalShortBreak: $totalShortBreak'),
            Text('totalLongBreak: $totalLongBreak'),
            const SizedBox(height: 16)
          ],
        );
      },
    );
  }
}
