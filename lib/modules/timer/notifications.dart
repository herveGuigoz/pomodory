part of 'timer_controller.dart';

mixin NotificationMixin on StateNotifier<TimerState> {
  static const _badgeBlue = 'assets/images/badge_blue.png';
  static const _badgeGreen = 'assets/images/badge_green.png';
  static const _badgeRed = 'assets/images/badge_red.png';

  Future<void> showNotification({required bool playSound}) async {
    late String title, body;
    late File icon;

    await state.currentRound.when(
      work: () async {
        title = 'Break Finished';
        body = 'Begin focusing for ${state.duration.inMinutes} minutes.';
        icon = await FilesService.buildFromAssets(_badgeRed);
      },
      shortBreak: () async {
        title = 'Focus Round Complete';
        body = 'Begin a ${state.duration.inMinutes} minute short break.';
        icon = await FilesService.buildFromAssets(_badgeGreen);
      },
      longBreak: () async {
        title = 'Focus Round Complete';
        body = 'Begin a ${state.duration.inMinutes} minute long break.';
        icon = await FilesService.buildFromAssets(_badgeBlue);
      },
    );

    await NotificationsService.instance.show(
      title,
      body,
      filePath: icon.path,
      withSound: playSound,
    );
  }
}
