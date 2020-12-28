import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/all.dart';

import 'package:pomodoro/components/timer/timer_controller.dart';
import 'timer_painter.dart';

class CircularCountDownTimer extends StatelessWidget {
  CircularCountDownTimer({
    Key key,
    @required this.label,
    @required this.width,
    @required this.height,
    @required this.fillColor,
    @required this.color,
    @required this.countdownTextStyle,
    @required this.labelTextStyle,
    this.backgroundColor,
    this.onComplete,
    this.strokeWidth,
  })  : assert(width != null),
        assert(height != null),
        assert(fillColor != null),
        assert(color != null),
        super(key: key);

  /// Label for Countdown Timer
  final String label;

  /// Filling Color for Countdown Timer
  final Color fillColor;

  /// Default Color for Countdown Timer
  final Color color;

  /// Background Color for Countdown Widget
  final Color backgroundColor;

  /// Function which will execute when the Countdown Ends
  final Function onComplete;

  /// Width of the Countdown Widget
  final double width;

  /// Height of the Countdown Widget
  final double height;

  /// Border Thickness of the Countdown Circle
  final double strokeWidth;

  /// Text Style for Countdown Text
  final TextStyle countdownTextStyle;

  /// Text Style for Countdown Text
  final TextStyle labelTextStyle;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      child: Stack(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(
                  child: Align(
                    alignment: FractionalOffset.center,
                    child: AspectRatio(
                      aspectRatio: 1.0,
                      child: Stack(
                        children: <Widget>[
                          _Painter(
                            fillColor: fillColor,
                            color: color,
                            strokeWidth: strokeWidth,
                            backgroundColor: backgroundColor,
                          ),
                          Align(
                            alignment: FractionalOffset.center,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                _Time(textStyle: countdownTextStyle),
                                const SizedBox(height: 16),
                                Text(
                                  label.toUpperCase(),
                                  style: labelTextStyle,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _Painter extends HookWidget {
  const _Painter({
    Key key,
    @required this.fillColor,
    @required this.color,
    @required this.strokeWidth,
    @required this.backgroundColor,
  }) : super(key: key);

  final Color fillColor;
  final Color color;
  final double strokeWidth;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    final state = useProvider(
      timerControllerProvider.state.select((value) => value.fractionalValue),
    );
    return Positioned.fill(
      child: CustomPaint(
        painter: CustomTimerPainter(
          value: state,
          fillColor: fillColor,
          color: color,
          strokeWidth: strokeWidth,
          backgroundColor: backgroundColor,
        ),
      ),
    );
  }
}

class _Time extends HookWidget {
  _Time({
    Key key,
    @required this.textStyle,
  }) : super(key: key);

  final TextStyle textStyle;

  @override
  Widget build(BuildContext context) {
    final time = useProvider(
      timerControllerProvider.state.select((value) => value.time),
    );
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: AutoSizeText(
        time,
        minFontSize: 21,
        maxLines: 1,
        style: textStyle,
      ),
    );
  }
}
