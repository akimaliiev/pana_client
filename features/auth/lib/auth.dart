library auth;

import 'package:navigation/navigation.dart';

export 'auth.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page|Screen|Popup|BottomSheet|Dialog|Drawer,Route')
class AuthRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => <AutoRoute>[
        AutoRoute(
          page: SplashRoute.page,
          initial: true,
        ),
        AutoRoute(page: AuthRoute.page),
        AutoRoute(page: SignInRoute.page),
        AutoRoute(page: SignUpRoute.page),
      ];
}
