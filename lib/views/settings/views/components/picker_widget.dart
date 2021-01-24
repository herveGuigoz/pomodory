part of '../settings.dart';

class _RoundsLengthPicker extends StatelessWidget {
  const _RoundsLengthPicker({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: Text(
              'Cycle length',
              style: TextStyles.label,
            ),
          ),
          Container(height: 0.5, color: Colors.black26),
          Expanded(
            child: CupertinoPicker(
              backgroundColor: Colors.white,
              itemExtent: 45,
              onSelectedItemChanged: (value) {
                context.read(settingsProvider).setRoundsLength(value + 1);
              },
              children: List<Widget>.generate(
                kMaxRoundsNubers,
                (index) => Center(child: Text('${index + 1}')),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
