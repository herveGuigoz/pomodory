part of 'theme.dart';

abstract class PomodoroThemeData {
  PomodoroThemeData({
    this.primary,
    this.primaryVariant,
    this.secondary,
    this.secondaryVariant,
    this.textColor,
    this.accent,
    this.background,
    this.error,
  });
  final Color primary;
  final Color primaryVariant;
  final Color secondary;
  final Color secondaryVariant;
  final Color textColor;
  final Color accent;
  final Color background;
  final Color error;

  TextTheme get textTheme;
  double get backgroundLuminance;

  // the Material Design color brightness threshold
  static const double kThreshold = 0.15;

  Brightness get brightness =>
      (backgroundLuminance + 0.05) * (backgroundLuminance + 0.05) > kThreshold
          ? Brightness.light
          : Brightness.dark;

  ThemeData get themeData {
    return ThemeData(
      brightness: brightness,
      textTheme: textTheme,
      colorScheme: ColorScheme(
        primary: primary,
        primaryVariant: primaryVariant, //backgroundLightest, // todo
        secondary: secondary,
        secondaryVariant: secondaryVariant,
        surface: primary, // todo
        background: background,
        error: error,
        onPrimary: textColor, // todo
        onSecondary: textColor, // todo
        onSurface: textColor, // todo
        onBackground: textColor, // todo
        onError: textColor, // todo
        brightness: brightness,
      ),
      primaryColor: primary,
      accentColor: accent,
      buttonColor: background,
      errorColor: error,
      dividerColor: brightness == Brightness.dark
          ? Colors.white.withOpacity(.2)
          : Colors.black.withOpacity(.2),
      // determines the status bar icon color
      primaryColorBrightness: brightness,
      // used for the background color of material widgets
      cardColor: background,
      canvasColor: background,
      dialogBackgroundColor: background,
      scaffoldBackgroundColor: background,
      // used by toggleable widgets
      toggleableActiveColor: accent,
      // used by a text field when it has focus
      textSelectionTheme: TextSelectionThemeData(
        selectionHandleColor: accent,
      ),
      // used when interacting with material widgets
      splashColor: accent.withOpacity(.1),
      highlightColor: accent.withOpacity(.1),
      cardTheme: CardTheme(
        // use the accent color and make it slightly brighter / darker
        color: Color.lerp(
          accent.withOpacity(.1),
          brightness == Brightness.dark
              ? Colors.white.withOpacity(.2)
              : Colors.black.withOpacity(.2),
          .1,
        ),
        shape: kDefaultShapeBorder,
        elevation: 0,
        margin: EdgeInsets.zero,
      ),
      snackBarTheme: SnackBarThemeData(
        backgroundColor: background,
        contentTextStyle: textTheme.subtitle2,
        actionTextColor: accent,
        disabledActionTextColor: accent.withOpacity(.5),
        shape: kDefaultShapeBorder,
        behavior: SnackBarBehavior.floating,
      ),
      iconTheme: IconThemeData(size: 20, color: primaryVariant),
      appBarTheme: AppBarTheme(
        color: background,
        elevation: 0,
      ),
    );
  }
}
