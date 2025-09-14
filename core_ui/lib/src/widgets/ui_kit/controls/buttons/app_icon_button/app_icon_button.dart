import 'package:core_ui/core_ui.dart';
import 'package:core_ui/src/widgets/ui_kit/controls/buttons/app_icon_button/app_icon_button_mapper.dart';

export 'app_icon_button_style_enum.dart';

enum AppIconButtonTitlePosition {
  bottom,
  right,
}

class AppIconButton extends StatelessWidget {
  final AppIconButtonStyle style;
  final ElementState state;
  final IconData icon;
  final String title;
  final bool hasBackground;
  final Color? contentColor;
  final double? iconSize;
  final double? buttonSize;
  final VoidCallback onTap;
  final AppIconButtonTitlePosition titlePosition;

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
    this.titlePosition = AppIconButtonTitlePosition.bottom,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final AppColorsTheme colors = context.colors;

    final Color styleContentColor = AppIconButtonMapper.getContentColor(
      colors: colors,
      style: style,
    );

    final Color backgroundColor = AppIconButtonMapper.getBackgroundColor(
      colors: colors,
      style: style,
    );

    final Widget iconWidget = Container(
      height: buttonSize ??
          (title.isNotEmpty
              ? AppDimens.defaultButtonHeight / 1.5
              : AppDimens.defaultButtonHeight / 2),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: hasBackground ? backgroundColor : null,
      ),
      child: Center(
        child: switch (state) {
          ElementState.loading => const AppLoadingIndicator(),
          _ => Icon(
              icon,
              size: iconSize ?? AppDimens.iconSizeMedium,
              color: contentColor ?? styleContentColor,
            ),
        },
      ),
    );

    final Widget titleWidget = title.isNotEmpty
        ? Text(
            title,
            style: AppFonts.h5.copyWith(color: styleContentColor),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          )
        : const SizedBox.shrink();

    Widget layout;
    if (titlePosition == AppIconButtonTitlePosition.right && title.isNotEmpty) {
      layout = Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          iconWidget,
          const SizedBox(width: AppDimens.spacerSmall),
          Flexible(child: titleWidget),
        ],
      );
    } else {
      layout = Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          iconWidget,
          if (title.isNotEmpty)
            Padding(
              padding: const EdgeInsets.only(top: AppDimens.spacerExtraSmall),
              child: titleWidget,
            ),
        ],
      );
    }

    return AbsorbPointer(
      absorbing: state == ElementState.loading,
      child: GestureDetector(
        onTap: state == ElementState.enabled ? onTap : null,
        child: Container(
          color: Colors.transparent,
          child: layout,
        ),
      ),
    );
  }
}
