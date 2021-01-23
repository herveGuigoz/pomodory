import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/all.dart';

import '_internal/cache/hydrated_state_notifier.dart';
import '_internal/defer_init.dart';
import 'core/theme/themes_.dart';
import 'services/notifications_service.dart';
import 'views/timer/view/timer.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DeferInit(
      create: () async {
        HydratedStateNotifier.storage = await HydratedStorage.build();
        final notificationService = await NotificationsService.init();
        await notificationService.requestMacOsPermission();
        return Pomodoro();
      },
    );
  }
}

class Pomodoro extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final theme = useProvider(appThemeProvider.state);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pomodoro Timer',
      theme: theme.themeData,
      home: const Timer(),
    );
  }
}
