part of '../pages/timer.dart';

class _RollbackIconButton extends StatelessWidget {
  const _RollbackIconButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 16,
      left: 16,
      child: IconButton(
        splashRadius: _kSplashRadius,
        iconSize: _kIconSizes,
        splashColor: _kSplashColor,
        hoverColor: _kHoverColor,
        icon: const Icon(PomodoroIcons.rollback),
        onPressed: () => context.read(timerControllerProvider).reset(),
      ),
    );
  }
}
