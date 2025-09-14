import 'package:core_ui/core_ui.dart';

class AppElevatedButtonMapper {
  static Color getBackgroundColor({
    required AppColorsTheme colors,
    required AppElevatedButtonStyle style,
  }) {
    return switch (style) {
      AppElevatedButtonStyle.primary => colors.background.primary,
      AppElevatedButtonStyle.accent => colors.background.accent,
    };
  }

  static Color getContentColor({
    required AppColorsTheme colors,
    required AppElevatedButtonStyle style,
  }) {
    return switch (style) {
      AppElevatedButtonStyle.primary => colors.text.primary,
      AppElevatedButtonStyle.accent => colors.text.invertedPrimary,
    };
  }
}
