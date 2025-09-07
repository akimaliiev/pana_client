//@GeneratedMicroModule;DataPackageModule;package:data/src/di/configure_dependencies.module.dart
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i687;

import 'package:core/core.dart' as _i494;
import 'package:data/src/di/api_module.dart' as _i737;
import 'package:data/src/di/local_data_module.dart' as _i967;
import 'package:data/src/providers/api/api_provider.dart' as _i357;
import 'package:data/src/providers/local/local_providers.dart' as _i37;
import 'package:data/src/providers/local/local_secure_storage_provider.dart'
    as _i3;
import 'package:data/src/providers/local/local_storage_provider.dart' as _i665;
import 'package:data/src/repositories/repositories.dart' as _i876;
import 'package:dio/dio.dart' as _i361;
import 'package:domain/domain.dart' as _i494;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i558;
import 'package:injectable/injectable.dart' as _i526;
import 'package:shared_preferences/shared_preferences.dart' as _i460;

class DataPackageModule extends _i526.MicroPackageModule {
// initializes the registration of main-scope dependencies inside of GetIt
  @override
  _i687.FutureOr<void> init(_i526.GetItHelper gh) async {
    final localDataModule = _$LocalDataModule();
    final apiModule = _$ApiModule();
    await gh.singletonAsync<_i460.SharedPreferences>(
      () => localDataModule.prefs,
      preResolve: true,
    );
    gh.singleton<_i558.FlutterSecureStorage>(
        () => localDataModule.secureStorage);
    gh.factory<_i665.LocalStorageProvider>(
        () => _i665.LocalStorageProvider(gh<_i460.SharedPreferences>()));
    gh.singleton<String>(
      () => apiModule.baseUrl,
      instanceName: 'BaseUrl',
    );
    gh.singleton<Map<String, dynamic>>(
      () => apiModule.headers,
      instanceName: 'Headers',
    );
    gh.factory<_i3.LocalSecureStorageProvider>(
        () => _i3.LocalSecureStorageProvider(gh<_i558.FlutterSecureStorage>()));
    gh.singleton<_i494.TokenRepository>(() => _i876.TokenRepositoryImpl(
        secureStorageProvider: gh<_i37.LocalSecureStorageProvider>()));
    gh.factory<_i357.ApiProvider>(() => apiModule.apiProvider(
          gh<_i494.AppEventNotifier>(),
          gh<String>(instanceName: 'BaseUrl'),
          gh<Map<String, dynamic>>(instanceName: 'Headers'),
          gh<_i494.TokenRepository>(),
        ));
    gh.singleton<_i361.Dio>(() => apiModule.dio(gh<_i357.ApiProvider>()));
  }
}

class _$LocalDataModule extends _i967.LocalDataModule {}

class _$ApiModule extends _i737.ApiModule {}
