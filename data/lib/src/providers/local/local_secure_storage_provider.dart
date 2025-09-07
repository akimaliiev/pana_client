import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class LocalSecureStorageProvider {
  final FlutterSecureStorage _storage;

  const LocalSecureStorageProvider(this._storage);

  Future<void> write({
    required String key,
    required String value,
  }) =>
      _storage.write(key: key, value: value);

  Future<String?> read({required String key}) => _storage.read(key: key);

  Future<void> delete({required String key}) => _storage.delete(key: key);
}
