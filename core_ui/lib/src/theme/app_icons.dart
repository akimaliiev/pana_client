part of theme;

abstract final class AppIcons {
  static const String _basePath = kIconsPath;

  static const String _backKey = '${_basePath}chevron_left.svg';
  static const AppIcon back = AppIcon(_backKey);

  static const String _placeholderKey = '${_basePath}placeholder.svg';
  static const AppIcon placeholder = AppIcon(_placeholderKey);
}
