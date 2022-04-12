part of '../main.dart';

class _TasksList extends ConsumerWidget {
  const _TasksList({
    Key? key,
  }) : super(key: key);

  static const double _kTaskTileHeight = 70;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tasks = ref.watch(tasksController);

    return SliverFixedExtentList(
      itemExtent: _kTaskTileHeight,
      delegate: SliverChildBuilderDelegate(
        (context, index) => ProviderScope(
          overrides: [taskProvider.overrideWithValue(tasks[index])],
          child: const _TaskTile(),
        ),
        childCount: tasks.length,
      ),
    );
  }
}

class _TaskTile extends ConsumerWidget {
  const _TaskTile({
    Key? key,
  }) : super(key: key);

  static const double _kVerticalMargin = 4;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final task = ref.watch(taskProvider);

    return Slidable(
      key: const ValueKey(0),
      startActionPane: ActionPane(
        motion: const ScrollMotion(),
        extentRatio: 0.20,
        children: [
          SlidableAction(
            onPressed: (context) {
              // todo show confirm modal
              ref.read(tasksController.notifier).delete(task);
            },
            backgroundColor: Colors.transparent,
            icon: Icons.delete,
            label: 'Delete',
          ),
          SlidableAction(
            onPressed: (context) async => Navigator.of(context).push(
              TaskModalLogic.route(task),
            ),
            backgroundColor: Colors.transparent,
            icon: Icons.edit,
            label: 'Edit',
          ),
        ],
      ),
      child: GestureDetector(
        onTap: () {
          ref.read(tasksController.notifier).select(task);
        },
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: _kVerticalMargin),
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            borderRadius: Corners.s5Border,
            color: Colors.white,
          ),
          child: Row(
            children: const [
              _BorderLeft(),
              SizedBox(width: 16),
              _CheckBox(),
              SizedBox(width: 16),
              _TaskName(),
            ],
          ),
        ),
      ),
    );
  }
}

class _BorderLeft extends ConsumerWidget {
  const _BorderLeft({
    Key? key,
  }) : super(key: key);

  static const _kUnselectedBorderColor = Color.fromRGBO(204, 204, 204, 1);
  static const _kSelectedBorderColor = Color.fromRGBO(34, 34, 34, 1);
  static const double _kBorderWidth = 6;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final task = ref.watch(taskProvider);

    return AnimatedContainer(
      duration: kThemeAnimationDuration,
      width: _kBorderWidth,
      decoration: BoxDecoration(
        color: task.selected ? _kSelectedBorderColor : _kUnselectedBorderColor,
        borderRadius: BorderRadius.only(
          topLeft: Corners.s5Radius,
          bottomLeft: Corners.s5Radius,
        ),
      ),
    );
  }
}

class _CheckBox extends ConsumerWidget {
  const _CheckBox({
    Key? key,
  }) : super(key: key);

  static const _kCompletedColor = Color.fromRGBO(219, 82, 77, 1);
  static const _kUncompletedColor = Color.fromRGBO(223, 223, 223, 1);
  static const _kShape = BoxShape.circle;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final task = ref.watch(taskProvider);

    return LayoutBuilder(
      builder: (context, constraints) {
        final size = constraints.maxHeight * .5;
        return GestureDetector(
          onTap: () => ref.read(tasksController.notifier).complete(task),
          child: StyledContainer(
            duration: Durations.fastest,
            width: size,
            height: size,
            align: Alignment.center,
            color: task.completed ? _kCompletedColor : _kUncompletedColor,
            shape: _kShape,
            child: const Icon(Icons.check, color: Colors.white),
          ),
        );
      },
    );
  }
}

class _TaskName extends ConsumerWidget {
  const _TaskName({
    Key? key,
  }) : super(key: key);

  static const _kCompletedColor = Color.fromRGBO(187, 187, 187, 1);
  static const _kUncompletedColor = Color.fromRGBO(85, 85, 85, 1);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final task = ref.watch(taskProvider);

    return Text(
      task.name,
      textAlign: TextAlign.center,
      style: task.completed
          ? TextStyles.h3
              .textDecoration(TextDecoration.lineThrough)
              .textColor(_kCompletedColor)
          : TextStyles.h3.textColor(_kUncompletedColor),
    );
  }
}
