import 'package:flutter/material.dart';

/// The minimum recommended contrast ratio for the visual representation of
/// text.
///
/// See https://www.w3.org/TR/UNDERSTANDING-WCAG20/visual-audio-contrast-contrast.html.
const double kTextContrastRatio = 4.5;

/// The minimum recommended contrast ratio for the visual representation of
/// large text.
///
/// See https://www.w3.org/TR/UNDERSTANDING-WCAG20/visual-audio-contrast-contrast.html.
const double kLargeTextContrastRatio = 3;

const kDefaultRadius = Radius.circular(16);

/// The default border radius used throughout the app.
const kDefaultShapeBorder = RoundedRectangleBorder(
  borderRadius: kDefaultBorderRadius,
);

const BorderRadiusGeometry kDefaultBorderRadius =
    BorderRadius.all(kDefaultRadius);
