import 'package:flutter/material.dart';

import 'extensions/textstyle_extensions.dart';
import 'extensions/time_extensions.dart';

export 'extensions/textstyle_extensions.dart';

class Durations {
  static Duration get fastest => .15.seconds;

  static Duration get fast => .25.seconds;

  static Duration get medium => .35.seconds;

  static Duration get slow => .7.seconds;
}

class PageBreaks {
  static double get largePhone => 550;

  static double get tabletPortrait => 768;

  static double get tabletLandscape => 1024;

  static double get desktop => 1440;
}

class Insets {
  static double gutterScale = 1;

  static double scale = 1;

  /// Dynamic insets, may get scaled with the device size
  static double get mGutter => m * gutterScale;

  static double get lGutter => l * gutterScale;

  static double get xs => 2 * scale;

  static double get sm => 6 * scale;

  static double get m => 12 * scale;

  static double get l => 24 * scale;

  static double get xl => 36 * scale;
}

class FontSizes {
  static double get scale => 1;

  static double get s11 => 11 * scale;

  static double get s12 => 12 * scale;

  static double get s14 => 14 * scale;

  static double get s16 => 16 * scale;

  static double get s18 => 18 * scale;
}

class Sizes {
  static double hitScale = 1;

  static double get hit => 40 * hitScale;

  static double get iconMed => 20;

  static double get sideBarSm => 150 * hitScale;

  static double get sideBarMed => 200 * hitScale;

  static double get sideBarLg => 290 * hitScale;
}

class Fonts {
  static const String arialRounded = 'ArialRounded';

  static const String arialRoundedBold = 'ArialRoundedBold';
}

class TextStyles {
  static const TextStyle arialRounded = TextStyle(
    fontFamily: Fonts.arialRounded,
    fontWeight: FontWeight.w400,
    letterSpacing: 0,
    height: 1,
    fontFamilyFallback: [
      Fonts.arialRoundedBold,
    ],
  );

  static const TextStyle arialRoundedBold = TextStyle(
    fontFamily: Fonts.arialRoundedBold,
    fontWeight: FontWeight.w400,
    fontFamilyFallback: [
      Fonts.arialRounded,
    ],
  );

  static TextStyle get t1 =>
      arialRoundedBold.size(FontSizes.s14).letterSpace(.7);

  static TextStyle get t2 =>
      arialRoundedBold.size(FontSizes.s12).letterSpace(.4);

  static TextStyle get h1 => arialRoundedBold.size(FontSizes.s14);

  static TextStyle get h2 => arialRoundedBold.size(FontSizes.s12);

  static TextStyle get h3 => arialRoundedBold.size(FontSizes.s16);
  // .size(FontSizes.s16)
  // .weight(FontWeight.bold)
  // .letterSpace(.45)
  // .textColor(const Color.fromRGBO(85, 85, 85, 1));

  static TextStyle get body1 => arialRounded.size(FontSizes.s14);

  static TextStyle get body2 => arialRounded.size(FontSizes.s12);

  static TextStyle get body3 => arialRounded.size(FontSizes.s11);

  static TextStyle get btn =>
      arialRoundedBold.size(FontSizes.s12).letterSpace(.4);

  static TextStyle get caption =>
      arialRounded.size(FontSizes.s11).letterSpace(.3);

  // todo remove textColor, use Theme.of(context)
  static TextStyle get label => arialRounded
      .size(FontSizes.s14)
      .letterSpace(.4)
      .textColor(const Color.fromRGBO(187, 187, 187, 1));
}

class BackgroundColor {
  static Color get light => const Color.fromRGBO(255, 255, 255, 0.1);
  static Color get dark => const Color.fromRGBO(0, 0, 0, 0.15);
}

class TextButtonStyle {
  static ButtonStyle get small => TextButton.styleFrom(
        primary: Colors.white,
        backgroundColor: BackgroundColor.light,
        textStyle: TextStyles.caption,
      );

  // static ButtonStyle get smallOutlined => TextButton.styleFrom(
  //     primary: Colors.white,
  //     backgroundColor: BackgroundColor.light,
  //     textStyle: TextStyles.caption,
  //     side: const BorderSide(color: Color.fromRGBO(255, 255, 255, 0.4)),
  //     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)));

  static ButtonStyle get medium => TextButton.styleFrom(
        primary: Colors.white,
        backgroundColor: BackgroundColor.dark,
        textStyle: TextStyles.btn,
      );
}

class Shadows {
  static bool enabled = true;

  static double get mRadius => 8;

  static List<BoxShadow> m(Color color, [double opacity = 0]) {
    return enabled
        ? [
            BoxShadow(
              color: color.withOpacity(opacity ?? .03),
              blurRadius: mRadius,
              spreadRadius: mRadius / 2,
              offset: const Offset(1, 0),
            ),
            BoxShadow(
              color: color.withOpacity(opacity ?? .04),
              blurRadius: mRadius / 2,
              spreadRadius: mRadius / 4,
              offset: const Offset(1, 0),
            )
          ]
        : null;
  }
}

class Corners {
  static double get btn => s5;

  static double get dialog => 12;

  /// Xs
  static double get s3 => 3;

  static BorderRadius get s3Border => BorderRadius.all(s3Radius);

  static Radius get s3Radius => Radius.circular(s3);

  /// Small
  static double get s5 => 5;

  static BorderRadius get s5Border => BorderRadius.all(s5Radius);

  static Radius get s5Radius => Radius.circular(s5);

  /// Medium
  static double get s8 => 8;

  static BorderRadius get s8Border => BorderRadius.all(s8Radius);

  static Radius get s8Radius => Radius.circular(s8);

  /// Large
  static double get s10 => 10;

  static BorderRadius get s10Border => BorderRadius.all(s10Radius);

  static Radius get s10Radius => Radius.circular(s10);
}

class AppColors {
  static const focusTextColor = Color.fromRGBO(170, 170, 170, 1);
  static const focusBackgroundColor = Colors.black;
}
