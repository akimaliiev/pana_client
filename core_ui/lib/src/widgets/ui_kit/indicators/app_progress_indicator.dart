import 'package:core_ui/core_ui.dart';

class AppProgressIndicator extends StatelessWidget {
  final Color? color;
  final double? size;
  final double value;

  const AppProgressIndicator({
    required this.value,
    this.size,
    this.color,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final AppColorsTheme colors = context.colors;

    return Center(
      child: SizedBox.square(
        dimension: size ?? AppDimens.defaultButtonHeight / 1.5,
        child: CircularProgressIndicator(
          value: value,
          strokeWidth: AppDimens.defaultBorderWidth,
          strokeCap: StrokeCap.round,
          color: color ?? colors.onPrimary,
        ),
      ),
    );
  }
}
