import 'package:auth/sign_in/bloc/sign_in_bloc.dart';
import 'package:auth/sign_in/screen/sign_in_content.dart';
import 'package:core/core.dart';
import 'package:core_ui/core_ui.dart';
import 'package:domain/domain.dart';
import 'package:navigation/navigation.dart';

@RoutePage()
class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final AppLocalization localization = context.localization;

    return BlocProvider<SignInBloc>(
      create: (_) => SignInBloc(
        localization: localization,
        appRouter: appLocator<AppRouter>(),
        appEventNotifier: appLocator<AppEventNotifier>(),
        authRepository: appLocator<AuthRepository>(),
      ),
      child: const SignInContent(),
    );
  }
}
