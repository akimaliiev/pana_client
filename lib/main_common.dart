import 'dart:async';
import 'dart:developer';

import 'package:core/core.dart';
import 'package:core_ui/core_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:navigation/navigation.dart';
import 'package:pana_client/app_bloc/widgets/toast_wrapper.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

Future<void> mainCommon(Flavor flavor) async {
  await runZonedGuarded<Future<void>>(
    () async {
      await dotenv.load();

      WidgetsFlutterBinding.ensureInitialized();
      await ScreenService.setPreferredOrientation();

      await configureDependencies(flavor: flavor);

      runApp(const App());
    },
    (Object error, StackTrace stack) {
      log('🔴 $error');

      Sentry.captureException(error, stackTrace: stack);
    },
  );
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final AppRouter appRouter = appLocator<AppRouter>();

    return DefaultAssetBundle(
      bundle: SentryAssetBundle(),
      child: MaterialApp.router(
        theme: context.theme,
        debugShowCheckedModeBanner: false,
        localizationsDelegates: AppLocalization.localizationsDelegates,
        supportedLocales: AppLocalizationConfig.supportedLocales,
        locale: AppLocalizationConfig.fallbackLocale,
        routerConfig: appRouter.config(
          navigatorObservers: () => <NavigatorObserver>[
            SentryNavigatorObserver(),
          ],
        ),
        builder: (BuildContext context, Widget? child) {
          final AppColorsTheme colors = context.colors;

          return AppBlocProvider(
            child: AnnotatedRegion<SystemUiOverlayStyle>(
              value: SystemUiOverlayStyle(systemNavigationBarColor: colors.primary),
              child: child ?? const SizedBox.shrink(),
            ),
          );
        },
      ),
    );
  }
}
