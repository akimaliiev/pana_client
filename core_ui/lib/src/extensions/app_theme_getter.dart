part of extensions;

extension AppThemeGetter on BuildContext {
  ThemeData get theme => AppTheme.of(this).theme;

  AppColorsTheme get colors => AppTheme.of(this).colors;
}
