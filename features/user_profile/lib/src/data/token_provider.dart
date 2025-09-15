import 'package:flutter_secure_storage/flutter_secure_storage.dart';

abstract class TokenProvider {
  Future<String?> readAccessToken();
}

class SecureTokenProvider implements TokenProvider {
  const SecureTokenProvider();
  static const _storage = FlutterSecureStorage();
  @override
  Future<String?> readAccessToken() => _storage.read(key: 'access_token');
}

class InMemoryTokenProvider implements TokenProvider {
  String? token;
  @override
  Future<String?> readAccessToken() async => token;
}
