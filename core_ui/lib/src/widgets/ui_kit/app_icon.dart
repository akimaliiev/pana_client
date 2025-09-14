import 'package:core_ui/core_ui.dart';
import 'package:flutter_svg/svg.dart';

class AppIcon {
  static const double _iconSize = AppDimens.iconSizeSmall;

  final String? _svgAsset;
  final IconData? _iconData;

  const AppIcon._({
    String? svgAsset,
    IconData? iconData,
  })  : _svgAsset = svgAsset,
        _iconData = iconData;

  const AppIcon.asset(String assetKey) : this._(svgAsset: assetKey);

  const AppIcon.data(IconData iconData) : this._(iconData: iconData);

  Widget call({
    Color? color,
    double size = _iconSize,
    BoxFit? fit,
    Function()? onTap,
    double padding = 0,
  }) {
    Widget iconWidget;

    if (_svgAsset != null) {
      iconWidget = SvgPicture.asset(
        _svgAsset!,
        package: kPackageName,
        colorFilter: color != null
            ? ColorFilter.mode(
                color,
                BlendMode.srcIn,
              )
            : null,
        fit: fit ?? BoxFit.contain,
        height: size,
        width: size,
      );
    } else if (_iconData != null) {
      iconWidget = Icon(
        _iconData,
        size: size,
        color: color,
      );
    } else {
      iconWidget = const SizedBox.shrink();
    }

    return Builder(
      builder: (BuildContext context) {
        return Theme(
          data: context.theme.copyWith(splashFactory: NoSplash.splashFactory),
          child: InkWell(
            borderRadius: BorderRadius.circular(size + padding),
            onTap: onTap,
            child: Padding(
              padding: EdgeInsets.all(padding),
              child: iconWidget,
            ),
          ),
        );
      },
    );
  }
}
