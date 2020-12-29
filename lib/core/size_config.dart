import 'package:flutter/material.dart';

class SizeConfig {
  SizeConfig._(
    this.screenHeight,
    this.screenWidth,
  );

  factory SizeConfig.of(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);
    return SizeConfig._(
      mediaQueryData.size.height,
      mediaQueryData.size.width,
    );
  }

  final double screenWidth;
  final double screenHeight;

  // Get the proportionate height as per screen size
  double getProportionateScreenHeight(double inputHeight) {
    // 812 is the layout height that designer use
    return (inputHeight / 812.0) * screenHeight;
  }

// Get the proportionate height as per screen size
  double getProportionateScreenWidth(double inputWidth) {
    // 375 is the layout width that designer use
    return (inputWidth / 375.0) * screenWidth;
  }
}
