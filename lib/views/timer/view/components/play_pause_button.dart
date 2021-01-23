part of '../timer.dart';

class _PlayPauseButton extends HookWidget {
  const _PlayPauseButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isPLaying = useProvider(
      timerControllerProvider.state.select((value) => value.isPlaying),
    );

    return AnimatedButton(
      onPressed: () => context.read(timerControllerProvider).playOrPause(),
      child: Text(
        isPLaying ? ' PAUSE' : 'START',
        style: TextStyle(
          fontFamily: 'ArialRoundedBold',
          fontSize: 21,
          color: Theme.of(context).colorScheme.background,
        ),
      ),
    );
    // return RawMaterialButton(
    //   onPressed: () => context.read(timerControllerProvider).playOrPause(),
    //   hoverColor: Colors.transparent,
    //   splashColor: Colors.transparent,
    //   shape: const CircleBorder(),
    //   child: Icon(
    //     isPLaying ? CupertinoIcons.pause_circle : CupertinoIcons.play_circle,
    //     size: 45,
    //   ),
    // );
  }
}
