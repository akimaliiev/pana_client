part of repositories;

@Singleton(as: AppRepository)
class AppRepositoryImpl implements AppRepository {
  // final LocalSecureStorageProvider _secureStorageProvider;
  //
  // const AuthRepositoryImpl({
  //   required LocalSecureStorageProvider secureStorageProvider,
  // }) : _secureStorageProvider = secureStorageProvider;

  @override
  Future<String> get deviceId async => IdService.deviceId;
}
