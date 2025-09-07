import 'package:core_ui/core_ui.dart';

class AppIconButtonMapper {
  static Color getContentColor({
    required AppColorsTheme colors,
    required AppIconButtonStyle style,
  }) {
    return switch (style) {
      AppIconButtonStyle.primary => colors.primary,
      AppIconButtonStyle.secondary => colors.text.tertiary,
      AppIconButtonStyle.active => colors.accent,
      AppIconButtonStyle.inactive => colors.onPrimary,
      AppIconButtonStyle.accent => colors.onAccent,
    };
  }

  static Color getBackgroundColor({
    required AppColorsTheme colors,
    required AppIconButtonStyle style,
  }) {
    return switch (style) {
      AppIconButtonStyle.primary => colors.onPrimary,
      AppIconButtonStyle.secondary => colors.background.secondary,
      AppIconButtonStyle.active => colors.primary,
      AppIconButtonStyle.inactive => colors.primary,
      AppIconButtonStyle.accent => colors.accent,
    };
  }
}
