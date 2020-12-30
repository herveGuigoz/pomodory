part of 'bloc.dart';

mixin NotificationMixin on Timer {
  static const _badgeBlue = 'assets/images/badge_blue.png';
  static const _badgeGreen = 'assets/images/badge_green.png';
  static const _badgeRed = 'assets/images/badge_red.png';

  Future<void> showNotification({bool playSound}) async {
    String title, body;
    File icon;

    await state.currentRound.when(
      work: () async {
        title = 'Break Finished';
        body = 'Begin focusing for ${state.duration.inMinutes} minutes.';
        icon = await BadgesBuilder.buildFromAssets(_badgeRed);
      },
      shortBreak: () async {
        title = 'Focus Round Complete';
        body = 'Begin a ${state.duration.inMinutes} minute short break.';
        icon = await BadgesBuilder.buildFromAssets(_badgeGreen);
      },
      longBreak: () async {
        title = 'Focus Round Complete';
        body = 'Begin a ${state.duration.inMinutes} minute long break.';
        icon = await BadgesBuilder.buildFromAssets(_badgeBlue);
      },
    );

    await PomodoroNotification.instance.show(
      title,
      body,
      filePath: icon.path,
      withSound: playSound,
    );
  }
}
