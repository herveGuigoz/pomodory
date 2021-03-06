part of 'task_modal.dart';

class TaskModalLogic extends StatefulWidget {
  const TaskModalLogic({
    Key key,
    @required this.task,
  }) : super(key: key);

  final Task task;

  // static Future<void> show(BuildContext context, {Task task}) async {
  //   await showCupertinoDialog<void>(
  //     context: context,
  //     builder: (context) => Dialog(
  //       child: TaskModalLogic(task: task ?? Task.initial()),
  //     ),
  //   );
  // }

  static Route<T> route<T>([Task task]) {
    return CupertinoPageRoute<T>(
      builder: (_) => TaskModalLogic(task: task ?? Task.initial()),
    );
  }

  @override
  _TaskModalController createState() => _TaskModalController();
}

class _TaskModalController extends State<TaskModalLogic> {
  Task get task => widget.task;

  TextEditingController _taskName;
  TextEditingController _project;

  bool _isSaveButtonEnable;

  int _pomodoros;

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
    _taskName.removeListener(_textControllerListener);
    _taskName.dispose();
    _project.dispose();
    super.dispose();
  }

  void _increment() => setState(() => _pomodoros++);

  void _decrement() {
    if (_pomodoros == 1) return;
    setState(() => _pomodoros--);
  }

  void _submit() {
    context
        .read(tasksController)
        .update(task.copyWith(name: _taskName.text, estPomodoros: _pomodoros));

    _quit();
  }

  void _delete() {
    context.read(tasksController).delete(task);
    _quit();
  }

  void _quit() => Navigator.of(context).pop();

  @override
  Widget build(BuildContext context) => _TaskModalView(this);
}
