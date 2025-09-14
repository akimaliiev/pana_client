import 'package:core_ui/core_ui.dart';
import 'package:core_ui/src/widgets/ui_kit/controls/buttons/app_outlined_button/app_outlined_button_mapper.dart';

export 'app_outlined_button_style_enum.dart';

class AppOutlinedButton extends StatelessWidget {
  final AppOutlinedButtonStyle style;
  final ElementState state;
  final String title;
  final Widget? prefix;
  final Widget? postfix;
  final VoidCallback onTap;

  const AppOutlinedButton({
    required this.title,
    required this.onTap,
    this.style = AppOutlinedButtonStyle.primary,
    this.state = ElementState.enabled,
    this.prefix,
    this.postfix,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final AppColorsTheme colors = context.colors;

    final Color contentColor = AppOutlinedButtonMapper.getContentColor(
      colors: colors,
      style: style,
    );

    final Color borderColor = AppOutlinedButtonMapper.getBorderColor(
      colors: colors,
      style: style,
    );

    return AbsorbPointer(
      absorbing: state == ElementState.loading,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          foregroundColor: contentColor,
          disabledForegroundColor: colors.interactive.onInactive,
          side: BorderSide(color: borderColor),
        ),
        onPressed: state == ElementState.enabled ? onTap : null,
        child: SizedBox(
          height: AppDimens.defaultButtonHeight,
          child: Center(
            child: switch (state) {
              ElementState.loading => const AppLoadingIndicator(),
              _ => Row(
                  spacing: AppDimens.spacerSmall,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    if (prefix != null) prefix!,
                    Flexible(
                      child: Text(
                        title,
                        style: AppFonts.h3,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    if (postfix != null) postfix!
                  ],
                ),
            },
          ),
        ),
      ),
    );
  }
}
