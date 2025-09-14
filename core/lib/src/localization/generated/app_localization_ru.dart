// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localization.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class AppLocalizationRu extends AppLocalization {
  AppLocalizationRu([String locale = 'ru']) : super(locale);

  @override
  String get common_appName => 'Qazaq Travel';

  @override
  String get common_cancel => 'Отмена';

  @override
  String get common_close => 'Закрыть';

  @override
  String get common_save => 'Сохранить';

  @override
  String get common_back => 'Назад';

  @override
  String get common_and => 'и';

  @override
  String get core_errors_unknown =>
      'Что-то пошло не так. Пожалуйста, попробуйте еще раз';

  @override
  String get core_errors_request_clientError =>
      'Что-то пошло не так. Пожалуйста, попробуйте еще раз.';

  @override
  String get core_errors_request_forbidden =>
      'У вас нет прав для выполнения этого действия.';

  @override
  String get core_errors_request_internetConnection =>
      'Нет подключения к интернету. Проверьте соединение и повторите попытку.';

  @override
  String get core_errors_request_notContainsAllData =>
      'Получены неполные данные. Пожалуйста, попробуйте позже.';

  @override
  String get core_errors_request_notFound => 'Запрашиваемый ресурс не найден.';

  @override
  String get core_errors_request_serverError =>
      'Произошла ошибка на сервере. Мы уже работаем над этим.';

  @override
  String get core_errors_request_sessionExpired =>
      'Ваша сессия истекла. Пожалуйста, войдите снова.';

  @override
  String get core_errors_request_source =>
      'Произошла непредвиденная ошибка. Пожалуйста, попробуйте еще раз.';

  @override
  String get core_errors_dataMapping_source =>
      'Ошибка обработки полученных данных. Попробуйте обновить приложение.';

  @override
  String get field_phone_title => 'Ваш номер телефона';

  @override
  String get field_phone_hint => '123 456 789';

  @override
  String get field_phone_code_search_hint => 'Введите навание страны';

  @override
  String get field_email_title => 'Email';

  @override
  String get field_email_hint => 'Ваш email';

  @override
  String get field_firstName_title => 'Имя';

  @override
  String get field_firstName_hint => 'Ваше имя';

  @override
  String get field_lastName_title => 'Фамилия';

  @override
  String get field_lastName_hint => 'Ваша фамилия';

  @override
  String get field_code_hint => 'Код действителен в течение 15 минут';

  @override
  String form_code_description(String number) {
    return 'Код отправлен на номер \n$number';
  }

  @override
  String get splash_subtitle => 'Открой красоту Казахстана';

  @override
  String get signUp_inputPhone_title => 'Создать аккаунт';

  @override
  String get signUp_inputPhone_subtitle => 'Присоединяйтесь к QAZAQ TRAVEL';

  @override
  String get signUp_inputPhone_action_sendCode => 'Получить код';

  @override
  String get signUp_inputPhone_action_signInGuest => 'Продолжить как гость';

  @override
  String get signUp_inputPhone_action_signIn_title => 'Войти';

  @override
  String get signUp_inputPhone_action_signIn_hint => 'Уже есть аккаунт?';

  @override
  String get signUp_userData_agreeWith => 'Я согласен с';

  @override
  String get signUp_userData_termsLink => 'условиями использования';

  @override
  String get signUp_userData_privacyLink => 'политикой конфиденциальности';

  @override
  String get signUp_userData_marketingAgreement =>
      'Я хочу получать уведомления о новинках, специальных предложениях и акциях от QAZAQ TRAVEL';

  @override
  String get signUp_userData_action_signUp => 'Зарегистрироваться';

  @override
  String get signUp_userData_action_signInGuest => 'Продолжить как гость';

  @override
  String get signUp_userData_action_signIn_title => 'Войти';

  @override
  String get signUp_userData_action_signIn_hint => 'Уже есть аккаунт?';

  @override
  String get auth_title => 'QAZAQ TRAVEL';

  @override
  String get auth_description =>
      'Чтобы продолжить, войдите, зарегистрируйтесь или используйте гостевой режим';

  @override
  String get auth_action_signIn => 'Войти';

  @override
  String get auth_action_signUp => 'Создать аккаунт';

  @override
  String get auth_action_signInGuest => 'Продолжить как гость сейчас';

  @override
  String get auth_error_nameTooShort => 'Имя слишком короткое';

  @override
  String get auth_error_lastNameTooShort => 'Фамилия слишком короткая';

  @override
  String get auth_error_invalidCode_title => 'Неверный код';

  @override
  String get auth_error_invalidEmail => 'Неверный формат email адреса';

  @override
  String get auth_error_invalidPhone => 'Неверный формат номера телефона';

  @override
  String get auth_error_nameInvalidLength =>
      'Имя должно содержать от 2 до 50 символов';

  @override
  String get auth_error_nameInvalidChars =>
      'Имя может содержать только буквы и дефис';

  @override
  String get auth_error_lastNameInvalidLength =>
      'Фамилия должна содержать от 2 до 50 символов';

  @override
  String get auth_error_lastNameInvalidChars =>
      'Фамилия может содержать только буквы и дефис';

  @override
  String get signIn_inputPhone_title => 'Войти в QAZAQ TRAVEL';

  @override
  String get signIn_inputPhone_subtitle => 'Добро пожаловать обратно!';

  @override
  String get signIn_inputPhone_action_sendCode => 'Получить код';

  @override
  String get signIn_inputPhone_action_signInGuest => 'Продолжить как гость';

  @override
  String get signIn_inputPhone_noAccount => 'Нет аккаунта?';

  @override
  String get signIn_inputPhone_action_signUp => 'Зарегистрироваться';

  @override
  String get signIn_confirmCode_title => 'Введите код из SMS';

  @override
  String get signIn_confirmCode_action_confirmCode_title => 'Подтвердить код';

  @override
  String get signIn_confirmCode_action_resendCode_timer_title =>
      'Не получили код?';

  @override
  String get signIn_confirmCode_action_resendCode_title =>
      'Отправить код повторно';

  @override
  String signIn_confirmCode_action_resendCode_inactive_title(int amount) {
    return 'Повторная отправка через $amount сек';
  }
}
