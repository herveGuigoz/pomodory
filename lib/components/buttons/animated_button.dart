import 'package:flutter/material.dart';

/// Using [ShadowDegree] with values [ShadowDegree.dark] or [ShadowDegree.light]
/// to get a darker version of the used color.
/// [duration] in milliseconds
class AnimatedButton extends StatefulWidget {
  const AnimatedButton({
    Key key,
    @required this.onPressed,
    @required this.child,
    this.enabled = true,
    this.color = Colors.white,
    this.height = 64,
    this.shadowDegree = ShadowDegree.light,
    this.width = 200,
    this.duration = 70,
    this.shape = BoxShape.rectangle,
    this.border,
  })  : assert(child != null),
        super(key: key);

  final GestureTapCallback onPressed;
  final Widget child;
  final bool enabled;
  final Color color;
  final double height;
  final double width;
  final ShadowDegree shadowDegree;
  final int duration;
  final BoxShape shape;
  final BoxBorder border;

  @override
  _AnimatedButtonState createState() => _AnimatedButtonState();
}

class _AnimatedButtonState extends State<AnimatedButton> {
  static const Curve _curve = Curves.easeIn;
  static const double _shadowHeight = 4;
  static const double _radius = 4;
  double _position = 4;

  @override
  Widget build(BuildContext context) {
    final _height = widget.height - _shadowHeight;

    return GestureDetector(
      onTapDown: widget.enabled ? _pressed : null,
      onTapUp: widget.enabled ? _unPressedOnTapUp : null,
      onTapCancel: widget.enabled ? _unPressed : null,
      // width here is required for centering the button in parent
      child: Container(
        width: widget.width,
        height: _height + _shadowHeight,
        child: Stack(
          children: <Widget>[
            // background shadow serves as drop shadow
            // width is necessary for bottom shadow
            Positioned(
              bottom: 0,
              child: Container(
                height: _height,
                width: widget.width,
                decoration: BoxDecoration(
                  // color: const Color.fromRGBO(235, 235, 235, 100),
                  color: darken(widget.color, widget.shadowDegree),
                  borderRadius: widget.shape != BoxShape.circle
                      ? const BorderRadius.all(Radius.circular(_radius))
                      : null,
                  shape: widget?.shape,
                ),
              ),
            ),
            AnimatedPositioned(
              curve: _curve,
              duration: Duration(milliseconds: widget.duration),
              bottom: widget.enabled ? _position : 0,
              child: Container(
                height: _height,
                width: widget.width,
                decoration: BoxDecoration(
                  color: widget.color,
                  borderRadius: widget.shape != BoxShape.circle
                      ? const BorderRadius.all(Radius.circular(_radius))
                      : null,
                  shape: widget?.shape,
                  border: widget.border,
                ),
                child: Center(
                  child: widget.child,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _pressed(TapDownDetails _) {
    setState(() {
      _position = 0;
    });
  }

  void _unPressedOnTapUp(TapUpDetails _) => _unPressed();

  void _unPressed() {
    setState(() {
      _position = 4;
    });
    widget.onPressed();
  }
}

// Get a darker color from any entered color.
// Thanks to @NearHuscarl on StackOverflow
Color darken(Color color, ShadowDegree degree) {
  final amount = degree == ShadowDegree.dark ? 0.3 : 0.12;
  final hsl = HSLColor.fromColor(color);
  final hslDark = hsl.withLightness(
    (hsl.lightness - amount).clamp(0.0, 1.0) as double,
  );

  return hslDark.toColor();
}

enum ShadowDegree { light, dark }
