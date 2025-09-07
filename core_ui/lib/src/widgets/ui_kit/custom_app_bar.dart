import 'package:core/core.dart';
import 'package:core_ui/core_ui.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Color? contentColor;
  final List<Widget>? actionsPostfix;
  final List<Widget>? actionsPrefix;
  final EdgeInsets? padding;

  const CustomAppBar({
    this.title = '',
    this.contentColor,
    this.actionsPostfix,
    this.actionsPrefix,
    this.padding,
    super.key,
  });

  static const double _spacer = AppDimens.spacerExtraSmall;
  static const double _padding = AppDimens.defaultPagePadding;
  static const double _height = AppDimens.defaultAppBarHeight;

  @override
  Widget build(BuildContext context) {
    final AppColorsTheme colors = context.colors;
    final bool hasLeading = Navigator.of(context).canPop();

    return AppBar(
      titleSpacing: 0,
      centerTitle: true,
      backgroundColor: Colors.transparent,
      foregroundColor: contentColor ?? colors.onPrimary,
      surfaceTintColor: Colors.transparent,
      automaticallyImplyLeading: false,
      leading: _buildLeading(context, hasLeading: hasLeading),
      leadingWidth: _calculateWidth(actionsPrefix, hasLeading),
      title: Text(
        title,
        style: AppFonts.h3SFPro,
        overflow: TextOverflow.ellipsis,
      ),
      actions: _buildActionsPostfix(),
    );
  }

  Widget? _buildLeading(BuildContext context, {required bool hasLeading}) {
    if (!hasLeading && (actionsPrefix == null || actionsPrefix!.isEmpty)) {
      return null;
    }

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        SizedBox(width: padding?.left ?? _padding),
        if (hasLeading)
          AppIcons.back.call(
            color: contentColor,
            onTap: Navigator.of(context).maybePop,
          ),
        if (hasLeading && actionsPrefix != null && actionsPrefix!.isNotEmpty)
          const SizedBox(width: _spacer),
        ...?actionsPrefix?.separate(const SizedBox(width: _spacer)),
      ],
    );
  }

  List<Widget> _buildActionsPostfix() {
    if (actionsPostfix == null || actionsPostfix!.isEmpty) {
      return <Widget>[const SizedBox.shrink()];
    }
    return <Widget>[
      ...?actionsPostfix?.separate(const SizedBox(width: _spacer)),
      SizedBox(width: padding?.right ?? _padding),
    ];
  }

  double _calculateWidth(List<Widget>? actions, bool hasLeading) {
    if (actions == null && !hasLeading) return 0;

    final int leadingIcon = hasLeading ? 1 : 0;
    final int actionsCount = actions?.length ?? 0;

    return (leadingIcon * AppDimens.defaultButtonHeight) +
        (actionsCount * AppDimens.defaultButtonHeight) +
        ((leadingIcon + actionsCount - 1).clamp(0, 100) * _spacer) +
        (padding?.left ?? _padding);
  }

  @override
  Size get preferredSize => const Size.fromHeight(_height);
}
