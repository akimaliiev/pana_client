import 'package:core_ui/core_ui.dart';
import 'package:core_ui/src/widgets/ui_kit/controls/buttons/app_text_button/app_text_button_mapper.dart';

export 'app_text_button_style_enum.dart';

class AppTextButton extends StatelessWidget {
  final AppTextButtonStyle style;
  final ElementState state;
  final String title;
  final Widget? prefix;
  final Widget? postfix;
  final bool isEnabled;
  final bool isExpanded;
  final VoidCallback onTap;

  final bool isCentered;

  const AppTextButton({
    required this.title,
    required this.onTap,
    this.style = AppTextButtonStyle.primary,
    this.state = ElementState.enabled,
    this.isEnabled = true,
    this.isExpanded = false,
    this.isCentered = true,
    this.prefix,
    this.postfix,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final AppColorsTheme colors = context.colors;

    final Color contentColor = AppTextButtonMapper.getContentColor(
      colors: colors,
      style: style,
    );

    return AbsorbPointer(
      absorbing: state == ElementState.loading,
      child: GestureDetector(
        onTap: state == ElementState.enabled ? onTap : null,
        behavior: HitTestBehavior.translucent,
        child: SizedBox(
          height: isExpanded ? AppDimens.defaultButtonHeight / 1.5 : null,
          child: Row(
            spacing: AppDimens.spacerSmall,
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: isCentered ? MainAxisAlignment.center : MainAxisAlignment.start,
            children: <Widget>[
              if (prefix != null) prefix!,
              Text(
                title,
                style: AppFonts.h4SFPro.copyWith(color: contentColor),
                overflow: TextOverflow.ellipsis,
              ),
              if (postfix != null) postfix!
            ],
          ),
        ),
      ),
    );
  }
}
