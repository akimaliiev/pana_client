import 'package:core_ui/core_ui.dart';
import 'package:core_ui/src/widgets/ui_kit/controls/tiles/app_switch/app_switch.dart';

class AppSwitchableTileMapper {
  static AppSwitchStyle getSwitchStyle({
    required AppColorsTheme colors,
    required AppSwitchableTileStyle style,
  }) {
    return switch (style) {
      AppSwitchableTileStyle.primary => AppSwitchStyle.primary,
    };
  }
}
