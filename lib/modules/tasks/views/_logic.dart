part of 'task_modal.dart';

class TaskModalLogic extends ConsumerStatefulWidget {
  const TaskModalLogic({
    Key? key,
    required this.task,
  }) : super(key: key);

  final Task task;

  static Route<T> route<T>([Task? task]) {
    return CupertinoPageRoute<T>(
      builder: (_) => TaskModalLogic(task: task ?? Task.initial()),
    );
  }

  @override
  ConsumerState<TaskModalLogic> createState() => _TaskModalController();
}

class _TaskModalController extends ConsumerState<TaskModalLogic> {
  Task get task => widget.task;

  late final TextEditingController _taskName;
  late final TextEditingController _project;

  late bool _isSaveButtonEnable;

  late int _pomodoros;

  @override
  void initState() {
    super.initState();
    _taskName = TextEditingController(text: widget.task.name);
    _project = TextEditingController(
      text: widget.task.project != kDefaultProject ? widget.task.project : '',
    );
    _pomodoros = widget.task.estPomodoros;
    _isSaveButtonEnable = widget.task.name.isEmpty;
    _taskName.addListener(_textControllerListener);
  }

  void _textControllerListener() {
    if (_taskName.text.isEmpty && _isSaveButtonEnable) {
      setState(() => _isSaveButtonEnable = false);
    }
    if (_taskName.text.isNotEmpty && !_isSaveButtonEnable) {
      setState(() => _isSaveButtonEnable = true);
    }
  }

  @override
  void dispose() {
    _taskName
      ..removeListener(_textControllerListener)
      ..dispose();
    _project.dispose();
    super.dispose();
  }

  void _increment() => setState(() => _pomodoros++);

  void _decrement() {
    if (_pomodoros == 1) return;
    setState(() => _pomodoros--);
  }

  void _submit() {
    ref
        .read(tasksController.notifier)
        .update(task.copyWith(name: _taskName.text, estPomodoros: _pomodoros));

    _quit();
  }

  void _delete() {
    ref.read(tasksController.notifier).delete(task);
    _quit();
  }

  void _quit() => Navigator.of(context).pop();

  @override
  Widget build(BuildContext context) => _TaskModalView(this);
}
