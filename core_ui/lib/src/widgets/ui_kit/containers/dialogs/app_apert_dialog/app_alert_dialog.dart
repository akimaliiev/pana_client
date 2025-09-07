import 'package:core/core.dart';
import 'package:core_ui/core_ui.dart';

export 'app_alert_dialog_item.dart';

class AppAlertDialog extends StatelessWidget {
  final String? title;
  final String? content;
  final List<InlineSpan>? spans;
  final List<AppAlertDialogItem> actions;
  final bool hasCancel;

  const AppAlertDialog({
    required this.actions,
    this.hasCancel = true,
    this.title,
    this.content,
    this.spans,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final AppLocalization localization = context.localization;
    final AppColorsTheme colors = context.colors;

    final List<Widget> actions = <Widget>[
      if (hasCancel)
        AppTextButton(
          title: localization.common_cancel,
          onTap: () => Navigator.of(context).pop(),
          isExpanded: true,
        ),
      ...this.actions.map(
            (AppAlertDialogItem action) => AppTextButton(
              title: action.text,
              style: action.style,
              onTap: () {
                action.onPressed.call();
                Navigator.of(context).pop();
              },
            ),
          ),
    ];

    return AlertDialog(
      backgroundColor: colors.primary,
      title: title != null
          ? Text(
              title ?? '',
              style: AppFonts.h4SFPro,
              textAlign: TextAlign.center,
            )
          : null,
      content: content != null
          ? RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: content,
                style: AppFonts.h5SFPro.copyWith(color: colors.onPrimary),
                children: <InlineSpan>[
                  ...?spans,
                ],
              ),
            )
          : null,
      actions: actions,
      actionsAlignment: MainAxisAlignment.spaceAround,
    );
  }
}
