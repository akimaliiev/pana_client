import 'package:core_ui/core_ui.dart';
import 'package:core_ui/src/widgets/ui_kit/controls/tiles/app_switch/app_switch.dart';
import 'package:core_ui/src/widgets/ui_kit/controls/tiles/app_switchable_tile/app_switchable_tile_mapper.dart';

export 'package:core_ui/src/widgets/ui_kit/controls/tiles/app_switchable_tile/app_switchable_tile_style_enum.dart';

class AppSwitchableTile extends StatelessWidget {
  final AppSwitchableTileStyle style;
  final ElementState state;
  final String? title;
  final String content;
  final bool value;
  final ValueChanged<bool> onChange;

  const AppSwitchableTile({
    required this.onChange,
    required this.content,
    this.style = AppSwitchableTileStyle.primary,
    this.state = ElementState.enabled,
    this.value = false,
    this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final AppColorsTheme colors = context.colors;

    final AppSwitchStyle appSwitchStyle = AppSwitchableTileMapper.getSwitchStyle(
      colors: colors,
      style: style,
    );

    return Column(
      spacing: AppDimens.spacerExtraSmall,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        if (title != null)
          Text(
            title ?? '',
            style: AppFonts.h5SFPro,
          ),
        Container(
          padding: const EdgeInsets.symmetric(
            vertical: AppDimens.spacerExtraSmall,
            horizontal: AppDimens.spacerLarge,
          ),
          decoration: BoxDecoration(
            color: colors.onPrimary,
            borderRadius: BorderRadius.circular(AppDimens.borderRadiusLarge),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                content,
                style: AppFonts.h4SFPro.copyWith(color: colors.primary),
              ),
              AppSwitch(
                style: appSwitchStyle,
                state: state,
                value: value,
                onChange: onChange,
              ),
            ],
          ),
        )
      ],
    );
  }
}
