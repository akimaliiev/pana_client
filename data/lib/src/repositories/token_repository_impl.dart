part of repositories;

@Singleton(as: TokenRepository)
class TokenRepositoryImpl implements TokenRepository {
  final LocalSecureStorageProvider _secureStorageProvider;

  static const String _accessTokenKey = 'accessToken';
  static const String _refreshTokenKey = 'refreshToken';

  const TokenRepositoryImpl({
    required LocalSecureStorageProvider secureStorageProvider,
  }) : _secureStorageProvider = secureStorageProvider;

  @override
  Future<String?> get accessToken => _secureStorageProvider.read(key: _accessTokenKey);

  @override
  Future<String?> get refreshToken => _secureStorageProvider.read(key: _refreshTokenKey);

  @override
  Future<void> saveTokens({
    required String accessToken,
    required String refreshToken,
  }) async {
    await _secureStorageProvider.write(key: _accessTokenKey, value: accessToken);
    await _secureStorageProvider.write(key: _refreshTokenKey, value: refreshToken);
  }

  @override
  Future<void> deleteTokens() async {
    await _secureStorageProvider.delete(key: _accessTokenKey);
    await _secureStorageProvider.delete(key: _refreshTokenKey);
  }
}
