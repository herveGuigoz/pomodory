part of '../pages/timer.dart';

class _CircularCountDownTimer extends StatelessWidget {
  const _CircularCountDownTimer({
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
            padding: const EdgeInsets.all(8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(
                  child: Align(
                    alignment: FractionalOffset.center,
                    child: AspectRatio(
                      aspectRatio: 1,
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
                                AutoSizeText(
                                  label.toUpperCase(),
                                  minFontSize: 4,
                                  maxLines: 1,
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
        painter: _CustomTimerPainter(
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

class _CustomTimerPainter extends CustomPainter {
  _CustomTimerPainter({
    this.value,
    this.fillColor,
    this.color,
    this.strokeWidth,
    this.backgroundColor,
  });

  final double value;
  final Color fillColor, color, backgroundColor;
  final double strokeWidth;

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..strokeWidth = strokeWidth ?? 5.0
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke;

    final circle = Paint()
      ..color = color
      ..strokeWidth = strokeWidth / 3 ?? 1.0
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke;

    canvas.drawCircle(size.center(Offset.zero), size.width / 2, circle);
    final progress = value * 2 * math.pi;
    paint.color = fillColor;
    canvas.drawArc(Offset.zero & size, math.pi * 1.5, progress, false, paint);

    if (backgroundColor != null) {
      final backgroundPaint = Paint();
      backgroundPaint.color = backgroundColor;
      canvas.drawCircle(
        size.center(Offset.zero),
        size.width / 2.2,
        backgroundPaint,
      );
    }
  }

  @override
  bool shouldRepaint(_CustomTimerPainter oldDelegate) {
    return value != oldDelegate.value ||
        color != oldDelegate.color ||
        fillColor != oldDelegate.fillColor;
  }
}

class _Time extends HookWidget {
  const _Time({
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
        minFontSize: 4,
        maxLines: 1,
        style: textStyle,
      ),
    );
  }
}
