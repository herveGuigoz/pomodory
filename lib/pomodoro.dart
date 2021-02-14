import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/all.dart';

import '_internal/cache/hydrated_state_notifier.dart';
import '_internal/defer_init.dart';
import 'core/theme/themes_.dart';
import 'services/notifications_service.dart';
import 'views/main/view/main.dart';

class SplashScreen extends StatelessWidget {
  Future<void> _setPreferedOrientation() async {
    await SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp],
    );
  }

  @override
  Widget build(BuildContext context) {
    return DeferInit(
      create: () async {
        await _setPreferedOrientation();
        HydratedStateNotifier.storage = await HydratedStorage.build();
        final notificationService = await NotificationsService.init();
        await notificationService.requestPermission();
        return const Pomodoro();
      },
    );
  }
}

class Pomodoro extends HookWidget {
  const Pomodoro({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = useProvider(appThemeProvider.state);

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light.copyWith(
        systemNavigationBarColor: const Color.fromRGBO(255, 255, 255, 0.1),
        systemNavigationBarIconBrightness: Brightness.dark,
      ),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Pomodoro Timer',
        theme: theme.themeData,
        home: const MainView(),
      ),
    );
  }
}
