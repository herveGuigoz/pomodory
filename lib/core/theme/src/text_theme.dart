part of 'theme.dart';

mixin PomodoroTextTheme {
  static const String sfPro = 'SFProDisplay';
  static const double titleFontSize = 14;

  Color get textColor;

  TextTheme get textTheme =>
      Typography.englishLike2018.apply(fontFamily: sfPro).copyWith(
            // headline
            headline1: TextStyle(
              fontSize: titleFontSize,
              letterSpacing: 6,
              fontFamily: sfPro,
              fontWeight: FontWeight.normal,
              color: textColor,
            ),
            headline2: TextStyle(
              fontSize: titleFontSize,
              letterSpacing: 2,
              fontFamily: sfPro,
              fontWeight: FontWeight.normal,
              color: textColor,
            ),
            headline3: TextStyle(
              fontSize: titleFontSize,
              fontFamily: sfPro,
              fontWeight: FontWeight.normal,
              color: textColor,
            ),
            headline4: TextStyle(
              fontSize: titleFontSize,
              letterSpacing: 2,
              fontFamily: sfPro,
              fontWeight: FontWeight.normal,
              color: textColor.withOpacity(0.8),
            ),
            headline6: TextStyle(
              fontSize: titleFontSize,
              letterSpacing: 2,
              fontFamily: sfPro,
              fontWeight: FontWeight.normal,
              color: textColor,
            ),

            // subtitle
            subtitle1: TextStyle(
              letterSpacing: 1,
              fontFamily: sfPro,
              fontWeight: FontWeight.w200,
              color: textColor.withOpacity(0.9),
            ),
            subtitle2: TextStyle(
              height: 1.1,
              fontSize: 16,
              fontFamily: sfPro,
              fontWeight: FontWeight.normal,
              fontStyle: FontStyle.italic,
              color: textColor,
            ),

            // body
            bodyText2: const TextStyle(
              fontSize: 16,
              fontFamily: sfPro,
            ),
            bodyText1: TextStyle(
              fontSize: 14,
              fontFamily: sfPro,
              color: textColor.withOpacity(0.7),
            ),

            button: TextStyle(
              fontSize: 16,
              letterSpacing: 1.2,
              fontFamily: sfPro,
              color: textColor,
            ),
          );
}
