import 'package:core_ui/core_ui.dart';

class AppAnimatedBarProgressIndicator extends StatefulWidget {
  final int activeIndex;
  final int barAmount;
  final VoidCallback onEnds;

  const AppAnimatedBarProgressIndicator({
    required this.activeIndex,
    required this.barAmount,
    required this.onEnds,
    super.key,
  });

  @override
  State<AppAnimatedBarProgressIndicator> createState() => _AppAnimatedBarProgressIndicatorState();
}

class _AppAnimatedBarProgressIndicatorState extends State<AppAnimatedBarProgressIndicator>
    with SingleTickerProviderStateMixin {
  late final AnimationController _animationController;
  late final Animation<double> _segmentProgressAnimation;

  static const double _barHeight = 3.0;
  static const double _barSpacing = 6.0;
  static const Duration _progressBarDuration = Duration(seconds: 15);

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: _progressBarDuration,
    );

    _segmentProgressAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(_animationController);

    if (widget.activeIndex < widget.barAmount) _animationController.forward();

    _animationController.addStatusListener(
      (AnimationStatus status) {
        if (status == AnimationStatus.completed) widget.onEnds();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final AppColorsTheme colors = context.colors;

    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final double barWidth =
            (constraints.maxWidth / widget.barAmount) - (_barSpacing * (widget.barAmount - 1));

        return AnimatedBuilder(
          animation: _segmentProgressAnimation,
          builder: (BuildContext context, Widget? child) {
            final List<Widget> bars = List<Widget>.generate(
              widget.barAmount,
              (int index) {
                Color barColor;
                double currentBarWidth;

                if (index < widget.activeIndex) {
                  barColor = colors.onPrimary;
                  currentBarWidth = barWidth;
                } else if (index == widget.activeIndex) {
                  barColor = colors.onPrimary;
                  currentBarWidth = barWidth * _segmentProgressAnimation.value;
                } else {
                  barColor = colors.text.hint;
                  currentBarWidth = barWidth;
                }

                return Stack(
                  children: <Widget>[
                    Container(
                      width: barWidth,
                      height: _barHeight,
                      decoration: BoxDecoration(
                        color: colors.text.hint,
                        borderRadius: BorderRadius.circular(AppDimens.borderRadiusSmall),
                      ),
                    ),
                    Positioned(
                      left: 0,
                      child: Container(
                        width: currentBarWidth,
                        height: _barHeight,
                        decoration: BoxDecoration(
                          color: barColor,
                          borderRadius: BorderRadius.circular(AppDimens.borderRadiusSmall),
                        ),
                      ),
                    ),
                  ],
                );
              },
            );

            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List<Widget>.generate(
                widget.barAmount * 2 - 1,
                (int index) => index.isEven ? bars[index ~/ 2] : const SizedBox(width: _barSpacing),
              ),
            );
          },
        );
      },
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }
}
