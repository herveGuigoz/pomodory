part of '../main.dart';

class _Tasks extends StatelessWidget {
  const _Tasks({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
      onPressed: () {},
      icon: const Icon(Icons.add, size: 16),
      label: const Text('Add Task'),
    );
  }
}
