part of '../main.dart';

class _Tasks extends HookWidget {
  const _Tasks({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final tasks = useProvider(tasksController.state);

    return SliverFixedExtentList(
      itemExtent: 70,
      delegate: SliverChildBuilderDelegate(
        (context, index) => ProviderScope(
          overrides: [taskProvider.overrideWithValue(tasks[index])],
          child: const _Card(),
        ),
        childCount: tasks.length,
      ),
    );
  }
}

class _Card extends HookWidget {
  const _Card({
    Key key,
  }) : super(key: key);

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
          onTap: () async => TaskModal.show(context, task: task),
        ),
      ],
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 4),
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
          borderRadius: Corners.s5Border,
          color: Colors.white,
        ),
        child: Row(
          children: [
            Container(
              width: 4,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(34, 34, 34, 1),
                borderRadius: BorderRadius.only(
                  topLeft: Corners.s5Radius,
                  bottomLeft: Corners.s5Radius,
                ),
              ),
            ),
            const SizedBox(width: 16),
            const _CheckBox(),
            const SizedBox(width: 16),
            Text(
              task.name,
              textAlign: TextAlign.center,
              style: task.completed
                  ? TextStyles.h3
                      .textDecoration(TextDecoration.lineThrough)
                      .textColor(const Color.fromRGBO(187, 187, 187, 1))
                  : TextStyles.h3
                      .textColor(const Color.fromRGBO(85, 85, 85, 1)),

              //TextStyles.h3
              // .textDecoration(TextDecoration.lineThrough)
              // .textColor(const Color.fromRGBO(85, 85, 85, 1))
            ),
          ],
        ),
      ),
    );
  }
}

class _CheckBox extends HookWidget {
  const _CheckBox({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final task = useProvider(taskProvider);

    return LayoutBuilder(
      builder: (context, constraints) {
        final size = constraints.maxHeight * .5;
        return GestureDetector(
          onTap: () => context
              .read(tasksController)
              .update(task.copyWith(completed: !task.completed)),
          child: StyledContainer(
            duration: Durations.fast,
            width: size,
            height: size,
            align: Alignment.center,
            color: task.completed
                ? const Color.fromRGBO(219, 82, 77, 1)
                : const Color.fromRGBO(223, 223, 223, 1),
            shape: BoxShape.circle,
            child: const Icon(Icons.check, color: Colors.white),
          ),
        );
      },
    );
  }
}
