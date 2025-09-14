part of repositories;

abstract interface class AppRepository {
  Future<String> get deviceId;
}
