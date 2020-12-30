part of 'theme.dart';

mixin PomodoroTextTheme {
  static const String roboto = 'RobotoMono';
  static const String lato = 'Lato';
  static const FontWeight latoFontWeight = FontWeight.w400;
  static const double titleFontSize = 14;

  Color get textColor;

  TextTheme get textTheme =>
      Typography.englishLike2018.apply(fontFamily: lato).copyWith(
            // headline
            headline1: TextStyle(
              fontSize: titleFontSize,
              letterSpacing: 6,
              fontFamily: lato,
              fontWeight: latoFontWeight,
              color: textColor,
              fontFamilyFallback: const <String>['Lato'],
            ),
            headline2: TextStyle(
              fontSize: titleFontSize,
              letterSpacing: 2,
              fontFamily: lato,
              fontWeight: latoFontWeight,
              color: textColor,
              fontFamilyFallback: const <String>['Lato'],
            ),
            headline3: TextStyle(
              fontSize: titleFontSize,
              fontFamily: lato,
              fontWeight: latoFontWeight,
              color: textColor,
              fontFamilyFallback: const <String>['Lato'],
            ),
            headline4: TextStyle(
              fontSize: titleFontSize,
              letterSpacing: 2,
              fontFamily: lato,
              fontWeight: latoFontWeight,
              color: textColor.withOpacity(0.8),
              fontFamilyFallback: const <String>['Lato'],
            ),
            headline6: TextStyle(
              fontSize: titleFontSize,
              letterSpacing: 2,
              fontFamily: lato,
              fontWeight: latoFontWeight,
              color: textColor,
              fontFamilyFallback: const <String>['Lato'],
            ),

            // subtitle
            subtitle1: TextStyle(
              letterSpacing: 1,
              fontFamily: lato,
              fontWeight: latoFontWeight,
              color: textColor.withOpacity(0.9),
              fontFamilyFallback: const <String>['Lato'],
            ),
            subtitle2: TextStyle(
              height: 1.1,
              fontSize: 16,
              fontFamily: lato,
              fontWeight: latoFontWeight,
              color: textColor,
              fontFamilyFallback: const <String>['Lato'],
            ),

            // body
            bodyText2: const TextStyle(
              fontSize: 16,
              fontFamily: lato,
              fontFamilyFallback: <String>['Lato'],
            ),
            bodyText1: TextStyle(
              fontSize: 14,
              fontFamily: lato,
              color: textColor.withOpacity(0.7),
              fontFamilyFallback: const <String>['Lato'],
            ),

            button: TextStyle(
              fontSize: 16,
              letterSpacing: 1.2,
              fontFamily: lato,
              color: textColor,
              fontFamilyFallback: const <String>['Lato'],
            ),
          );
}
