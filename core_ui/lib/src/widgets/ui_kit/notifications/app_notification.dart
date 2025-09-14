import 'package:core_ui/core_ui.dart';

class AppNotification extends StatelessWidget {
  final String title;
  final String description;

  const AppNotification({
    required this.title,
    this.description = '',
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final AppColorsTheme colors = context.colors;

    return Container(
      padding: const EdgeInsets.all(AppDimens.spacerMedium),
      decoration: BoxDecoration(
        color: colors.background.error.withAlpha(25),
        borderRadius: BorderRadius.circular(AppDimens.borderRadiusSmallest),
        border: Border.all(color: colors.border.error),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const AppIcon.data(LucideIcons.messageCircleWarning).call(),
          const SizedBox(width: AppDimens.spacerSmall),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  title,
                  style: AppFonts.h4.copyWith(color: colors.text.error),
                ),
                if (description.isNotEmpty) ...<Widget>[
                  const SizedBox(height: AppDimens.spacerExtraSmall),
                  Text(
                    description,
                    style: AppFonts.h5.copyWith(color: colors.text.error),
                  ),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }
}
