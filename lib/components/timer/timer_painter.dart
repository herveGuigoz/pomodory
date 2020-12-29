import 'dart:math' as math;

import 'package:flutter/material.dart';

class CustomTimerPainter extends CustomPainter {
  CustomTimerPainter({
    // this.animation,
    this.value,
    this.fillColor,
    this.color,
    this.strokeWidth,
    this.backgroundColor,
  }); // : super(repaint: animation);

  // final Animation<double> animation;
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
    // double progress = (animation.value) * 2 * math.pi;
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
  bool shouldRepaint(CustomTimerPainter oldDelegate) {
    return value != oldDelegate.value ||
        color != oldDelegate.color ||
        fillColor != oldDelegate.fillColor;
  }
}
