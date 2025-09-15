import 'package:flutter/material.dart';
import 'package:core_ui/core_ui.dart';

class GroupCard extends StatelessWidget {
  const GroupCard({super.key, required this.title, required this.children});
  final String title;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    final t = Theme.of(context).textTheme;
    return Card(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(AppDimens.m, AppDimens.m, AppDimens.m, AppDimens.s),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  title,
                  style: t.titleMedium?.copyWith(color: Colors.black87),
                ),
              ),
            ),
            const Divider(),
            for (int i = 0; i < children.length; i++) ...[
              children[i],
            ],
          ],
        ),
      ),
    );
  }
}

class GroupSeparator extends StatelessWidget {
  const GroupSeparator({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 8, bottom: 8),
      child: Divider(height: 1),
    );
  }
}
class AppDimens {
  static const double page = 16;
  static const double s = 8;
  static const double m = 16;
  static const double l = 24;
  static const double radius = 16;
}