import 'package:core_ui/core_ui.dart';

class AppShadowWrapper extends StatelessWidget {
  const AppShadowWrapper();

  @override
  Widget build(BuildContext context) {
    final AppColorsTheme colors = context.colors;

    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomCenter,
          end: Alignment.center,
          stops: const <double>[0.2, 0.8],
          colors: <Color>[
            colors.shadow,
            Colors.transparent,
          ],
        ),
      ),
    );
  }
}
