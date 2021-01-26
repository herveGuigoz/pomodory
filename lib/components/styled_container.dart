import 'package:flutter/material.dart';
import '../_internal/styles.dart';

/// A container that will animate when you change colors.
class StyledContainer extends StatelessWidget {
  const StyledContainer({
    Key key,
    this.color,
    this.borderRadius,
    this.shadows,
    this.child,
    this.width,
    this.height,
    this.align,
    this.shape,
    this.margin,
    this.duration,
    this.border,
  }) : super(key: key);

  final Color color;
  final BorderRadiusGeometry borderRadius;
  final List<BoxShadow> shadows;
  final Widget child;
  final double width;
  final double height;
  final Alignment align;
  final BoxShape shape;
  final EdgeInsets margin;
  final Duration duration;
  final BoxBorder border;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      width: width,
      height: height,
      margin: margin,
      alignment: align,
      duration: duration ?? Durations.medium,
      decoration: BoxDecoration(
        color: color,
        borderRadius: borderRadius,
        boxShadow: shadows,
        border: border,
        shape: shape ?? BoxShape.rectangle,
      ),
      child: child,
    );
  }
}
