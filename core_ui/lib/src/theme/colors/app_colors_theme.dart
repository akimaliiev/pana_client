part of theme;

abstract class AppColorsTheme extends ThemeExtension<AppColorsTheme> {
  const AppColorsTheme();

  Color get primary;

  Color get secondary;

  Color get onPrimary;

  Color get accent;

  Color get onAccent;

  Color get success;

  Color get error;

  Color get shadow;

  AppBorderTheme get border;

  AppBackgroundTheme get background;

  AppTextTheme get text;

  AppStatusTheme get status;

  AppInteractiveTheme get interactive;

  @override
  ThemeExtension<AppColorsTheme> copyWith() => this;

  @override
  ThemeExtension<AppColorsTheme> lerp(covariant ThemeExtension<AppColorsTheme>? other, double t) =>
      this;
}

final class AppBorderTheme {
  Color get primary => AppColors.gray200;

  Color get accent => AppColors.orange500;

  Color get error => AppColors.red500;

  Color get success => AppColors.green500;

  Color get warning => AppColors.amber500;
}

final class AppBackgroundTheme {
  Color get primary => AppColors.white;

  Color get secondary => AppColors.gray50;

  Color get accent => AppColors.orange500;

  Color get error => AppColors.red200;

  Color get success => AppColors.green100;

  Color get warning => AppColors.amber100;

  Color get info => AppColors.blue100;

  Color get muted => AppColors.gray100;

  LinearGradient get primaryGradient => const LinearGradient(
        colors: <Color>[AppColors.red100, AppColors.white, AppColors.white, AppColors.yellow100],
        stops: <double>[0.0, 0.45, 0.55, 1.0],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      );

  LinearGradient get accentGradient => const LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: <Color>[AppColors.red500, AppColors.yellow500],
      );
}

final class AppTextTheme {
  Color get primary => AppColors.black;

  Color get accent => AppColors.orange500;

  Color get invertedPrimary => AppColors.white;

  Color get secondary => AppColors.gray600;

  Color get tertiary => AppColors.gray400;

  Color get hint => AppColors.gray500;

  Color get disabled => AppColors.gray300;

  Color get error => AppColors.red500;

  Color get success => AppColors.green500;

  Color get warning => AppColors.amber500;

  Color get info => AppColors.blue500;
}

final class AppStatusTheme {
  Color get success => AppColors.green500;

  Color get error => AppColors.red500;

  Color get warning => AppColors.amber500;

  Color get info => AppColors.blue500;

  Color get successBackground => AppColors.green100;

  Color get errorBackground => AppColors.red200;

  Color get warningBackground => AppColors.amber100;

  Color get infoBackground => AppColors.blue100;
}

final class AppInteractiveTheme {
  Color get active => AppColors.orange500;

  Color get inactive => AppColors.gray400;

  Color get inactiveAccent => AppColors.orange300;

  Color get hover => AppColors.orange700;

  Color get pressed => AppColors.orange700;

  Color get disabled => AppColors.gray300;

  Color get onActive => AppColors.white;

  Color get onInactive => AppColors.gray100;

  Color get onDisabled => AppColors.gray200;
}

class LightColorTheme extends AppColorsTheme {
  const LightColorTheme();

  @override
  Color get primary => AppColors.white;

  @override
  Color get secondary => AppColors.gray100;

  @override
  Color get onPrimary => AppColors.black;

  @override
  Color get accent => AppColors.orange500;

  @override
  Color get onAccent => AppColors.white;

  @override
  Color get error => AppColors.red500;

  @override
  Color get success => AppColors.green500;

  @override
  Color get shadow => AppColors.gray500;

  @override
  AppBorderTheme get border => AppBorderTheme();

  @override
  AppBackgroundTheme get background => AppBackgroundTheme();

  @override
  AppTextTheme get text => AppTextTheme();

  @override
  AppStatusTheme get status => AppStatusTheme();

  @override
  AppInteractiveTheme get interactive => AppInteractiveTheme();
}
