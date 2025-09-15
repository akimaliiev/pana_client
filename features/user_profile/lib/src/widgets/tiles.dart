import 'package:flutter/material.dart';

/// Плитка-навигация (по умолчанию БЕЗ стрелки).
class NavTile extends StatelessWidget {
  const NavTile({
    super.key,
    required this.title,
    this.subtitle,
    this.onTap,
    this.trailing,
  });

  final String title;
  final String? subtitle;
  final VoidCallback? onTap;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    final t = Theme.of(context).textTheme;
    return ListTile(
      title: Text(
        title,
        style: t.bodyMedium?.copyWith(fontWeight: FontWeight.w700, color: Colors.black87),
      ),
      subtitle: subtitle == null
          ? null
          : Text(subtitle!, style: t.bodyMedium?.copyWith(color: Colors.black54)),
      trailing: trailing, // null => без стрелки
      onTap: onTap,
    );
  }
}

class FieldLabel extends StatelessWidget {
  const FieldLabel(this.text, {super.key});
  final String text;

  @override
  Widget build(BuildContext context) {
    final t = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 14, 16, 10),
      child: Text(
        text,
        style: t.bodyMedium?.copyWith(
          fontWeight: FontWeight.w700,
          color: Colors.black87,
        ),
      ),
    );
  }
}

class SelectField extends StatelessWidget {
  const SelectField({
    super.key,
    required this.value,
    required this.onTap,
  });

  final String value;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final t = Theme.of(context).textTheme;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: onTap, // важное: onTap теперь снаружи управляет показом меню
        child: Container(
          height: 52,
          padding: const EdgeInsets.symmetric(horizontal: 14),
          decoration: BoxDecoration(
            color: const Color(0xFFF6F8FB),
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: const Color(0xFFE9EDF3)),
          ),
          child: Row(
            children: [
              Expanded(
                child: Text(
                  value,
                  style: t.bodyMedium?.copyWith(color: Colors.black87),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const Icon(Icons.keyboard_arrow_down, color: Colors.black45),
            ],
          ),
        ),
      ),
    );
  }
}


/// Ряд с переключателем.
/// [gapTop] позволяет сделать дополнительный отступ сверху (между свитчами).
class SwitchTile extends StatefulWidget {
  const SwitchTile({
    super.key,
    required this.label,
    required this.initial,
    required this.onChanged,
    this.leading,
    this.gapTop = 0,
  });

  final String label;
  final bool initial;
  final ValueChanged<bool> onChanged;
  final Widget? leading;
  final double gapTop;

  @override
  State<SwitchTile> createState() => _SwitchTileState();
}

class _SwitchTileState extends State<SwitchTile> {
  late bool _value = widget.initial;

  @override
  Widget build(BuildContext context) {
    final t = Theme.of(context).textTheme;

    return Padding(
      padding: EdgeInsets.only(top: widget.gapTop),
      child: ListTile(
        leading: widget.leading,
        title: Text(
          widget.label,
          style: t.bodyMedium?.copyWith(fontWeight: FontWeight.w600, color: Colors.black87),
        ),
        trailing: Switch.adaptive(
          value: _value,
          onChanged: (v) {
            setState(() => _value = v);
            widget.onChanged(v);
          },
        ),
        onTap: () {
          final v = !_value;
          setState(() => _value = v);
          widget.onChanged(v);
        },
      ),
    );
  }
}
