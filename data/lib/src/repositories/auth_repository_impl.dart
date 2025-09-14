part of repositories;

@Singleton(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {
  late int _customerId;

  final AuthApiProvider _apiProvider;
  final TokenRepository _tokenRepository;
  final AppRepository _appRepository;

  AuthRepositoryImpl({
    required AuthApiProvider apiProvider,
    required TokenRepository tokenRepository,
    required AppRepository appRepository,
  })  : _apiProvider = apiProvider,
        _tokenRepository = tokenRepository,
        _appRepository = appRepository;

  @override
  Future<bool> get hasSession async => _tokenRepository.hasTokens;

  @override
  Future<void> sendCode({required String phone}) async {
    final List<Locale> locales = await DeviceService.fetchDeviceLocales();
    final String locale = locales.first.languageCode;

    final String deviceId = await _appRepository.deviceId;

    final SendTokenRequest request = SendTokenRequest(
      phone: phone,
      deviceId: deviceId,
    );

    final ApiResponse<SendTokenResponse> response = await _apiProvider.sendCode(
      locale: locale,
      request: request,
    );

    _customerId = response.data.customerId;
  }

  @override
  Future<void> verifyCode({
    required String code,
  }) async {
    final VerifyCodeRequest request = VerifyCodeRequest(
      customerId: _customerId,
      code: code,
    );

    final ApiResponse<VerifyCodeResponse> response =
        await _apiProvider.verifyCode(request: request);

    final VerifyCodeResponse data = response.data;

    await _tokenRepository.saveTokens(
      accessToken: data.token.accessToken,
      refreshToken: data.token.refreshToken,
    );
  }

  @override
  Future<UserModel> signUp({
    required String email,
    required String firstName,
    required String lastName,
    required bool acceptNewsletter,
  }) async {
    final List<Locale> locales = await DeviceService.fetchDeviceLocales();
    final String locale = locales.first.languageCode;

    final SignUpRequest request = SignUpRequest(
      email: email,
      firstName: firstName,
      lastName: lastName,
      acceptNewsletter: acceptNewsletter,
    );

    final ApiResponse<SignUpResponse> response = await _apiProvider.signUp(
      locale: locale,
      customerId: _customerId,
      request: request,
    );

    final SignUpResponse data = response.data;

    final TokenDto tokenDto = data.token;

    await _tokenRepository.saveTokens(
      accessToken: tokenDto.accessToken,
      refreshToken: tokenDto.refreshToken,
    );

    return data.customer.toDomain;
  }

  @override
  Future<UserModel> signInGuest() async {
    final List<Locale> locales = await DeviceService.fetchDeviceLocales();
    final String locale = locales.first.languageCode;

    final String deviceId = await _appRepository.deviceId;

    final SignInGuestRequest request = SignInGuestRequest(deviceId: deviceId);

    final ApiResponse<SignInGuestResponse> response = await _apiProvider.signInGuest(
      locale: locale,
      request: request,
    );

    final SignInGuestResponse data = response.data;

    await _tokenRepository.saveTokens(
      accessToken: data.token.accessToken,
      refreshToken: data.token.refreshToken,
    );

    return data.customer.toDomain;
  }

  @override
  Future<void> resendVerificationCode() async {
    final ResendCodeRequest request = ResendCodeRequest(customerId: _customerId);

    await _apiProvider.resendVerificationCode(request: request);
  }

  @override
  Future<void> signOut() async {
    try {
      await _apiProvider.signOut();
    } finally {
      await _tokenRepository.deleteTokens();
    }
  }
}
