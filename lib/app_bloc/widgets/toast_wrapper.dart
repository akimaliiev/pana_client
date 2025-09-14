import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:pana_client/app_bloc/bloc/app_bloc.dart';
import 'package:pana_client/app_bloc/widgets/text_toast.dart';

class AppBlocProvider extends StatelessWidget {
  final Widget child;

  const AppBlocProvider({required this.child});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AppBloc>(
      create: (_) => AppBloc(
        localization: context.localization,
        appEventObserver: appLocator<AppEventObserver>(),
      ),
      child: Builder(
        builder: (BuildContext context) {
          final AppBloc bloc = context.read<AppBloc>();

          return Stack(
            alignment: Alignment.topCenter,
            children: <Widget>[
              child,
              SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: BlocBuilder<AppBloc, AppState>(
                    builder: (BuildContext context, AppState state) {
                      if (state.toastMessage != '') {
                        return TextToast(
                          text: state.toastMessage,
                          type: state.toastType,
                          onDispose: () => bloc.add(const Clear()),
                        );
                      }

                      return const SizedBox.shrink();
                    },
                  ),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
