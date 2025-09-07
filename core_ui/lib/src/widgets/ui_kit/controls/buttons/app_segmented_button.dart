import 'package:core_ui/core_ui.dart';
import 'package:flutter/cupertino.dart';

class AppSegmentedButton<T extends Enum> extends StatelessWidget {
  final T? selectedValue;
  final List<T> values;
  final ValueChanged<T> onChange;
  final String Function(T) nameBuilder;
  final Widget Function(T) iconBuilder;

  const AppSegmentedButton({
    required this.onChange,
    required this.selectedValue,
    required this.values,
    required this.nameBuilder,
    required this.iconBuilder,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final AppColorsTheme colors = context.colors;

    final Map<T, Widget> children = <T, Widget>{
      for (final T value in values)
        value: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            iconBuilder(value),
            if (value == selectedValue) ...<Widget>[
              const SizedBox(width: AppDimens.spacerExtraSmall),
              Text(
                nameBuilder(value),
                style: AppFonts.h6SFPro.copyWith(
                  color: colors.accent,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ],
        ),
    };

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(2),
      decoration: BoxDecoration(
        color: colors.primary,
        borderRadius: BorderRadius.circular(AppDimens.borderRadiusSmallest),
        border: Border.all(
          color: colors.border.primary,
          width: AppDimens.defaultBorderWidth,
        ),
      ),
      child: CupertinoSlidingSegmentedControl<T>(
        onValueChanged: (T? value) => onChange(value!),
        groupValue: selectedValue,
        children: children,
        backgroundColor: colors.primary,
        thumbColor: colors.secondary,
        padding: const EdgeInsets.all(AppDimens.spacerExtraSmall),
      ),
    );
  }
}
