part of theme;

abstract final class AppIcons {
  static const String _basePath = kIconsPath;

  static const String _placeholderKey = '${_basePath}placeholder.svg';
  static const AppIcon placeholder = AppIcon.asset(_placeholderKey);

  static const String _iconKey = '${_basePath}icon.svg';
  static const AppIcon icon = AppIcon.asset(_iconKey);

  static const String _logoKey = '${_basePath}logo.svg';
  static const AppIcon logo = AppIcon.asset(_logoKey);
}
