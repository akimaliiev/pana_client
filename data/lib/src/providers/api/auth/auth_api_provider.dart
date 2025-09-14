import 'package:core/core.dart';
import 'package:data/src/dtos/auth/auth.dart';
import 'package:data/src/dtos/core/api/api_core_dtos.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'auth_api_provider.g.dart';

@RestApi()
@injectable
abstract class AuthApiProvider {
  @factoryMethod
  factory AuthApiProvider(Dio dio) = _AuthApiProvider;

  @POST('/app/v1/customer/auth/preregister-or-login')
  Future<ApiResponse<SendTokenResponse>> sendCode({
    @Header('x-locale') required String locale,
    @Body() required SendTokenRequest request,
  });

  @POST('/app/v1/customer/auth/guest')
  Future<ApiResponse<SignInGuestResponse>> signInGuest({
    @Header('x-locale') required String locale,
    @Body() required SignInGuestRequest request,
  });

  @POST('/app/v1/customer/auth/register-complete/{customerId}')
  Future<ApiResponse<SignUpResponse>> signUp({
    @Header('x-locale') required String locale,
    @Path('customerId') required int customerId,
    @Body() required SignUpRequest request,
  });

  @POST('/app/v1/customer/auth/verify')
  Future<ApiResponse<VerifyCodeResponse>> verifyCode({
    @Body() required VerifyCodeRequest request,
  });

  @POST('/app/v1/customer/auth/resend-code')
  Future<ApiResponse<void>> resendVerificationCode({
    @Body() required ResendCodeRequest request,
  });

  @GET('/app/v1/customer/auth/logout')
  Future<ApiResponse<void>> signOut();

  @POST('/app/v1/customer/auth/refresh')
  Future<ApiResponse<TokenDto>> refreshToken({
    @Body() required RefreshTokenRequest request,
  });
}
