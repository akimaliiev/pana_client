import 'package:core_ui/core_ui.dart';

class AppOutlinedButtonMapper {
  static Color getBorderColor({
    required AppColorsTheme colors,
    required AppOutlinedButtonStyle style,
  }) {
    return switch (style) {
      AppOutlinedButtonStyle.primary => colors.accent,
    };
  }

  static Color getContentColor({
    required AppColorsTheme colors,
    required AppOutlinedButtonStyle style,
  }) {
    return switch (style) {
      AppOutlinedButtonStyle.primary => colors.accent,
    };
  }
}
