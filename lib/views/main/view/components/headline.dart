part of '../main.dart';

class _Headline extends HookWidget {
  const _Headline({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final selectedTask = useProvider(selectedTaskProvider);
    final headline = useProvider(headlineProvider);

    final child = selectedTask != null
        ? Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text(
                'WORKING ON',
                style: TextStyle(color: Colors.white60),
              ),
              Text(selectedTask.name, style: TextStyles.h1),
            ],
          )
        : Text(
            headline,
            style: TextStyles.h1,
            textAlign: TextAlign.center,
          );

    return Container(
      height: 50,
      alignment: Alignment.center,
      child: AnimatedSwitcher(
        duration: kThemeAnimationDuration,
        child: child,
      ),
    );
  }
}
