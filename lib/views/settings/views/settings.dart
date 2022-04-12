import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pomodory/_internal/styles.dart';
import 'package:pomodory/_internal/unfocus.dart';
import 'package:pomodory/models/settings_state.dart';
import 'package:pomodory/views/settings/controllers/bloc.dart';

part 'components/header.dart';
part 'components/intervals.dart';
part 'components/switch.dart';
part 'components/digit_input_field.dart';
part 'components/picker_widget.dart';

class SettingsView extends ConsumerWidget {
  const SettingsView({
    Key? key,
  }) : super(key: key);

  static Route route() {
    return CupertinoPageRoute<void>(builder: (_) => const SettingsView());
  }

  static const Color _kDividerColor = Color.fromRGBO(34, 34, 34, 0.25);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return DefaultTextStyle(
      style: const TextStyle(color: Color.fromRGBO(34, 34, 34, 1)),
      child: Unfocus(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: SafeArea(
            bottom: false,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 16),
                    child: _Header(),
                  ),
                  const Divider(color: _kDividerColor),
                  const Padding(
                    padding: EdgeInsets.only(top: 24, bottom: 16),
                    child: _Intervals(),
                  ),
                  const Divider(color: _kDividerColor),
                  const _CycleLength(),
                  const Divider(color: _kDividerColor),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    child: _SwitchImpl(
                      title: 'Auto start pomodoro timer ?',
                      selector: (state) => state.autoStartWorkTimer,
                      onChanged: (value) => ref
                          .read(settingsProvider.notifier)
                          .setAutoStartWorkTimer(value: value),
                    ),
                  ),
                  const Divider(color: _kDividerColor),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    child: _SwitchImpl(
                      title: 'Auto start break timer ?',
                      selector: (state) => state.autoStartBreakTimer,
                      onChanged: (value) => ref
                          .read(settingsProvider.notifier)
                          .setAutoStartBreakTimer(value:value),
                    ),
                  ),
                  const Divider(color: _kDividerColor),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    child: _SwitchImpl(
                      title: 'Notifications',
                      selector: (state) => state.notifications,
                      onChanged: (value) => ref
                          .read(settingsProvider.notifier)
                          .setDesktopNotifications(value:value),
                    ),
                  ),
                  const Divider(color: _kDividerColor),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
