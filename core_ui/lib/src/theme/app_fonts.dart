part of theme;

abstract final class AppFonts {
  static const String _sfProFamily = 'SF Pro';

  static const TextStyle base = TextStyle(
    height: 1.5,
    fontFamily: _sfProFamily,
    fontWeight: FontWeight.w500,
    package: kPackageName,
  );

  static const double fontSize32 = 32.0;
  static const double fontSize24 = 24.0;
  static const double fontSize20 = 20.0;
  static const double fontSize16 = 16.0;
  static const double fontSize14 = 14.0;
  static const double fontSize12 = 12.0;

  static const TextStyle h1SFPro = TextStyle(
    fontSize: fontSize32,
    fontFamily: _sfProFamily,
    fontWeight: FontWeight.w900,
    package: kPackageName,
  );

  static const TextStyle h2SFPro = TextStyle(
    fontSize: fontSize24,
    fontFamily: _sfProFamily,
    fontWeight: FontWeight.w900,
    package: kPackageName,
  );

  static const TextStyle h3SFPro = TextStyle(
    fontSize: fontSize20,
    fontFamily: _sfProFamily,
    fontWeight: FontWeight.w700,
    package: kPackageName,
  );

  static const TextStyle h4SFPro = TextStyle(
    fontSize: fontSize16,
    fontFamily: _sfProFamily,
    fontWeight: FontWeight.w600,
    package: kPackageName,
  );

  static const TextStyle h5SFPro = TextStyle(
    fontSize: fontSize14,
    fontFamily: _sfProFamily,
    fontWeight: FontWeight.w500,
    package: kPackageName,
  );

  static const TextStyle h6SFPro = TextStyle(
    fontSize: fontSize12,
    fontFamily: _sfProFamily,
    fontWeight: FontWeight.w500,
    package: kPackageName,
  );

  static const TextStyle caption = TextStyle(
    fontSize: fontSize12,
    fontFamily: _sfProFamily,
    fontWeight: FontWeight.w500,
    package: kPackageName,
  );
}
