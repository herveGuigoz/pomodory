part of 'settings.dart';

class _Preferences extends HookWidget {
  const _Preferences({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final settings = useProvider(settingsProvider.state);
    return Padding(
      padding: const EdgeInsets.all(16),
      child: ListTileTheme(
        dense: true,
        tileColor: theme.colorScheme.background,
        child: ListView(
          children: [
            CheckboxListTile(
              title: const Text('Auto start work timer'),
              shape: const CircleBorder(),
              value: settings.autoStartWorkTimer,
              onChanged: (value) {
                context.read(settingsProvider).autoStartWorkTimer = value;
              },
            ),
            const SizedBox(height: 16),
            CheckboxListTile(
              title: const Text('Auto start break timer'),
              value: settings.autoStartBreakTimer,
              onChanged: (value) {
                context.read(settingsProvider).autoStartBreakTimer = value;
              },
            ),
            const SizedBox(height: 16),
            CheckboxListTile(
              title: const Text('Notification'),
              value: settings.desktopNotifications,
              onChanged: (value) {
                context.read(settingsProvider).desktopNotifications = value;
              },
            ),
            const SizedBox(height: 16),
            CheckboxListTile(
              title: const Text('Sound'),
              value: settings.desktopNotificationsSound,
              onChanged: (value) {
                context.read(settingsProvider).notificationsSound = value;
              },
            ),
          ],
        ),
      ),
    );
  }
}
