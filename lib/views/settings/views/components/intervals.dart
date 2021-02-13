part of '../settings.dart';

class _Intervals extends StatelessWidget {
  const _Intervals({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Time (minutes)',
          style: TextStyles.h3.textColor(const Color.fromRGBO(34, 34, 34, 1)),
        ),
        const SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _InputField(
              label: 'Pomodoro',
              onChanged: context.read(settingsProvider).setFocusDurationAsInt,
              selector: (setting) => setting.focusInMinutes,
            ),
            _InputField(
              label: 'Short Break',
              onChanged:
                  context.read(settingsProvider).setShortBreakDurationAsInt,
              selector: (setting) => setting.shortBreakInMinutes,
            ),
            _InputField(
              label: 'Long Break',
              onChanged:
                  context.read(settingsProvider).setLongBreakDurationAsInt,
              selector: (setting) => setting.longBreakInMinutes,
            ),
          ],
        )
      ],
    );
  }
}

class _CycleLength extends HookWidget {
  const _CycleLength({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final value = useProvider(
      settingsProvider.state.select((value) => value.roundsLength),
    );

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Cycle Length',
          style: TextStyles.h3.textColor(const Color.fromRGBO(34, 34, 34, 1)),
        ),
        GestureDetector(
          onTap: () async => showModalBottomSheet<void>(
            context: context,
            builder: (context) {
              final size = MediaQuery.of(context).size.height;
              final panelHeight = size == null ? 240.0 : size / 3;

              return _RoundsLengthPicker(height: panelHeight);
            },
          ),
          child: Container(
            // todo use padding on parent
            margin: const EdgeInsets.symmetric(vertical: 16),
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width * 0.25,
            height: 45,

            decoration: BoxDecoration(
              color: const Color.fromRGBO(239, 239, 239, 1),
              borderRadius: Corners.s5Border,
            ),
            child: Text(
              value.toString(),
              style: TextStyle(
                color: const Color.fromRGBO(85, 85, 85, 1),
                fontSize: FontSizes.s16,
              ),
            ),
          ),
        )
      ],
    );
  }
}

class _InputField extends HookWidget {
  const _InputField({
    Key key,
    this.label,
    @required this.onChanged,
    @required this.selector,
  }) : super(key: key);

  final String label;
  final void Function(int) onChanged;
  final int Function(SettingsState) selector;

  @override
  Widget build(BuildContext context) {
    final value = useProvider(settingsProvider.state.select(selector));

    return Container(
      width: MediaQuery.of(context).size.width * 0.25,
      decoration: BoxDecoration(borderRadius: Corners.s5Border),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (label != null && label.isNotEmpty)
            Text(label, style: TextStyles.label),
          const SizedBox(height: 4),
          _DigitInputField(value: value, onChanged: onChanged),
        ],
      ),
    );
  }
}
