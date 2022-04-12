import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pomodory/modules/refs.dart';

const double _kRadius = 2;

class LinearPainter extends ConsumerWidget {
  /// Creates a linear progress indicator.
  const LinearPainter({
    Key? key,
    this.backgroundColor = const Color.fromRGBO(0, 0, 0, 0.1),
    this.valueColor = const AlwaysStoppedAnimation(Colors.white),
    this.minHeight = 0,
  }) : super(key: key);

  /// The progress indicator's background color.
  ///
  /// The current theme's [ThemeData.backgroundColor] by default.
  final Color backgroundColor;

  /// The progress indicator's color as an animated value.
  ///
  /// To specify a constant color use: `AlwaysStoppedAnimation<Color>(color)`.
  final Animation<Color> valueColor;

  /// The minimum height of the line used to draw the indicator.
  ///
  /// This defaults to 2dp.
  final double minHeight;

  Color getBackgroundColor(BuildContext context) {
    return backgroundColor;
  }

  Color getValueColor(BuildContext context) {
    return valueColor.value;
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final progress = ref.watch(
      timerControllerProvider.select((value) => value.fractionalValue),
    );

    final textDirection = Directionality.of(context);

    return Container(
      constraints: BoxConstraints(
        minWidth: double.infinity,
        minHeight: minHeight,
      ),
      child: CustomPaint(
        painter: _LinearProgressIndicatorPainter(
          backgroundColor: getBackgroundColor(context),
          valueColor: getValueColor(context),
          value: progress, // may be null
          textDirection: textDirection,
        ),
      ),
    );
  }
}

class _LinearProgressIndicatorPainter extends CustomPainter {
  const _LinearProgressIndicatorPainter({
    required this.backgroundColor,
    required this.valueColor,
    required this.value,
    required this.textDirection,
  });

  final Color backgroundColor;
  final Color valueColor;
  final double value;
  final TextDirection textDirection;

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = backgroundColor
      ..style = PaintingStyle.fill;
    // canvas.drawRect(Offset.zero & size, paint);
    canvas.drawRRect(
      RRect.fromRectAndRadius(
        Rect.fromLTWH(0, 0, size.width, size.height),
        const Radius.circular(_kRadius),
      ),
      paint,
    );

    paint.color = valueColor;

    void drawBar(double x, double width) {
      if (width <= 0.0) return;

      double right;
      switch (textDirection) {
        case TextDirection.rtl:
          right = width;
          break;
        case TextDirection.ltr:
          right = size.width - width - x;
          break;
      }
      // canvas.drawRect(Offset(left, 0) & Size(width, size.height), paint);
      canvas.drawRRect(
        RRect.fromRectAndRadius(
          Rect.fromLTWH(0, 0, right, size.height),
          const Radius.circular(_kRadius),
        ),
        paint,
      );
    }

    drawBar(0, value.clamp(0.0, 1.0) * size.width);
  }

  @override
  bool shouldRepaint(_LinearProgressIndicatorPainter oldPainter) {
    return oldPainter.backgroundColor != backgroundColor ||
        oldPainter.valueColor != valueColor ||
        oldPainter.value != value ||
        oldPainter.textDirection != textDirection;
  }
}
