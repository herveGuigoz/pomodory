part of 'theme.dart';

abstract class PomodoroThemeData {
  TextTheme get textTheme;
  double get backgroundLuminance;
  Color get accent;
  // Color get backgroundLight;
  Color get backgroundLightest;
  Color get foreground;
  Color get foregroundDarker;
  // Color get foregroundDarkest;
  Color get error;
  Color get background;

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
        primary: accent,
        primaryVariant: backgroundLightest, // todo
        secondary: backgroundLightest,
        secondaryVariant: foregroundDarker,
        surface: backgroundLightest, // todo
        background: background,
        error: error,
        onPrimary: backgroundLightest, // todo
        onSecondary: backgroundLightest, // todo
        onSurface: backgroundLightest, // todo
        onBackground: backgroundLightest, // todo
        onError: backgroundLightest, // todo
        brightness: brightness,
      ),
      primaryColor: accent,
      accentColor: accent,
      buttonColor: backgroundLightest,
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
      iconTheme: IconThemeData(size: 20, color: backgroundLightest),
      appBarTheme: AppBarTheme(
        color: background,
        elevation: 0,
      ),
      buttonTheme: ButtonThemeData(
        buttonColor: backgroundLightest,
      ),
    );
  }
}
