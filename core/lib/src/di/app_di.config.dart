// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:data/data.dart' as _i437;
import 'package:domain/domain.dart' as _i494;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:navigation/navigation.dart' as _i1058;

import '../../core.dart' as _i943;
import 'register_module.dart' as _i291;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    gh.singleton<_i943.AppEventBus>(() => registerModule.appEventBus);
    gh.singleton<_i943.AppEventNotifier>(
        () => registerModule.appEventNotifier(gh<_i943.AppEventBus>()));
    gh.singleton<_i943.AppEventObserver>(
        () => registerModule.appEventObserver(gh<_i943.AppEventBus>()));
    await _i1058.NavigationPackageModule().init(gh);
    await _i437.DataPackageModule().init(gh);
    await _i494.DomainPackageModule().init(gh);
    return this;
  }
}

class _$RegisterModule extends _i291.RegisterModule {}
