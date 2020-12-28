import 'package:flutter/material.dart';
import 'package:pomodoro/components/timer/timer_controller.dart';
import 'timer_painter.dart';

/// Create a Circular Countdown Timer
class CircularCountDownTimer extends StatefulWidget {
  CircularCountDownTimer({
    Key key,
    @required this.controller,
    @required this.label,
    @required this.width,
    @required this.height,
    @required this.duration,
    @required this.fillColor,
    @required this.color,
    @required this.countdownTextStyle,
    @required this.labelTextStyle,
    this.backgroundColor,
    this.onComplete,
    this.strokeWidth,
    this.strokeCap,
  })  : assert(width != null),
        assert(height != null),
        assert(duration != null),
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

  /// Countdown Duration in Seconds
  final int duration;

  /// Width of the Countdown Widget
  final double width;

  /// Height of the Countdown Widget
  final double height;

  /// Border Thickness of the Countdown Circle
  final double strokeWidth;

  /// Begin and end contours with a flat edge and no extension
  final StrokeCap strokeCap;

  /// Text Style for Countdown Text
  final TextStyle countdownTextStyle;

  /// Text Style for Countdown Text
  final TextStyle labelTextStyle;

  /// Controller to control (i.e Pause, Resume, Restart) the Countdown
  final TimerController controller;

  @override
  CircularCountDownTimerState createState() => CircularCountDownTimerState();
}

class CircularCountDownTimerState extends State<CircularCountDownTimer>
    with TickerProviderStateMixin {
  AnimationController _controller;
  Animation<double> _countDownAnimation;

  // String get time {
  //   if (_controller.isDismissed) {
  //     return '0:00';
  //   } else {
  //     Duration duration = _controller.duration * _controller.value;
  //     return _getTime(duration);
  //   }
  // }

  void _setAnimation() {
    _controller.reverse(from: 1);
  }

  // String _getTime(Duration duration) {
  //   // For HH:mm:ss format
  //   if (duration.inHours != 0) {
  //     return '${duration.inHours}:${duration.inMinutes % 60}:${(duration.inSeconds % 60).toString().padLeft(2, '0')}';
  //   }
  //   // For mm:ss format
  //   else {
  //     return '${duration.inMinutes % 60}:${(duration.inSeconds % 60).toString().padLeft(2, '0')}';
  //   }
  // }

  void _onComplete() {
    if (widget.onComplete != null) widget.onComplete();
  }

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: widget.duration),
    );

    _controller.addStatusListener((status) {
      if (status == AnimationStatus.dismissed) return _onComplete();
    });

    _setAnimation();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height,
      child: AnimatedBuilder(
          animation: _controller,
          builder: (context, child) {
            return Stack(
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
                                Positioned.fill(
                                  child: CustomPaint(
                                    painter: CustomTimerPainter(
                                      animation:
                                          _countDownAnimation ?? _controller,
                                      fillColor: widget.fillColor,
                                      color: widget.color,
                                      strokeWidth: widget.strokeWidth,
                                      strokeCap: widget.strokeCap,
                                      backgroundColor: widget.backgroundColor,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: FractionalOffset.center,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text(
                                        time,
                                        style: widget.countdownTextStyle,
                                      ),
                                      const SizedBox(height: 16),
                                      Text(
                                        widget.label.toUpperCase(),
                                        style: widget.labelTextStyle,
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
            );
          }),
    );
  }

  @override
  void dispose() {
    _controller.stop();
    _controller.dispose();
    super.dispose();
  }
}

// /// Controller for controlling Countdown Widget (i.e Pause, Resume, Restart)
// class CountDownController {
//   CircularCountDownTimerState _state;

//   /// This Method Pauses the Countdown Timer
//   void pause() {
//     _state._controller?.stop(canceled: false);
//   }

//   /// This Method Resumes the Countdown Timer
//   void resume() {
//     _state._controller?.reverse(
//       from: _state._controller.value = _state._controller.value,
//     );
//   }

//   /// This Method Restarts the Countdown Timer,
//   /// Here optional int parameter **duration** is the updated duration for countdown timer
//   void restart({int duration}) {
//     _state._controller.duration = Duration(
//       seconds: duration ?? _state._controller.duration.inSeconds,
//     );
//     _state._controller?.reverse(from: 1);
//   }

//   /// This Method returns the **Current Time** of Countdown Timer i.e
//   /// Time Used in terms of **Forward Countdown** and Time Left in terms of **Reverse Countdown**
//   String getTime() {
//     return _state._getTime(
//       _state._controller.duration * _state._controller?.value,
//     );
//   }
// }
