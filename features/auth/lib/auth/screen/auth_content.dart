import 'package:auth/auth/bloc/auth_bloc.dart';
import 'package:core/core.dart';
import 'package:core_ui/core_ui.dart';

class AuthContent extends StatelessWidget {
  const AuthContent({super.key});

  @override
  Widget build(BuildContext context) {
    final AppColorsTheme colors = context.colors;
    final AuthBloc bloc = context.read<AuthBloc>();
    final AppLocalization localization = context.localization;

    return AppScaffold(
      hasScrollBody: false,
      backgroundGradient: colors.background.primaryGradient,
      content: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          AppIcons.logo.call(size: 160),
          const SizedBox(height: AppDimens.spacerMedium),
          Text(
            localization.auth_title,
            textAlign: TextAlign.center,
            style: AppFonts.h2,
          ),
          const SizedBox(height: AppDimens.spacerSmallest),
          Text(
            localization.auth_description,
            textAlign: TextAlign.center,
            style: AppFonts.h5.copyWith(color: colors.text.secondary),
          ),
          const SizedBox(height: AppDimens.spacerLargest),
          AppElevatedButton(
            title: localization.auth_action_signIn,
            style: AppElevatedButtonStyle.accent,
            onTap: () => bloc.add(const NavigateSignIn()),
          ),
          const SizedBox(height: AppDimens.spacerSmallest),
          AppElevatedButton(
            title: localization.auth_action_signUp,
            onTap: () => bloc.add(const NavigateSignUp()),
          ),
          const SizedBox(height: AppDimens.spacerLargest),
          AppTextButton(
            title: localization.auth_action_signInGuest,
            onTap: () => bloc.add(const SignInGuest()),
          ),
        ],
      ),
    );
  }
}
