import 'package:auth/auth/bloc/auth_bloc.dart';
import 'package:auth/auth/screen/auth_content.dart';
import 'package:core/core.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:navigation/navigation.dart';

@RoutePage()
class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AuthBloc>(
      create: (_) => AuthBloc(
        localization: context.localization,
        appRouter: appLocator<AppRouter>(),
        appEventNotifier: appLocator<AppEventNotifier>(),
        authRepository: appLocator<AuthRepository>(),
      ),
      child: const AuthContent(),
    );
  }
}
