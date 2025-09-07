import 'package:core_ui/core_ui.dart';

class AppScaffold extends StatelessWidget {
  final FragmentState state;
  final String title;
  final Widget content;
  final Widget? floatingActionButton;
  final List<Widget>? actionsPostfix;
  final List<Widget>? actionsPrefix;
  final bool hasScrollBody;
  final bool hasAppBar;
  final bool hasPadding;
  final bool hasMainBackground;
  final bool hasSafeArea;
  final Color? backgroundColor;
  final Color? contentColor;
  final Gradient? backgroundGradient;
  final EdgeInsets? pagePadding;
  final String? errorText;
  final VoidCallback? onRetry;

  const AppScaffold({
    required this.content,
    this.state = FragmentState.active,
    this.title = '',
    this.hasScrollBody = true,
    this.hasAppBar = true,
    this.hasPadding = true,
    this.hasSafeArea = true,
    this.hasMainBackground = false,
    this.floatingActionButton,
    this.onRetry,
    this.errorText,
    this.actionsPostfix,
    this.actionsPrefix,
    this.backgroundColor,
    this.contentColor,
    this.backgroundGradient,
    this.pagePadding,
    super.key,
  })  : assert(
          backgroundColor == null || backgroundGradient == null,
          'Cannot set both backgroundColor and backgroundGradient',
        ),
        assert(
          pagePadding == null || hasPadding == true,
          'Cannot use pagePadding without setting hasPadding to true',
        ),
        assert(
          title == '' || hasAppBar == true,
          'Cannot set title without setting hasAppBar to true',
        );

  @override
  Widget build(BuildContext context) {
    final AppColorsTheme colors = context.colors;
    final Color backgroundColor =
        this.backgroundColor ?? (backgroundGradient != null ? Colors.transparent : colors.primary);

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: DecoratedBox(
        decoration: BoxDecoration(gradient: backgroundGradient),
        child: Scaffold(
          floatingActionButton: floatingActionButton,
          backgroundColor: backgroundColor,
          resizeToAvoidBottomInset: true,
          appBar: hasAppBar
              ? CustomAppBar(
                  padding: pagePadding,
                  title: title,
                  contentColor: contentColor,
                  actionsPostfix: actionsPostfix,
                  actionsPrefix: actionsPrefix,
                )
              : null,
          body: Padding(
            padding: pagePadding ??
                (hasPadding ? const EdgeInsets.all(AppDimens.defaultPagePadding) : EdgeInsets.zero),
            child: RefreshIndicator(
              onRefresh: () async => onRetry?.call(),
              child: Stack(
                children: <Widget>[
                  if (hasMainBackground) const AppShadowWrapper(),
                  hasScrollBody
                      ? SingleChildScrollView(
                          physics: const ClampingScrollPhysics(),
                          child: _content,
                        )
                      : hasSafeArea
                          ? SafeArea(left: false, right: false, child: _content)
                          : _content,
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget get _content => switch (state) {
        FragmentState.active => content,
        FragmentState.partLoading => const Center(child: AppLoadingIndicator()),
        FragmentState.fullLoading => const Center(child: AppLoadingIndicator()),
        FragmentState.error => AppRetry(
            message: errorText,
            onTap: onRetry,
          ),
      };
}
