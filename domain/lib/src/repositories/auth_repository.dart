part of repositories;

abstract interface class AuthRepository {
  Future<bool> get hasSession;

  Future<void> sendCode({
    required String phone,
  });

  Future<void> verifyCode({
    required String code,
  });

  Future<UserModel> signUp({
    required String email,
    required String firstName,
    required String lastName,
    required bool acceptNewsletter,
  });

  Future<UserModel> signInGuest();

  Future<void> resendVerificationCode();

  Future<void> signOut();
}
