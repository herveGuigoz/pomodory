part of '../settings.dart';

class _RoundsLengthPicker extends ConsumerWidget {
  const _RoundsLengthPicker({
    Key? key,
    required this.height,
  }) : super(key: key);

  final double height;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      height: height,
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
                ref.read(settingsProvider.notifier).setRoundsLength(value + 1);
              },
              children: List<Widget>.generate(
                kMaxRoundsNumbers,
                (index) => Center(child: Text('${index + 1}')),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
