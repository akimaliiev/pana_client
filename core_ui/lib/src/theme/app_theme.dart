part of theme;

abstract class AppTheme {
  factory AppTheme.of(BuildContext context) {
    final Brightness brightness = Theme.of(context).brightness;

    final AppTheme result = brightness == Brightness.light ? const LightTheme() : const DarkTheme();

    return result;
  }

  ThemeData get theme;

  AppColorsTheme get colors;
}

class LightTheme implements AppTheme {
  const LightTheme();

  @override
  ThemeData get theme {
    return ThemeData(
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      brightness: Brightness.light,
      primaryColor: colors.primary,
      scaffoldBackgroundColor: colors.primary,
      cardColor: colors.onPrimary,
      appBarTheme: AppBarTheme(
        backgroundColor: colors.primary,
        iconTheme: IconThemeData(color: colors.onPrimary),
        titleTextStyle: TextStyle(
          color: colors.onPrimary,
          fontSize: 20,
          fontWeight: FontWeight.bold,
          fontFamily: 'SF Pro Display',
        ),
      ),
      buttonTheme: ButtonThemeData(
        buttonColor: colors.accent,
        textTheme: ButtonTextTheme.primary,
      ),
      colorScheme: ColorScheme.light(
        primary: colors.primary,
        secondary: colors.secondary,
        surface: colors.onPrimary,
        error: colors.error,
        onPrimary: colors.onPrimary,
        onSecondary: colors.onPrimary,
        onError: colors.onPrimary,
      ),
    );
  }

  @override
  AppColorsTheme get colors => const LightColorTheme();
}

class DarkTheme extends LightTheme {
  const DarkTheme();
}
