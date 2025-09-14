import 'package:core_ui/core_ui.dart';
import 'package:core_ui/src/widgets/ui_kit/inputs/app_text_field/app_text_field_style_enum.dart';

class AppTextFieldMapper {
  static Color getContentColor({
    required AppColorsTheme colors,
    required AppTextFieldStyle style,
  }) {
    return switch (style) {
      AppTextFieldStyle.primary => colors.onPrimary,
    };
  }

  static Color getBackgroundColor({
    required AppColorsTheme colors,
    required AppTextFieldStyle style,
  }) {
    return switch (style) {
      AppTextFieldStyle.primary => colors.primary,
    };
  }

  static Color getBorderColor({
    required AppColorsTheme colors,
    required AppTextFieldStyle style,
  }) {
    return switch (style) {
      AppTextFieldStyle.primary => colors.border.primary,
    };
  }

  static Color getActiveBorderColor({
    required AppColorsTheme colors,
    required AppTextFieldStyle style,
  }) {
    return switch (style) {
      AppTextFieldStyle.primary => colors.border.accent,
    };
  }
}
