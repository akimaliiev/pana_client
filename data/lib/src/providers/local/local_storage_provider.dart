import 'package:core/core.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocalStorageProvider {
  final SharedPreferences _prefs;

  const LocalStorageProvider(this._prefs);

  Future<void> write<T extends Object>({
    required String key,
    required T value,
  }) async {
    if (value is String) {
      await _prefs.setString(key, value);
    } else if (value is int) {
      await _prefs.setInt(key, value);
    } else if (value is double) {
      await _prefs.setDouble(key, value);
    } else if (value is bool) {
      await _prefs.setBool(key, value);
    } else if (value is List<String>) {
      await _prefs.setStringList(key, value);
    } else {
      throw AppException(message: 'Type ${T.runtimeType} is not supported');
    }
  }

  T? read<T extends Object>({
    required String key,
  }) {
    final dynamic value = _prefs.get(key);
    if (value is T) {
      return value;
    }
    return null;
  }

  Future<void> delete({
    required String key,
  }) async {
    await _prefs.remove(key);
  }
}
