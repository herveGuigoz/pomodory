part of '../settings.dart';

class _SwitchImpl extends ConsumerWidget {
  const _SwitchImpl({
    Key? key,
    required this.title,
    required this.selector,
    required this.onChanged,
  }) : super(key: key);

  final String title;
  final bool Function(SettingsState) selector;
  final void Function(bool) onChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final value = ref.watch(settingsProvider.select(selector));

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyles.h3.textColor(const Color.fromRGBO(34, 34, 34, 1)),
        ),
        CupertinoSwitch(
          trackColor: const Color.fromRGBO(204, 204, 204, 1),
          activeColor: const Color.fromRGBO(132, 199, 51, 0.8),
          value: value,
          onChanged: onChanged,
        )
      ],
    );
  }
}
