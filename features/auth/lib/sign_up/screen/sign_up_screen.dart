import 'package:auth/sign_up/bloc/sign_up_bloc.dart';
import 'package:auth/sign_up/screen/sign_up_content.dart';
import 'package:core/core.dart';
import 'package:core_ui/core_ui.dart';
import 'package:domain/domain.dart';
import 'package:navigation/navigation.dart';

@RoutePage()
class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final AppLocalization localization = context.localization;

    return BlocProvider<SignUpBloc>(
      create: (_) => SignUpBloc(
        localization: localization,
        appRouter: appLocator<AppRouter>(),
        appEventNotifier: appLocator<AppEventNotifier>(),
        authRepository: appLocator<AuthRepository>(),
      ),
      child: const SignUpContent(),
    );
  }
}
