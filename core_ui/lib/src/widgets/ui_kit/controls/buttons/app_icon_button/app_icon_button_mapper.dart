import 'package:core_ui/core_ui.dart';

class AppIconButtonMapper {
  static Color getContentColor({
    required AppColorsTheme colors,
    required AppIconButtonStyle style,
  }) {
    return switch (style) {
      AppIconButtonStyle.primary => colors.text.primary,
    };
  }

  static Color getBackgroundColor({
    required AppColorsTheme colors,
    required AppIconButtonStyle style,
  }) {
    return switch (style) {
      AppIconButtonStyle.primary => colors.background.primary,
    };
  }
}
