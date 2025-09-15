import 'models/customer_profile.dart';
import 'token_provider.dart';
import 'user_api.dart';

class UserRepository {
  UserRepository({UserApi? api, TokenProvider? tokens})
      : _api = api ?? UserApi(),
        _tokens = tokens ?? const SecureTokenProvider();

  final UserApi _api;
  final TokenProvider _tokens;

  Future<CustomerProfile> loadProfile() async {
    final token = await _tokens.readAccessToken();
    if (token == null || token.isEmpty) {
      throw UnauthorizedException('No access token');
    }
    return _api.getProfile(token);
  }
}
