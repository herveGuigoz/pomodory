import 'package:flutter/material.dart';

import '../_internal/styles.dart';

class TextWithAnimatedColor extends StatefulWidget {
  const TextWithAnimatedColor(
    this.data, {
    Key key,
    @required this.color,
    this.duration,
    this.fontSize,
    this.fontFamily,
  }) : super(key: key);

  final String data;
  final Color color;
  final Duration duration;
  final double fontSize;
  final String fontFamily;

  @override
  _TextWithAnimatedColorState createState() => _TextWithAnimatedColorState();
}

class _TextWithAnimatedColorState extends State<TextWithAnimatedColor>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animatable<Color> color;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: widget.duration ?? Durations.medium,
      vsync: this,
    );
  }

  @override
  void didUpdateWidget(covariant TextWithAnimatedColor oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.color != widget.color) {
      color = TweenSequence<Color>(
        [
          TweenSequenceItem(
            weight: 1,
            tween: ColorTween(
              begin: oldWidget.color,
              end: widget.color,
            ),
          ),
        ],
      );

      _controller.forward().then((_) {
        _controller.reset();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return Text(
          widget.data,
          style: TextStyle(
            color: _controller.isAnimating
                ? color?.evaluate(AlwaysStoppedAnimation(_controller.value))
                : widget.color,
            fontFamily: widget?.fontFamily,
            fontSize: widget?.fontSize,
          ),
        );
      },
    );
  }
}
