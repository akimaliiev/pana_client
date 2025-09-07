import 'package:core_ui/core_ui.dart';
import 'package:core_ui/src/widgets/ui_kit/controls/tiles/app_switch/app_switch.dart';
import 'package:core_ui/src/widgets/ui_kit/controls/tiles/app_switch/app_switch_mapper.dart';

export 'app_switch_style_enum.dart';

class AppSwitch extends StatelessWidget {
  final AppSwitchStyle style;
  final ElementState state;
  final bool value;
  final ValueChanged<bool> onChange;

  const AppSwitch({
    required this.onChange,
    this.style = AppSwitchStyle.primary,
    this.state = ElementState.enabled,
    this.value = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final AppColorsTheme colors = context.colors;

    final Color disabledContentColor = AppSwitchMapper.getDisableContentColor(
      colors: colors,
      style: style,
    );

    final Color enableContentColor = AppSwitchMapper.getEnableContentColor(
      colors: colors,
      style: style,
    );

    final Color disabledBackgroundColor = AppSwitchMapper.getDisableBackgroundColor(
      colors: colors,
      style: style,
    );

    final Color enableBackgroundColor = AppSwitchMapper.getEnableBackgroundColor(
      colors: colors,
      style: style,
    );

    return switch (state) {
      ElementState.loading => const AppLoadingIndicator(),
      _ => Switch(
          padding: EdgeInsets.zero,
          value: value,
          onChanged: state == ElementState.enabled ? onChange : null,
          activeThumbColor: enableContentColor,
          activeTrackColor: enableBackgroundColor,
          inactiveThumbColor: disabledContentColor,
          inactiveTrackColor: disabledBackgroundColor,
        ),
    };
  }
}
