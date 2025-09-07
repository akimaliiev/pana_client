import 'package:core_ui/core_ui.dart';

class AppNavigationBar extends StatefulWidget {
  final ValueChanged<int> onChange;
  final int currentIndex;
  final List<BottomNavigationBarItem> navigationBarItems;

  const AppNavigationBar({
    required this.onChange,
    required this.navigationBarItems,
    required this.currentIndex,
    super.key,
  });

  @override
  State<AppNavigationBar> createState() => _AppNavigationBarState();
}

class _AppNavigationBarState extends State<AppNavigationBar> {
  static const double _navigationBarHeight = 96.0;

  @override
  Widget build(BuildContext context) {
    final AppColorsTheme colors = context.colors;

    return DecoratedBox(
      decoration: BoxDecoration(
        boxShadow: <BoxShadow>[BoxShadow(color: colors.shadow)],
        border: Border(
          top: BorderSide(color: colors.border.primary, width: 2),
        ),
      ),
      child: SizedBox(
        height: _navigationBarHeight,
        child: BottomNavigationBar(
          items: widget.navigationBarItems,
          currentIndex: widget.currentIndex,
          type: BottomNavigationBarType.fixed,
          backgroundColor: colors.primary,
          selectedItemColor: colors.accent,
          unselectedItemColor: colors.onPrimary,
          selectedIconTheme: IconThemeData(color: colors.accent),
          unselectedIconTheme: IconThemeData(color: colors.onPrimary),
          showUnselectedLabels: true,
          onTap: widget.onChange,
          elevation: 0,
        ),
      ),
    );
  }
}
