import 'package:flutter/material.dart';

class AnimatedScalfold extends StatefulWidget {
  const AnimatedScalfold({
    Key key,
    @required this.child,
  }) : super(key: key);

  final Widget child;
  @override
  _AnimatedScalfoldState createState() => _AnimatedScalfoldState();
}

class _AnimatedScalfoldState extends State<AnimatedScalfold>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 10),
      vsync: this,
    )..repeat();
  }

  Animatable<Color> background = TweenSequence<Color>([
    TweenSequenceItem(
      weight: 1,
      tween: ColorTween(
        begin: Colors.red,
        end: Colors.green,
      ),
    ),
    TweenSequenceItem(
      weight: 1,
      tween: ColorTween(
        begin: Colors.green,
        end: Colors.blue,
      ),
    ),
    TweenSequenceItem(
      weight: 1,
      tween: ColorTween(
        begin: Colors.blue,
        end: Colors.pink,
      ),
    ),
  ]);

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return Scaffold(
          body: Container(
            color: background.evaluate(
              AlwaysStoppedAnimation(_controller.value),
            ),
            child: child,
          ),
        );
      },
      child: widget.child,
    );
  }
}
