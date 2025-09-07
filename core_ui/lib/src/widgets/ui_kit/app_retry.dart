import 'package:core/core.dart';
import 'package:core_ui/core_ui.dart';

class AppRetry extends StatelessWidget {
  final String? message;
  final VoidCallback? onTap;

  const AppRetry({
    this.message,
    this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final AppLocalization localization = context.localization;
    final AppColorsTheme colors = context.colors;

    return Center(
      child: Column(
        spacing: AppDimens.spacerSmall,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          if (onTap != null)
            IconButton(
              onPressed: onTap,
              icon: const Icon(
                Icons.refresh,
                size: AppDimens.iconSizeLarge,
              ),
            ),
          Text(
            message ?? localization.errors_core_unknown,
            style: AppFonts.h4SFPro.copyWith(color: colors.onPrimary),
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
          ),
        ],
      ),
    );
  }
}
