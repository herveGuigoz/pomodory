import 'dart:io';

import '../../core/file_helper.dart';
import '../../core/notifications.dart';
import 'ticker.dart';

mixin TimerNotification on TickerService {
  static const _iconBlue = 'assets/images/icon_blue.png';
  static const _iconGreen = 'assets/images/icon_green.png';
  static const _iconRed = 'assets/images/icon.png';

  Future<void> showNotification() async {
    String title, body;
    File icon;

    await state.currentRound.when(
      work: () async {
        title = 'Break Finished';
        body = 'Begin focusing for ${state.duration.inMinutes} minutes.';
        icon = await FileHelper.readAndWrite(_iconRed);
      },
      shortBreak: () async {
        title = 'Focus Round Complete';
        body = 'Begin a ${state.duration.inMinutes} minute short break.';
        icon = await FileHelper.readAndWrite(_iconGreen);
      },
      longBreak: () async {
        title = 'Focus Round Complete';
        body = 'Begin a ${state.duration.inMinutes} minute long break.';
        icon = await FileHelper.readAndWrite(_iconBlue);
      },
    );

    await PomodoroNotification.instance.show(title, body, icon.path);
  }
}
