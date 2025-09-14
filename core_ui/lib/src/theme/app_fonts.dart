part of theme;

abstract final class AppFonts {
  static const String _helveticaFamily = 'Helvetica';

  static const TextStyle base = TextStyle(
    height: 1.5,
    fontFamily: _helveticaFamily,
    fontWeight: FontWeight.w500,
    package: kPackageName,
  );

  static const double fontSize32 = 32.0;
  static const double fontSize24 = 24.0;
  static const double fontSize20 = 20.0;
  static const double fontSize16 = 16.0;
  static const double fontSize14 = 14.0;
  static const double fontSize12 = 12.0;

  static const TextStyle h1 = TextStyle(
    fontSize: fontSize32,
    fontFamily: _helveticaFamily,
    fontWeight: FontWeight.w900,
    package: kPackageName,
  );

  static const TextStyle h2 = TextStyle(
    fontSize: fontSize24,
    fontFamily: _helveticaFamily,
    fontWeight: FontWeight.w900,
    package: kPackageName,
  );

  static const TextStyle h3 = TextStyle(
    fontSize: fontSize20,
    fontFamily: _helveticaFamily,
    fontWeight: FontWeight.w600,
    package: kPackageName,
  );

  static const TextStyle h4 = TextStyle(
    fontSize: fontSize16,
    fontFamily: _helveticaFamily,
    fontWeight: FontWeight.w600,
    package: kPackageName,
  );

  static const TextStyle h5 = TextStyle(
    fontSize: fontSize14,
    fontFamily: _helveticaFamily,
    fontWeight: FontWeight.w600,
    package: kPackageName,
  );

  static const TextStyle h6 = TextStyle(
    fontSize: fontSize12,
    fontFamily: _helveticaFamily,
    fontWeight: FontWeight.w600,
    package: kPackageName,
  );
}
