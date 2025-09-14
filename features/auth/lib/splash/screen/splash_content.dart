import 'package:core/core.dart';
import 'package:core_ui/core_ui.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({super.key});

  @override
  Widget build(BuildContext context) {
    final AppLocalization localization = context.localization;
    final AppColorsTheme colors = context.colors;

    return AppScaffold(
      hasScrollBody: false,
      hasAppBar: false,
      backgroundGradient: colors.background.primaryGradient,
      content: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            AppIcons.logo.call(size: 280),
            const SizedBox(height: AppDimens.spacerExtraLarge),
            Text(localization.common_appName, style: AppFonts.h1.copyWith(fontWeight: FontWeight.bold)),
            const SizedBox(height: AppDimens.spacerSmall),
            Text(
              localization.splash_subtitle,
              style: AppFonts.h3.copyWith(color: colors.text.secondary),
            ),
          ],
        ),
      ),
    );
  }
}
