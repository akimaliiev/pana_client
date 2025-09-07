import 'package:core_ui/core_ui.dart';

class AppElevatedButtonMapper {
  static Color getBackgroundColor({
    required AppColorsTheme colors,
    required AppElevatedButtonStyle style,
  }) {
    return switch (style) {
      AppElevatedButtonStyle.primary => colors.accent,
    };
  }

  static Color getContentColor({
    required AppColorsTheme colors,
    required AppElevatedButtonStyle style,
  }) {
    return switch (style) {
      AppElevatedButtonStyle.primary => colors.onAccent,
    };
  }

  static Color getInactiveBackgroundColor({
    required AppColorsTheme colors,
    required AppElevatedButtonStyle style,
  }) {
    return switch (style) {
      AppElevatedButtonStyle.primary => colors.interactive.inactive,
    };
  }

  static Color getInactiveContentColor({
    required AppColorsTheme colors,
    required AppElevatedButtonStyle style,
  }) {
    return switch (style) {
      AppElevatedButtonStyle.primary => colors.interactive.onInactive,
    };
  }

  static Color getShadowColor({
    required AppColorsTheme colors,
    required AppElevatedButtonStyle style,
  }) {
    return switch (style) {
      AppElevatedButtonStyle.primary => colors.shadow,
    };
  }
}
