import 'package:flutter/material.dart';
import 'package:core_ui/core_ui.dart';

class Header extends StatelessWidget {
  const Header({
    super.key,
    required this.initial,
    required this.title,
    required this.chip,
  });

  final String initial;
  final String title;
  final String chip;

  @override
  Widget build(BuildContext context) {
    final t = Theme.of(context).textTheme;

    return Container(
      padding: const EdgeInsets.symmetric(vertical: AppDimens.m),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 32,
            backgroundColor: const Color(0xFFF0F2F5),
            child: Text(
              initial,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w700, color: Colors.black87),
            ),
          ),
          const SizedBox(width: AppDimens.m),
          Expanded(
            child: Text(
              title,
              style: t.headlineSmall?.copyWith(color: Colors.black87),
            ),
          ),
          _Chip(text: chip),
        ],
      ),
    );
  }
}

class _Chip extends StatelessWidget {
  const _Chip({required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: const Color(0xFFF2F4F7),
        borderRadius: BorderRadius.circular(999),
      ),
      child: Text(text, style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: Colors.black87)),
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