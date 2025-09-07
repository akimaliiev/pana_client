import 'package:core_ui/core_ui.dart';
import 'package:core_ui/src/widgets/ui_kit/controls/buttons/app_icon_button/app_icon_button_mapper.dart';

export 'app_icon_button_style_enum.dart';

class AppIconButton extends StatelessWidget {
  final AppIconButtonStyle style;
  final ElementState state;
  final AppIcon icon;
  final String title;
  final bool hasBackground;
  final Color? contentColor;
  final double? iconSize;
  final double? buttonSize;
  final VoidCallback onTap;

  const AppIconButton({
    required this.icon,
    required this.onTap,
    this.style = AppIconButtonStyle.primary,
    this.state = ElementState.enabled,
    this.hasBackground = true,
    this.title = '',
    this.contentColor,
    this.iconSize,
    this.buttonSize,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final AppColorsTheme colors = context.colors;

    final Color contentColor = AppIconButtonMapper.getContentColor(
      colors: colors,
      style: style,
    );

    final Color backgroundColor = AppIconButtonMapper.getBackgroundColor(
      colors: colors,
      style: style,
    );

    return AbsorbPointer(
      absorbing: state == ElementState.loading,
      child: GestureDetector(
        onTap: state == ElementState.enabled ? onTap : null,
        child: Column(
          children: <Widget>[
            Container(
              height: buttonSize ??
                  (title.isNotEmpty
                      ? AppDimens.defaultButtonHeight
                      : AppDimens.defaultButtonHeight / 1.5),
              width: buttonSize ??
                  (title.isNotEmpty
                      ? AppDimens.defaultButtonHeight
                      : AppDimens.defaultButtonHeight / 1.5),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: hasBackground ? backgroundColor : null,
              ),
              child: Center(
                child: switch (state) {
                  ElementState.loading => const AppLoadingIndicator(),
                  _ => icon.call(
                      color: this.contentColor ?? contentColor,
                      size: iconSize ?? AppDimens.iconSizeMedium,
                    ),
                },
              ),
            ),
            if (title.isNotEmpty)
              Text(
                title,
                style: AppFonts.h5SFPro.copyWith(color: contentColor),
              ),
          ],
        ),
      ),
    );
  }
}
