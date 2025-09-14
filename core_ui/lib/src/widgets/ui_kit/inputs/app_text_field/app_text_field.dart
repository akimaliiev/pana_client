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
  final bool isRequired;

  const AppTextField({
    required this.controller,
    this.style = AppTextFieldStyle.primary,
    this.state = ElementState.enabled,
    this.isObscured = false,
    this.isRequired = false,
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
    final bool hasError = widget.error?.isNotEmpty ?? false;

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
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        if (widget.title != null)
          Padding(
            padding: const EdgeInsets.only(bottom: AppDimens.spacerSmall),
            child: RichText(
              text: TextSpan(
                text: widget.title,
                style: AppFonts.h5.copyWith(color: colors.text.primary),
                children: <TextSpan>[
                  if (widget.isRequired) const TextSpan(text: ' *'),
                ],
              ),
            ),
          ),
        TextField(
          controller: widget.controller,
          focusNode: _focusNode,
          obscureText: widget.isObscured,
          keyboardType: widget.keyboardType,
          inputFormatters: widget.inputFormatters,
          cursorColor: colors.accent,
          style: AppFonts.h4.copyWith(color: contentColor),
          textAlignVertical: const TextAlignVertical(y: 0.15),
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(
              vertical: AppDimens.spacerSmallest,
              horizontal: AppDimens.spacerExtraSmall,
            ),
            constraints: const BoxConstraints(
              maxHeight: AppDimens.defaultInputHeight,
            ),
            suffixIcon: widget.postfix,
            suffixIconConstraints: const BoxConstraints(
              maxHeight: AppDimens.iconSizeMedium,
              maxWidth: AppDimens.iconSizeMedium * 2,
            ),
            suffix: widget.caption != null ? Text(widget.caption!) : null,
            suffixStyle: AppFonts.h6.copyWith(color: contentColor),
            fillColor: backgroundColor,
            filled: true,
            hintText: widget.hint,
            hintStyle: AppFonts.h4.copyWith(color: colors.text.hint),
            enabled: widget.state == ElementState.enabled,
            helperText: ' ',
            helperStyle: const TextStyle(height: 0, fontSize: 0),
            errorStyle: const TextStyle(height: 0, fontSize: 0),
            disabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: borderColor),
              borderRadius: BorderRadius.circular(AppDimens.borderRadiusSmallest),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: hasError ? colors.error : borderColor),
              borderRadius: BorderRadius.circular(AppDimens.borderRadiusSmallest),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: hasError ? colors.error : activeBorderColor),
              borderRadius: BorderRadius.circular(AppDimens.borderRadiusSmallest),
            ),
            errorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: colors.border.error),
              borderRadius: BorderRadius.circular(AppDimens.borderRadiusSmallest),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: colors.border.error,
                width: AppDimens.defaultBorderWidth * 2,
              ),
              borderRadius: BorderRadius.circular(AppDimens.borderRadiusSmallest),
            ),
          ),
        ),
        if (hasError)
          Padding(
            padding: const EdgeInsets.only(left: AppDimens.spacerSmall),
            child: Text(
              widget.error!,
              style: AppFonts.h5.copyWith(color: colors.error),
              overflow: TextOverflow.ellipsis,
              maxLines: 3,
            ),
          )
      ],
    );
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }
}
