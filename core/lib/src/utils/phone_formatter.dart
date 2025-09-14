abstract final class PhoneFormatter {
  static String format(String phone) => phone.replaceAll(RegExp(r'[^\d+]'), '');
}
