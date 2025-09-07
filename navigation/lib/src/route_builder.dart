import 'package:auto_route/auto_route.dart';
import 'package:core_ui/core_ui.dart';

abstract final class RouteBuilder {
  static Route<T> bottomSheet<T>(
    BuildContext context,
    Widget child,
    AutoRoutePage<T> page,
  ) {
    return ModalBottomSheetRoute<T>(
      isScrollControlled: false,
      settings: page,
      backgroundColor: Colors.transparent,
      sheetAnimationStyle: const AnimationStyle(duration: AppDimens.animationDurationShort),
      builder: (BuildContext context) {
        return Container(
          constraints: BoxConstraints(maxHeight: MediaQuery.sizeOf(context).height * 0.9),
          padding: EdgeInsets.only(bottom: MediaQuery.viewInsetsOf(context).bottom),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(AppDimens.borderRadiusLarge),
              topRight: Radius.circular(AppDimens.borderRadiusLarge),
            ),
          ),
          child: child,
        );
      },
    );
  }
}
