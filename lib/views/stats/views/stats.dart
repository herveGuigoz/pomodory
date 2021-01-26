import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/all.dart';

import '../controllers/stats_controller.dart';

class Stats extends HookWidget {
  const Stats({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final stats = useProvider(statsProvider.state);
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
