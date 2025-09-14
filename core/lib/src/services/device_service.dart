import 'dart:ui';

abstract final class DeviceService {
  static Future<List<Locale>> fetchDeviceLocales() async {
    final List<Locale> result = PlatformDispatcher.instance.locales;

    return result;
  }
}
