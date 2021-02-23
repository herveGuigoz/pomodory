part of '../main.dart';

class _TasksHeader extends HookWidget {
  const _TasksHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final color = useProvider(colorFromCurrentRoundProvider);

    return SliverPersistentHeader(
      pinned: true,
      floating: true,
      delegate: _SliverAppBarDelegate(
        minHeight: 60,
        maxHeight: 60,
        child: StyledContainer(
          color: color,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Tasks', style: TextStyles.h1),
                    const _AddTaskButton(),
                  ],
                ),
                // Horizontal line
                Container(
                  margin: const EdgeInsets.only(top: 8),
                  color: Colors.white,
                  height: 2,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _AddTaskButton extends StatelessWidget {
  const _AddTaskButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      style: TextButtonStyle.small,
      icon: const Icon(Icons.add, size: 16),
      label: const Text('Add Task'),
      onPressed: () async => Navigator.of(context).push(TaskModalLogic.route()),
      // onPressed: () async => TaskModalLogic.show(context),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate({
    @required this.minHeight,
    @required this.maxHeight,
    @required this.child,
  });

  final double minHeight;
  final double maxHeight;
  final Widget child;

  @override
  double get minExtent => minHeight;

  @override
  double get maxExtent => math.max(maxHeight, minHeight);

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return SizedBox.expand(child: child);
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return maxHeight != oldDelegate.maxHeight ||
        minHeight != oldDelegate.minHeight ||
        child != oldDelegate.child;
  }
}
