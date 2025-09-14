import 'dart:math';

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

    final Widget leadingWidget = _buildLeading(context, hasLeading: hasLeading);
    final Widget actionsWidget = _buildActions(context);

    final double leadingWidth = _calculateLeadingWidth(actionsPrefix, hasLeading);
    final double actionsWidth = _calculateActionsWidth(actionsPostfix);
    final double horizontalPadding = max(leadingWidth, actionsWidth);

    return AppBar(
      elevation: 0,
      toolbarHeight: _height,
      titleSpacing: 0,
      centerTitle: true,
      backgroundColor: Colors.transparent,
      foregroundColor: contentColor ?? colors.onPrimary,
      surfaceTintColor: Colors.transparent,
      automaticallyImplyLeading: false,
      flexibleSpace: SafeArea(
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                leadingWidget,
                actionsWidget,
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
              child: Text(
                title,
                style: AppFonts.h3.copyWith(color: contentColor ?? colors.onPrimary),
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLeading(BuildContext context, {required bool hasLeading}) {
    final AppLocalization localization = context.localization;
    if (!hasLeading && (actionsPrefix == null || actionsPrefix!.isEmpty)) {
      return SizedBox(width: padding?.left ?? _padding);
    }

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        SizedBox(width: padding?.left ?? _padding),
        if (hasLeading)
          AppIconButton(
            title: localization.common_back,
            icon: LucideIcons.arrowLeft,
            hasBackground: false,
            titlePosition: AppIconButtonTitlePosition.right,
            onTap: Navigator.of(context).maybePop,
          ),
        if (hasLeading && actionsPrefix != null && actionsPrefix!.isNotEmpty)
          const SizedBox(width: _spacer),
        ...?actionsPrefix?.separate(const SizedBox(width: _spacer)),
      ],
    );
  }

  Widget _buildActions(BuildContext context) {
    if (actionsPostfix == null || actionsPostfix!.isEmpty) {
      return SizedBox(width: padding?.right ?? _padding);
    }
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        ...?actionsPostfix?.separate(const SizedBox(width: _spacer)),
        SizedBox(width: padding?.right ?? _padding),
      ],
    );
  }

  double _calculateLeadingWidth(List<Widget>? actions, bool hasLeading) {
    if (actions == null && !hasLeading) return padding?.left ?? _padding;
    final int leadingIcon = hasLeading ? 1 : 0;
    final int actionsCount = actions?.length ?? 0;
    final int spacersCount = (leadingIcon + actionsCount - 1).clamp(0, 100);

    return (leadingIcon * 100) +
        (actionsCount * AppDimens.defaultButtonHeight) +
        (spacersCount * _spacer) +
        (padding?.left ?? _padding);
  }

  double _calculateActionsWidth(List<Widget>? actions) {
    if (actions == null) return padding?.right ?? _padding;
    final int actionsCount = actions.length;
    final int spacersCount = (actionsCount - 1).clamp(0, 100);

    return (actionsCount * AppDimens.defaultButtonHeight) +
        (spacersCount * _spacer) +
        (padding?.right ?? _padding);
  }

  @override
  Size get preferredSize => const Size.fromHeight(_height);
}
