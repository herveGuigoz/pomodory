part of '../pages/timer.dart';

class _NextIntervalIconButton extends StatelessWidget {
  const _NextIntervalIconButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 16,
      right: 16,
      child: IconButton(
        splashRadius: _kSplashRadius,
        iconSize: _kIconSizes,
        splashColor: _kSplashColor,
        hoverColor: _kHoverColor,
        icon: const Icon(PomodoroIcons.circled_right),
        onPressed: () => context.read(timerControllerProvider).setNextRound(),
      ),
    );
  }
}
