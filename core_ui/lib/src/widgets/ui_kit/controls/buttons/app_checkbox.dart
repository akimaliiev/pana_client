import 'package:core_ui/core_ui.dart';

class AppCheckbox extends StatelessWidget {
  final Widget child;
  final bool value;
  final bool hasError;
  final ValueChanged<bool> onChanged;

  const AppCheckbox({
    super.key,
    required this.child,
    required this.value,
    required this.onChanged,
    this.hasError = false,
  });

  @override
  Widget build(BuildContext context) {
    final AppColorsTheme colors = context.colors;

    return GestureDetector(
      onTap: () => onChanged(!value),
      behavior: HitTestBehavior.opaque,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Checkbox(
            value: value,
            splashRadius: 0,
            checkColor: hasError ? colors.error : colors.background.primary,
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            fillColor: WidgetStateProperty.resolveWith<Color>(
              (Set<WidgetState> states) {
                if (states.contains(WidgetState.selected)) {
                  return hasError ? colors.background.error : colors.background.accent;
                }

                return colors.background.primary;
              },
            ),
            side: BorderSide(
              width: hasError ? AppDimens.defaultBorderWidth * 2 : AppDimens.defaultBorderWidth,
              color: hasError ? colors.error : colors.border.accent,
            ),
            onChanged: (bool? value) {
              if (value != null) onChanged(value);
            },
          ),
          Flexible(
            child: DefaultTextStyle(
              style: AppFonts.h4.copyWith(
                color: hasError ? colors.text.error : colors.text.primary,
              ),
              child: child,
            ),
          ),
        ],
      ),
    );
  }
}
