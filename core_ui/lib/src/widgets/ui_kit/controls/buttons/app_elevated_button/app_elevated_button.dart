import 'package:core_ui/core_ui.dart';
import 'package:core_ui/src/widgets/ui_kit/controls/buttons/app_elevated_button/app_elevated_button_mapper.dart';

export 'app_elevated_button_style_enum.dart';

class AppElevatedButton extends StatelessWidget {
  final AppElevatedButtonStyle style;
  final ElementState state;
  final String title;
  final Widget? prefix;
  final Widget? postfix;
  final VoidCallback onTap;
  final EdgeInsetsGeometry? padding;

  final TextStyle? titleStyle;

  final bool isCentered;

  const AppElevatedButton({
    required this.title,
    required this.onTap,
    this.style = AppElevatedButtonStyle.primary,
    this.state = ElementState.enabled,
    this.isCentered = true,
    this.titleStyle,
    this.padding,
    this.prefix,
    this.postfix,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final AppColorsTheme colors = context.colors;

    final Color contentColor = AppElevatedButtonMapper.getContentColor(
      colors: colors,
      style: style,
    );

    final Color backgroundColor = AppElevatedButtonMapper.getBackgroundColor(
      colors: colors,
      style: style,
    );

    return AbsorbPointer(
      absorbing: state == ElementState.loading,
      child: FilledButton(
        style: FilledButton.styleFrom(
          padding: padding,
          foregroundColor: contentColor,
          backgroundColor: backgroundColor,
          disabledForegroundColor: colors.interactive.onInactive,
          disabledBackgroundColor: colors.interactive.inactive,
          elevation: 5,
          shadowColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppDimens.borderRadiusSmallest),
            side: BorderSide(color: colors.border.primary),
          ),
        ),
        onPressed: state == ElementState.enabled ? onTap : null,
        child: SizedBox(
          height: AppDimens.defaultButtonHeight,
          child: Center(
            child: switch (state) {
              ElementState.loading => const AppLoadingIndicator(),
              _ => Row(
                  spacing: AppDimens.spacerSmall,
                  mainAxisAlignment:
                      isCentered ? MainAxisAlignment.center : MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    if (prefix != null) prefix!,
                    Flexible(
                      child: Text(
                        title,
                        overflow: TextOverflow.ellipsis,
                        style: titleStyle ?? AppFonts.h5,
                      ),
                    ),
                    if (postfix != null) postfix!,
                  ],
                ),
            },
          ),
        ),
      ),
    );
  }
}
