part of '../main.dart';

class _TasksList extends HookWidget {
  const _TasksList({
    Key key,
  }) : super(key: key);

  static const double _kTaskTileHeight = 70;

  @override
  Widget build(BuildContext context) {
    final tasks = useProvider(tasksController.state);

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

class _TaskTile extends HookWidget {
  const _TaskTile({
    Key key,
  }) : super(key: key);

  static const double _kVerticalMargin = 4;

  @override
  Widget build(BuildContext context) {
    final task = useProvider(taskProvider);

    return Slidable(
      actionPane: const SlidableDrawerActionPane(),
      actionExtentRatio: 0.20,
      secondaryActions: [
        IconSlideAction(
          caption: 'Delete',
          color: Colors.transparent,
          icon: Icons.delete,
          onTap: () {
            // todo show confirm modal
            context.read(tasksController).delete(task);
          },
        ),
        IconSlideAction(
          caption: 'Edit',
          color: Colors.transparent,
          icon: Icons.edit,
          onTap: () async => Navigator.of(context).push(
            TaskModalLogic.route(task),
          ),
          // onTap: () async => TaskModalLogic.show(context, task: task),
        ),
      ],
      child: GestureDetector(
        onTap: () {
          context.read(tasksController).select(task);
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

class _BorderLeft extends HookWidget {
  const _BorderLeft({
    Key key,
  }) : super(key: key);

  static const _kUnselectedBorderColor = Color.fromRGBO(204, 204, 204, 1);
  static const _kSelectedBorderColor = Color.fromRGBO(34, 34, 34, 1);
  static const double _kBorderWidth = 6;

  @override
  Widget build(BuildContext context) {
    final task = useProvider(taskProvider);

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

class _CheckBox extends HookWidget {
  const _CheckBox({
    Key key,
  }) : super(key: key);

  static const _kCompletedColor = Color.fromRGBO(219, 82, 77, 1);
  static const _kUncompletedColor = Color.fromRGBO(223, 223, 223, 1);
  static const _kShape = BoxShape.circle;

  @override
  Widget build(BuildContext context) {
    final task = useProvider(taskProvider);

    return LayoutBuilder(
      builder: (context, constraints) {
        final size = constraints.maxHeight * .5;
        return GestureDetector(
          onTap: () => context.read(tasksController).complete(task),
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

class _TaskName extends HookWidget {
  const _TaskName({
    Key key,
  }) : super(key: key);

  static const _kCompletedColor = Color.fromRGBO(187, 187, 187, 1);
  static const _kUncompletedColor = Color.fromRGBO(85, 85, 85, 1);

  @override
  Widget build(BuildContext context) {
    final task = useProvider(taskProvider);

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
