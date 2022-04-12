import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pomodory/_internal/cache/hydrated_state_notifier.dart';
import 'package:pomodory/_internal/defer_init.dart';
import 'package:pomodory/core/theme/themes_.dart';
import 'package:pomodory/services/notifications_service.dart';
import 'package:pomodory/views/main/view/main.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  Future<void> _setOrientation() async {
    await SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp],
    );
  }

  @override
  Widget build(BuildContext context) {
    return DeferInit(
      create: () async {
        await _setOrientation();
        HydratedStateNotifier.storage = await HydratedStorage.build(
          storageDirectory: kIsWeb
              ? HydratedStorage.webStorageDirectory
              : await getTemporaryDirectory(),
        );
        final notificationService = await NotificationsService.init();
        await notificationService.requestPermission();
        return const Pomodoro();
      },
    );
  }
}

class Pomodoro extends ConsumerWidget {
  const Pomodoro({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);

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
