import 'package:core_ui/core_ui.dart';

class AppTextButtonMapper {
  static Color getContentColor({
    required AppColorsTheme colors,
    required AppTextButtonStyle style,
  }) {
    return switch (style) {
      AppTextButtonStyle.primary => colors.text.primary,
    };
  }
}
