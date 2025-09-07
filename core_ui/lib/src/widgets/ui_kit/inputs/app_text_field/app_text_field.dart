import 'package:core_ui/core_ui.dart';
import 'package:core_ui/src/widgets/ui_kit/inputs/app_text_field/app_text_field_mapper.dart';
import 'package:core_ui/src/widgets/ui_kit/inputs/app_text_field/app_text_field_style_enum.dart';
import 'package:flutter/services.dart';

class AppTextField extends StatefulWidget {
  final AppTextFieldStyle style;
  final ElementState state;
  final TextEditingController controller;
  final String? title;
  final String? hint;
  final String? error;
  final String? caption;
  final Widget? postfix;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;
  final bool isObscured;

  const AppTextField({
    required this.controller,
    this.style = AppTextFieldStyle.primary,
    this.state = ElementState.enabled,
    this.isObscured = false,
    this.title,
    this.caption,
    this.postfix,
    this.hint,
    this.error,
    this.keyboardType,
    this.inputFormatters,
    super.key,
  });

  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  late FocusNode _focusNode;

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
  }

  @override
  Widget build(BuildContext context) {
    final AppColorsTheme colors = context.colors;

    final Color contentColor = AppTextFieldMapper.getContentColor(
      colors: colors,
      style: widget.style,
    );

    final Color backgroundColor = AppTextFieldMapper.getBackgroundColor(
      colors: colors,
      style: widget.style,
    );

    final Color borderColor = AppTextFieldMapper.getBorderColor(
      colors: colors,
      style: widget.style,
    );

    final Color activeBorderColor = AppTextFieldMapper.getActiveBorderColor(
      colors: colors,
      style: widget.style,
    );

    return Column(
      spacing: AppDimens.spacerExtraSmall,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        if (widget.title != null)
          Text(
            widget.title ?? '',
            style: AppFonts.h5SFPro,
          ),
        SizedBox(
          child: TextField(
            controller: widget.controller,
            focusNode: _focusNode,
            obscureText: widget.isObscured,
            keyboardType: widget.keyboardType,
            inputFormatters: widget.inputFormatters,
            cursorColor: colors.accent,
            style: AppFonts.h4SFPro.copyWith(color: contentColor),
            decoration: InputDecoration(
              suffix: widget.caption != null ? Text(widget.caption!) : null,
              suffixStyle: AppFonts.caption.copyWith(color: contentColor),
              suffixIconColor: contentColor,
              suffixIcon: widget.postfix != null
                  ? Padding(
                      padding: const EdgeInsets.all(AppDimens.defaultInputHeight / 15),
                      child: widget.postfix,
                    )
                  : null,
              suffixIconConstraints: widget.postfix != null
                  ? const BoxConstraints(
                      minHeight: AppDimens.defaultInputHeight / 1.5,
                      minWidth: AppDimens.defaultInputHeight,
                    )
                  : null,
              fillColor: backgroundColor,
              filled: true,
              hintText: widget.hint,
              hintStyle: AppFonts.h4SFPro.copyWith(color: colors.text.hint),
              errorText: widget.error?.isNotEmpty ?? false ? widget.error : null,
              enabled: widget.state == ElementState.enabled,
              errorStyle: AppFonts.h5SFPro.copyWith(color: colors.error),
              errorMaxLines: 1,
              disabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: borderColor),
                borderRadius: BorderRadius.circular(AppDimens.borderRadiusLarge),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: activeBorderColor),
                borderRadius: BorderRadius.circular(AppDimens.borderRadiusLarge),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: activeBorderColor),
                borderRadius: BorderRadius.circular(AppDimens.borderRadiusLarge),
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }
}
