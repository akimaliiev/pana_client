import 'package:core_ui/core_ui.dart';

abstract final class ToastMapper {
  static Color getBackgroundColor({
    required ToastType type,
    required AppColorsTheme colors,
  }) =>
      switch (type) {
        ToastType.success => colors.success,
        ToastType.error => colors.error,
      };
}
