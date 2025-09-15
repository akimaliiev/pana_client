import '../bloc/user_profile_event.dart';

String langLabel(LanguageOption l) => switch (l) {
      LanguageOption.ru => 'Русский',
      LanguageOption.kk => 'Қазақша',
      LanguageOption.en => 'English',
    };

String currLabel(CurrencyOption c) => switch (c) {
      CurrencyOption.kzt => '₸ Тенге',
      CurrencyOption.usd => '\$ Доллар',
      CurrencyOption.eur => '€ Евро',
    };
