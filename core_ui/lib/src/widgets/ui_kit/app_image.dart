import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:core_ui/core_ui.dart';

class AppImage {
  static const String _pngFileRegex = r'.png$';
  static const double _defaultIconPadding = 0;

  final String iconKey;

  bool get isPNG => iconKey.contains(RegExp(_pngFileRegex));

  const AppImage(this.iconKey);

  static Widget callPath(
    AppColorsTheme colors, {
    required String path,
    VoidCallback? onTap,
    bool isLoading = false,
    double? size,
  }) {
    final Uri uri = Uri.parse(path);
    final bool isNetwork = uri.scheme == 'http' || uri.scheme == 'https' ? true : false;

    if (isNetwork) {
      return GestureDetector(
        onTap: onTap,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(AppDimens.borderRadiusLarge),
          child: Container(
            height: size,
            width: size,
            color: colors.primary,
            child: isLoading
                ? const AppLoadingIndicator()
                : CachedNetworkImage(
                    imageUrl: path,
                    fit: BoxFit.cover,
                    errorWidget: (_, __, ___) => AppIcons.placeholder.call(),
                    placeholder: (_, __) => const AppLoadingIndicator(),
                  ),
          ),
        ),
      );
    } else {
      return GestureDetector(
        onTap: onTap,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(AppDimens.borderRadiusLarge),
          child: Container(
            height: size,
            width: size,
            color: colors.primary,
            child: isLoading
                ? const AppLoadingIndicator()
                : path.isNotEmpty && File(path).existsSync()
                    ? Image.file(
                        File(path),
                        fit: BoxFit.cover,
                        errorBuilder: (_, __, ___) => AppIcons.placeholder.call(),
                      )
                    : AppIcons.placeholder.call(),
          ),
        ),
      );
    }
  }

  Widget call({
    Color? color,
    double? size,
    BoxFit? fit,
    Function()? onTap,
    double padding = _defaultIconPadding,
    bool needClip = false,
  }) {
    assert(
      isPNG,
      'Implemented only for png',
    );

    return ClipRRect(
      borderRadius:
          needClip ? BorderRadius.circular(AppDimens.borderRadiusLarge) : BorderRadius.zero,
      child: GestureDetector(
        onTap: onTap,
        child: Padding(
          padding: EdgeInsets.all(padding),
          child: Image.asset(
            iconKey,
            package: kPackageName,
            fit: fit ?? BoxFit.contain,
            height: size,
            width: size,
          ),
        ),
      ),
    );
  }

  Widget callBackground({
    required Widget child,
    double? height,
    double? width,
    BoxFit? fit,
    EdgeInsets? padding,
  }) {
    return Container(
      height: height,
      width: width,
      padding: padding,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            iconKey,
            package: kPackageName,
          ),
          fit: fit ?? BoxFit.cover,
        ),
      ),
      child: child,
    );
  }
}
