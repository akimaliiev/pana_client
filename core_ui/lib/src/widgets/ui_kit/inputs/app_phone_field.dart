import 'package:core/core.dart';
import 'package:core_ui/core_ui.dart';
import 'package:flutter/services.dart';
import 'package:intl_phone_field/country_picker_dialog.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class AppPhoneField extends StatelessWidget {
  final bool isRequired;
  final String? initialValue;
  final String? errorText;
  final ValueChanged<PhoneNumber> onChangePhoneNumber;

  const AppPhoneField({
    required this.onChangePhoneNumber,
    this.isRequired = false,
    this.initialValue,
    this.errorText,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final AppLocalization localization = context.localization;
    final AppColorsTheme colors = context.colors;

    final String? maybeError =
        errorText != null && (errorText?.isNotEmpty ?? false) ? errorText : null;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(bottom: AppDimens.spacerSmall),
          child: RichText(
            text: TextSpan(
              style: AppFonts.h5.copyWith(color: colors.text.primary),
              text: localization.field_phone_title,
              children: <TextSpan>[
                if (isRequired) const TextSpan(text: ' *'),
              ],
            ),
          ),
        ),
        Container(
          height: AppDimens.defaultInputHeight,
          decoration: BoxDecoration(
            color: colors.background.primary,
            borderRadius: BorderRadius.circular(AppDimens.borderRadiusSmall),
            border: Border.all(color: maybeError != null ? colors.error : colors.border.primary),
          ),
          child: IntlPhoneField(
            initialValue: initialValue,
            onChanged: onChangePhoneNumber,
            inputFormatters: <TextInputFormatter>[
              FilteringTextInputFormatter.digitsOnly,
            ],
            textAlignVertical: TextAlignVertical.bottom,
            decoration: InputDecoration(
              filled: false,
              hintText: localization.field_phone_hint,
              hintStyle: AppFonts.h4.copyWith(color: colors.text.hint),
              counterText: '',
              errorStyle: const TextStyle(fontSize: 0, height: 0),
              border: InputBorder.none,
              contentPadding: const EdgeInsets.symmetric(vertical: 10.5),
            ),
            pickerDialogStyle: PickerDialogStyle(
              backgroundColor: colors.background.secondary,
              countryCodeStyle: AppFonts.h4,
              countryNameStyle: AppFonts.h4,
              listTileDivider: const SizedBox.shrink(),
              searchFieldInputDecoration: InputDecoration(
                filled: true,
                fillColor: colors.background.primary,
                hintText: localization.field_phone_code_search_hint,
                hintStyle: AppFonts.h4.copyWith(color: colors.text.hint),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(AppDimens.borderRadiusSmall),
                  borderSide: BorderSide(color: colors.border.primary),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(AppDimens.borderRadiusSmall),
                  borderSide: BorderSide(color: colors.primary),
                ),
              ),
            ),
          ),
        ),
        if (maybeError != null) ...<Widget>[
          const SizedBox(height: AppDimens.spacerExtraSmall),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppDimens.spacerSmall),
            child: Text(
              maybeError,
              style: AppFonts.h6.copyWith(color: colors.error),
              maxLines: 1,
            ),
          ),
        ],
      ],
    );
  }
}
