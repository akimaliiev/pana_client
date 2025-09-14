import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localization_ru.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalization
/// returned by `AppLocalization.of(context)`.
///
/// Applications need to include `AppLocalization.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'generated/app_localization.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalization.localizationsDelegates,
///   supportedLocales: AppLocalization.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalization.supportedLocales
/// property.
abstract class AppLocalization {
  AppLocalization(String locale)
      : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalization of(BuildContext context) {
    return Localizations.of<AppLocalization>(context, AppLocalization)!;
  }

  static const LocalizationsDelegate<AppLocalization> delegate =
      _AppLocalizationDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[Locale('ru')];

  /// No description provided for @common_appName.
  ///
  /// In ru, this message translates to:
  /// **'Qazaq Travel'**
  String get common_appName;

  /// No description provided for @common_cancel.
  ///
  /// In ru, this message translates to:
  /// **'Отмена'**
  String get common_cancel;

  /// No description provided for @common_close.
  ///
  /// In ru, this message translates to:
  /// **'Закрыть'**
  String get common_close;

  /// No description provided for @common_save.
  ///
  /// In ru, this message translates to:
  /// **'Сохранить'**
  String get common_save;

  /// No description provided for @common_back.
  ///
  /// In ru, this message translates to:
  /// **'Назад'**
  String get common_back;

  /// No description provided for @common_and.
  ///
  /// In ru, this message translates to:
  /// **'и'**
  String get common_and;

  /// No description provided for @core_errors_unknown.
  ///
  /// In ru, this message translates to:
  /// **'Что-то пошло не так. Пожалуйста, попробуйте еще раз'**
  String get core_errors_unknown;

  /// No description provided for @core_errors_request_clientError.
  ///
  /// In ru, this message translates to:
  /// **'Что-то пошло не так. Пожалуйста, попробуйте еще раз.'**
  String get core_errors_request_clientError;

  /// No description provided for @core_errors_request_forbidden.
  ///
  /// In ru, this message translates to:
  /// **'У вас нет прав для выполнения этого действия.'**
  String get core_errors_request_forbidden;

  /// No description provided for @core_errors_request_internetConnection.
  ///
  /// In ru, this message translates to:
  /// **'Нет подключения к интернету. Проверьте соединение и повторите попытку.'**
  String get core_errors_request_internetConnection;

  /// No description provided for @core_errors_request_notContainsAllData.
  ///
  /// In ru, this message translates to:
  /// **'Получены неполные данные. Пожалуйста, попробуйте позже.'**
  String get core_errors_request_notContainsAllData;

  /// No description provided for @core_errors_request_notFound.
  ///
  /// In ru, this message translates to:
  /// **'Запрашиваемый ресурс не найден.'**
  String get core_errors_request_notFound;

  /// No description provided for @core_errors_request_serverError.
  ///
  /// In ru, this message translates to:
  /// **'Произошла ошибка на сервере. Мы уже работаем над этим.'**
  String get core_errors_request_serverError;

  /// No description provided for @core_errors_request_sessionExpired.
  ///
  /// In ru, this message translates to:
  /// **'Ваша сессия истекла. Пожалуйста, войдите снова.'**
  String get core_errors_request_sessionExpired;

  /// No description provided for @core_errors_request_source.
  ///
  /// In ru, this message translates to:
  /// **'Произошла непредвиденная ошибка. Пожалуйста, попробуйте еще раз.'**
  String get core_errors_request_source;

  /// No description provided for @core_errors_dataMapping_source.
  ///
  /// In ru, this message translates to:
  /// **'Ошибка обработки полученных данных. Попробуйте обновить приложение.'**
  String get core_errors_dataMapping_source;

  /// No description provided for @field_phone_title.
  ///
  /// In ru, this message translates to:
  /// **'Ваш номер телефона'**
  String get field_phone_title;

  /// No description provided for @field_phone_hint.
  ///
  /// In ru, this message translates to:
  /// **'123 456 789'**
  String get field_phone_hint;

  /// No description provided for @field_phone_code_search_hint.
  ///
  /// In ru, this message translates to:
  /// **'Введите навание страны'**
  String get field_phone_code_search_hint;

  /// No description provided for @field_email_title.
  ///
  /// In ru, this message translates to:
  /// **'Email'**
  String get field_email_title;

  /// No description provided for @field_email_hint.
  ///
  /// In ru, this message translates to:
  /// **'Ваш email'**
  String get field_email_hint;

  /// No description provided for @field_firstName_title.
  ///
  /// In ru, this message translates to:
  /// **'Имя'**
  String get field_firstName_title;

  /// No description provided for @field_firstName_hint.
  ///
  /// In ru, this message translates to:
  /// **'Ваше имя'**
  String get field_firstName_hint;

  /// No description provided for @field_lastName_title.
  ///
  /// In ru, this message translates to:
  /// **'Фамилия'**
  String get field_lastName_title;

  /// No description provided for @field_lastName_hint.
  ///
  /// In ru, this message translates to:
  /// **'Ваша фамилия'**
  String get field_lastName_hint;

  /// No description provided for @field_code_hint.
  ///
  /// In ru, this message translates to:
  /// **'Код действителен в течение 15 минут'**
  String get field_code_hint;

  /// No description provided for @form_code_description.
  ///
  /// In ru, this message translates to:
  /// **'Код отправлен на номер \n{number}'**
  String form_code_description(String number);

  /// No description provided for @splash_subtitle.
  ///
  /// In ru, this message translates to:
  /// **'Открой красоту Казахстана'**
  String get splash_subtitle;

  /// No description provided for @signUp_inputPhone_title.
  ///
  /// In ru, this message translates to:
  /// **'Создать аккаунт'**
  String get signUp_inputPhone_title;

  /// No description provided for @signUp_inputPhone_subtitle.
  ///
  /// In ru, this message translates to:
  /// **'Присоединяйтесь к QAZAQ TRAVEL'**
  String get signUp_inputPhone_subtitle;

  /// No description provided for @signUp_inputPhone_action_sendCode.
  ///
  /// In ru, this message translates to:
  /// **'Получить код'**
  String get signUp_inputPhone_action_sendCode;

  /// No description provided for @signUp_inputPhone_action_signInGuest.
  ///
  /// In ru, this message translates to:
  /// **'Продолжить как гость'**
  String get signUp_inputPhone_action_signInGuest;

  /// No description provided for @signUp_inputPhone_action_signIn_title.
  ///
  /// In ru, this message translates to:
  /// **'Войти'**
  String get signUp_inputPhone_action_signIn_title;

  /// No description provided for @signUp_inputPhone_action_signIn_hint.
  ///
  /// In ru, this message translates to:
  /// **'Уже есть аккаунт?'**
  String get signUp_inputPhone_action_signIn_hint;

  /// No description provided for @signUp_userData_agreeWith.
  ///
  /// In ru, this message translates to:
  /// **'Я согласен с'**
  String get signUp_userData_agreeWith;

  /// No description provided for @signUp_userData_termsLink.
  ///
  /// In ru, this message translates to:
  /// **'условиями использования'**
  String get signUp_userData_termsLink;

  /// No description provided for @signUp_userData_privacyLink.
  ///
  /// In ru, this message translates to:
  /// **'политикой конфиденциальности'**
  String get signUp_userData_privacyLink;

  /// No description provided for @signUp_userData_marketingAgreement.
  ///
  /// In ru, this message translates to:
  /// **'Я хочу получать уведомления о новинках, специальных предложениях и акциях от QAZAQ TRAVEL'**
  String get signUp_userData_marketingAgreement;

  /// No description provided for @signUp_userData_action_signUp.
  ///
  /// In ru, this message translates to:
  /// **'Зарегистрироваться'**
  String get signUp_userData_action_signUp;

  /// No description provided for @signUp_userData_action_signInGuest.
  ///
  /// In ru, this message translates to:
  /// **'Продолжить как гость'**
  String get signUp_userData_action_signInGuest;

  /// No description provided for @signUp_userData_action_signIn_title.
  ///
  /// In ru, this message translates to:
  /// **'Войти'**
  String get signUp_userData_action_signIn_title;

  /// No description provided for @signUp_userData_action_signIn_hint.
  ///
  /// In ru, this message translates to:
  /// **'Уже есть аккаунт?'**
  String get signUp_userData_action_signIn_hint;

  /// No description provided for @auth_title.
  ///
  /// In ru, this message translates to:
  /// **'QAZAQ TRAVEL'**
  String get auth_title;

  /// No description provided for @auth_description.
  ///
  /// In ru, this message translates to:
  /// **'Чтобы продолжить, войдите, зарегистрируйтесь или используйте гостевой режим'**
  String get auth_description;

  /// No description provided for @auth_action_signIn.
  ///
  /// In ru, this message translates to:
  /// **'Войти'**
  String get auth_action_signIn;

  /// No description provided for @auth_action_signUp.
  ///
  /// In ru, this message translates to:
  /// **'Создать аккаунт'**
  String get auth_action_signUp;

  /// No description provided for @auth_action_signInGuest.
  ///
  /// In ru, this message translates to:
  /// **'Продолжить как гость сейчас'**
  String get auth_action_signInGuest;

  /// No description provided for @auth_error_nameTooShort.
  ///
  /// In ru, this message translates to:
  /// **'Имя слишком короткое'**
  String get auth_error_nameTooShort;

  /// No description provided for @auth_error_lastNameTooShort.
  ///
  /// In ru, this message translates to:
  /// **'Фамилия слишком короткая'**
  String get auth_error_lastNameTooShort;

  /// No description provided for @auth_error_invalidCode_title.
  ///
  /// In ru, this message translates to:
  /// **'Неверный код'**
  String get auth_error_invalidCode_title;

  /// No description provided for @auth_error_invalidEmail.
  ///
  /// In ru, this message translates to:
  /// **'Неверный формат email адреса'**
  String get auth_error_invalidEmail;

  /// No description provided for @auth_error_invalidPhone.
  ///
  /// In ru, this message translates to:
  /// **'Неверный формат номера телефона'**
  String get auth_error_invalidPhone;

  /// No description provided for @auth_error_nameInvalidLength.
  ///
  /// In ru, this message translates to:
  /// **'Имя должно содержать от 2 до 50 символов'**
  String get auth_error_nameInvalidLength;

  /// No description provided for @auth_error_nameInvalidChars.
  ///
  /// In ru, this message translates to:
  /// **'Имя может содержать только буквы и дефис'**
  String get auth_error_nameInvalidChars;

  /// No description provided for @auth_error_lastNameInvalidLength.
  ///
  /// In ru, this message translates to:
  /// **'Фамилия должна содержать от 2 до 50 символов'**
  String get auth_error_lastNameInvalidLength;

  /// No description provided for @auth_error_lastNameInvalidChars.
  ///
  /// In ru, this message translates to:
  /// **'Фамилия может содержать только буквы и дефис'**
  String get auth_error_lastNameInvalidChars;

  /// No description provided for @signIn_inputPhone_title.
  ///
  /// In ru, this message translates to:
  /// **'Войти в QAZAQ TRAVEL'**
  String get signIn_inputPhone_title;

  /// No description provided for @signIn_inputPhone_subtitle.
  ///
  /// In ru, this message translates to:
  /// **'Добро пожаловать обратно!'**
  String get signIn_inputPhone_subtitle;

  /// No description provided for @signIn_inputPhone_action_sendCode.
  ///
  /// In ru, this message translates to:
  /// **'Получить код'**
  String get signIn_inputPhone_action_sendCode;

  /// No description provided for @signIn_inputPhone_action_signInGuest.
  ///
  /// In ru, this message translates to:
  /// **'Продолжить как гость'**
  String get signIn_inputPhone_action_signInGuest;

  /// No description provided for @signIn_inputPhone_noAccount.
  ///
  /// In ru, this message translates to:
  /// **'Нет аккаунта?'**
  String get signIn_inputPhone_noAccount;

  /// No description provided for @signIn_inputPhone_action_signUp.
  ///
  /// In ru, this message translates to:
  /// **'Зарегистрироваться'**
  String get signIn_inputPhone_action_signUp;

  /// No description provided for @signIn_confirmCode_title.
  ///
  /// In ru, this message translates to:
  /// **'Введите код из SMS'**
  String get signIn_confirmCode_title;

  /// No description provided for @signIn_confirmCode_action_confirmCode_title.
  ///
  /// In ru, this message translates to:
  /// **'Подтвердить код'**
  String get signIn_confirmCode_action_confirmCode_title;

  /// No description provided for @signIn_confirmCode_action_resendCode_timer_title.
  ///
  /// In ru, this message translates to:
  /// **'Не получили код?'**
  String get signIn_confirmCode_action_resendCode_timer_title;

  /// No description provided for @signIn_confirmCode_action_resendCode_title.
  ///
  /// In ru, this message translates to:
  /// **'Отправить код повторно'**
  String get signIn_confirmCode_action_resendCode_title;

  /// No description provided for @signIn_confirmCode_action_resendCode_inactive_title.
  ///
  /// In ru, this message translates to:
  /// **'Повторная отправка через {amount} сек'**
  String signIn_confirmCode_action_resendCode_inactive_title(int amount);
}

class _AppLocalizationDelegate extends LocalizationsDelegate<AppLocalization> {
  const _AppLocalizationDelegate();

  @override
  Future<AppLocalization> load(Locale locale) {
    return SynchronousFuture<AppLocalization>(lookupAppLocalization(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['ru'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationDelegate old) => false;
}

AppLocalization lookupAppLocalization(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ru':
      return AppLocalizationRu();
  }

  throw FlutterError(
      'AppLocalization.delegate failed to load unsupported locale "$locale". This is likely '
      'an issue with the localizations generation tool. Please file an issue '
      'on GitHub with a reproducible sample app and the gen-l10n configuration '
      'that was used.');
}
