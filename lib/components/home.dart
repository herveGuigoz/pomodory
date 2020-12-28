import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:pomodoro/components/settings/theme_controller.dart';

import 'timer/circular_timer.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  CountDownController _controller = CountDownController();
  bool _isPause = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          AppBar(
            title: Text(
              'Pomotroid',
              style: TextStyle(
                color: Theme.of(context).accentColor,
                fontSize: 16,
                letterSpacing: .8,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Align(
            alignment: FractionalOffset.center,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                _Timer(controller: _controller),
                const SizedBox(height: 16),
                _ActionButton(
                  isPLaying: !_isPause,
                  onPressed: () {
                    setState(() {
                      if (_isPause) {
                        _isPause = false;
                        _controller.resume();
                      } else {
                        _isPause = true;
                        _controller.pause();
                      }
                    });
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _ActionButton extends StatelessWidget {
  const _ActionButton({
    Key key,
    @required this.isPLaying,
    @required this.onPressed,
  }) : super(key: key);

  final bool isPLaying;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return RawMaterialButton(
      onPressed: onPressed,
      elevation: 2.0,
      // fillColor: theme.colorScheme.background,
      child: Icon(
        isPLaying ? Icons.pause : Icons.play_arrow,
        size: 35.0,
        // color: theme.colorScheme.secondary,
      ),
      padding: EdgeInsets.all(15.0),
      shape: CircleBorder(
        side: BorderSide(color: theme.colorScheme.secondary),
      ),
    );
  }
}

class _Timer extends HookWidget {
  const _Timer({
    Key key,
    @required CountDownController controller,
  })  : _controller = controller,
        super(key: key);

  final CountDownController _controller;

  @override
  Widget build(BuildContext context) {
    final colors = useProvider(themeControllerProvider.state);

    return CircularCountDownTimer(
      duration: 10,
      controller: _controller,
      width: MediaQuery.of(context).size.width / 2,
      height: MediaQuery.of(context).size.height / 2,
      color: colors.backgroundLightest,
      fillColor: colors.focusRound,
      strokeWidth: 8,
      // Begin and end contours with a flat edge and no extension
      strokeCap: StrokeCap.butt,
      // Text Style for Countdown Text
      countdownTextStyle: TextStyle(
        fontFamily: 'RobotoMono',
        fontSize: 46,
        color: colors.backgroundLightest,
        fontWeight: FontWeight.bold,
      ),
      label: 'focus',
      labelTextStyle: TextStyle(
        fontFamily: 'RobotoMono',
        fontSize: 16,
        letterSpacing: 0.1,
        color: colors.backgroundLightest,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
