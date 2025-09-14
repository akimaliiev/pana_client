import 'package:navigation/navigation.dart';

@AutoRouterConfig(replaceInRouteName: 'Page|Screen|Popup|BottomSheet|Dialog|Drawer,Route')
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => <AutoRoute>[
        ...AuthRouter().routes,
      ];

  Future<void> navigateBack([Object? result]) => maybePop(result);

  Future<void> navigateSignIn({bool useReplace = false}) async {
    useReplace ? await replace(const SignInRoute()) : await push(const SignInRoute());
  }

  Future<void> navigateAuth() async {
    await replaceAll(<PageRouteInfo<Object?>>[const AuthRoute()]);
  }

  Future<void> navigateSignUp({bool useReplace = false}) async {
    useReplace ? await replace(const SignUpRoute()) : await push(const SignUpRoute());
  }

  Future<void> navigatePrivacy() {
    //TODO(Denis): Implement method
    return Future.value();
  }

  Future<void> navigateUsageRules() {
    //TODO(Denis): Implement method
    return Future.value();
  }

  Future<void> navigateMain() {
    //TODO(Denis): Implement method
    return Future.value();
  }
}
