import 'dart:async';

import 'package:core/core.dart';
import 'package:core_ui/core_ui.dart';

class InputCodeForm extends StatefulWidget {
  final String phoneNumber;
  final ValueChanged<String> onCodeCompleted;
  final VoidCallback onResendRequested;
  final bool hasError;

  const InputCodeForm({
    required this.phoneNumber,
    required this.onCodeCompleted,
    required this.onResendRequested,
    required this.hasError,
    super.key,
  });

  @override
  State<InputCodeForm> createState() => _InputCodeFormState();
}

class _InputCodeFormState extends State<InputCodeForm> {
  late Timer _timer;

  int _secondsRemaining = 60;

  @override
  void initState() {
    super.initState();

    _startTimer();
  }

  void _startTimer() {
    _secondsRemaining = 60;

    _timer = Timer.periodic(
      const Duration(seconds: 1),
      (_) {
        if (_secondsRemaining > 0) {
          if (mounted) setState(() => _secondsRemaining--);
        } else {
          _timer.cancel();
        }
      },
    );
  }

  void _handleResend() {
    widget.onResendRequested();

    _startTimer();
  }

  @override
  Widget build(BuildContext context) {
    final AppLocalization localization = context.localization;
    final AppColorsTheme colors = context.colors;

    return Column(
      children: <Widget>[
        Text(
          textAlign: TextAlign.center,
          localization.form_code_description(widget.phoneNumber),
          style: AppFonts.h4.copyWith(color: colors.text.secondary),
        ),
        const SizedBox(height: AppDimens.spacerExtraLarge),
        if (widget.hasError) ...<Widget>[
          AppNotification(title: localization.auth_error_invalidCode_title),
          const SizedBox(height: AppDimens.spacerLargest),
        ],
        AppCodeField(onCompleted: widget.onCodeCompleted),
        const SizedBox(height: AppDimens.spacerSmallest),
        Text(
          localization.field_code_hint,
          style: AppFonts.h6.copyWith(color: colors.text.tertiary),
        ),
        const SizedBox(height: AppDimens.spacerLargest),
        Text(
          localization.signIn_confirmCode_action_resendCode_timer_title,
          style: AppFonts.h4.copyWith(color: colors.text.secondary),
        ),
        const SizedBox(height: AppDimens.spacerSmallest),
        if (_secondsRemaining > 0)
          Text(
            localization.signIn_confirmCode_action_resendCode_inactive_title(_secondsRemaining),
            style: AppFonts.h5.copyWith(color: colors.text.tertiary),
          )
        else
          AppElevatedButton(
            title: localization.signIn_confirmCode_action_resendCode_title,
            onTap: _handleResend,
          ),
      ],
    );
  }

  @override
  void dispose() {
    _timer.cancel();

    super.dispose();
  }
}
