part of repositories;

abstract interface class TokenRepository {
  Future<bool> get hasTokens;

  Future<String?> get accessToken;

  Future<String?> get refreshToken;

  Future<void> deleteTokens();

  Future<void> saveTokens({
    required String accessToken,
    required String refreshToken,
  });
}
