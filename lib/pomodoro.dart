import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/all.dart';

import 'components/main/main.dart';
import 'components/settings/controllers/theme.dart';

class Pomodoro extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final theme = useProvider(themeControllerProvider.state);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pomodoro Timer',
      theme: theme.themeData,
      home: Main(),
    );
  }
}
