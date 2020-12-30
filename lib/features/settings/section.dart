import 'package:flutter/material.dart';

class Section {
  const Section({
    @required this.child,
    @required this.label,
    @required this.iconData,
  })  : assert(child != null, 'child must not be null'),
        assert(label != null, 'label must not be null'),
        assert(iconData != null, 'Icon must not be null');

  final Widget child;
  final String label;
  final IconData iconData;
}
