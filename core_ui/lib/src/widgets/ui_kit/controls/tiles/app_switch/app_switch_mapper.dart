import 'package:core_ui/core_ui.dart';
import 'package:core_ui/src/widgets/ui_kit/controls/tiles/app_switch/app_switch_style_enum.dart';

class AppSwitchMapper {
  static Color getEnableContentColor({
    required AppColorsTheme colors,
    required AppSwitchStyle style,
  }) {
    return switch (style) {
      AppSwitchStyle.primary => colors.onAccent,
    };
  }

  static Color getDisableContentColor({
    required AppColorsTheme colors,
    required AppSwitchStyle style,
  }) {
    return switch (style) {
      AppSwitchStyle.primary => colors.onPrimary,
    };
  }

  static Color getEnableBackgroundColor({
    required AppColorsTheme colors,
    required AppSwitchStyle style,
  }) {
    return switch (style) {
      AppSwitchStyle.primary => colors.secondary,
    };
  }

  static Color getDisableBackgroundColor({
    required AppColorsTheme colors,
    required AppSwitchStyle style,
  }) {
    return switch (style) {
      AppSwitchStyle.primary => colors.interactive.inactive,
    };
  }
}
