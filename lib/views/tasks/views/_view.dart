part of '../task_modal.dart';

class _TaskModalView extends WidgetView<TaskModalLogic, _TaskModalController> {
  const _TaskModalView(_TaskModalController state) : super(state);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Unfocus(
      child: Container(
        height: size.height * .38,
        width: size.width * .80,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: Corners.s5Border,
        ),
        child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 24,
                ),
                child: _IntputField(textController: state._taskName),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  'Number of rounds',
                  style: TextStyle(
                    fontFamily: Fonts.arialRoundedBold,
                    color: const Color.fromRGBO(85, 85, 85, 1),
                    fontSize: FontSizes.s16,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 16,
                  horizontal: 16,
                ),
                child: _NumberOfPomodoro(
                  value: state._pomodoros,
                  increment: state._increment,
                  decrement: state._decrement,
                ),
              ),
              const Spacer(),
              _ActionButtons(
                onCancel: state._quit,
                onDelete: state._delete,
                onSave: state._isSaveButtonEnable ? state._submit : null,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _NumberOfPomodoro extends HookWidget {
  const _NumberOfPomodoro({
    Key key,
    @required this.value,
    @required this.increment,
    @required this.decrement,
  }) : super(key: key);

  final int value;

  final void Function() increment;
  final void Function() decrement;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
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
        const SizedBox(width: 16),
        _AnimatedButtonImpl(
          icon: PomodoroIcons.down,
          enable: value > 1,
          onPressed: decrement,
        ),
        const SizedBox(width: 8),
        _AnimatedButtonImpl(
          icon: PomodoroIcons.up,
          enable: value < 12,
          onPressed: increment,
        )
      ],
    );
  }
}

/// Implemetation of [AnimatedButton] with custom background and borders colors.
class _AnimatedButtonImpl extends StatelessWidget {
  const _AnimatedButtonImpl({
    Key key,
    @required this.icon,
    @required this.onPressed,
    this.enable = true,
  }) : super(key: key);

  final IconData icon;
  final void Function() onPressed;
  final bool enable;

  @override
  Widget build(BuildContext context) {
    return AnimatedButton(
      enabled: enable,
      border: Border.all(
        color: const Color.fromRGBO(223, 223, 223, 1),
        width: .5,
      ),
      height: 45,
      width: 45,
      onPressed: onPressed,
      child: Icon(
        icon,
        color: const Color.fromRGBO(85, 85, 85, .45),
        size: 16,
      ),
    );
  }
}

class _IntputField extends StatelessWidget {
  const _IntputField({
    Key key,
    @required this.textController,
  }) : super(key: key);

  final TextEditingController textController;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textController,
      decoration: InputDecoration(
        border: InputBorder.none,
        contentPadding: const EdgeInsets.all(0),
        hintText: 'What are you working on?',
        hintStyle: TextStyle(
          fontFamily: Fonts.arialRoundedBold,
          fontSize: FontSizes.s18,
          letterSpacing: .2,
          color: const Color.fromRGBO(85, 85, 85, .4),
        ),
      ),
      style: TextStyle(
        fontFamily: Fonts.arialRoundedBold,
        fontSize: FontSizes.s18,
        letterSpacing: .2,
        color: const Color.fromRGBO(85, 85, 85, 1),
      ),
      cursorColor: const Color.fromRGBO(85, 85, 85, .4),
      cursorWidth: 1,
      maxLines: 3,
    );
  }
}

class _ActionButtons extends StatelessWidget {
  const _ActionButtons({
    Key key,
    @required this.onSave,
    @required this.onDelete,
    this.onCancel,
  }) : super(key: key);

  final void Function() onSave;
  final void Function() onDelete;
  final void Function() onCancel;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      height: size.height * .08,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: const Color.fromRGBO(239, 239, 239, 1),
        borderRadius: BorderRadius.only(
          bottomLeft: Corners.s5Radius,
          bottomRight: Corners.s5Radius,
        ),
      ),
      child: Row(
        children: [
          TextButton(
            onPressed: onDelete,
            child: Text(
              'Delete',
              style: TextStyles.btn.textColor(
                const Color.fromRGBO(136, 136, 136, 1),
              ),
            ),
          ),
          const Spacer(),
          TextButton(
            onPressed: onCancel,
            child: Text(
              'Cancel',
              style: TextStyles.btn.textColor(
                const Color.fromRGBO(136, 136, 136, 1),
              ),
            ),
          ),
          const SizedBox(width: 8),
          ElevatedButton(
            style: ButtonStyle(
              enableFeedback: true,
              backgroundColor: MaterialStateProperty.resolveWith((states) {
                return states.contains(MaterialState.disabled)
                    ? const Color.fromRGBO(34, 34, 34, .4)
                    : const Color.fromRGBO(34, 34, 34, 1);
              }),
            ),
            onPressed: onSave,
            child: Text(
              'Save',
              style: TextStyles.btn.textColor(Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
