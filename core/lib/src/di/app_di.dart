import 'package:core/core.dart';
import 'package:core/src/di/app_di.config.dart';
import 'package:data/data.dart';
import 'package:domain/domain.dart';
import 'package:navigation/navigation.dart';

final GetIt appLocator = GetIt.instance;

const String unauthScope = 'unauthScope';
const String authScope = 'authScope';

@InjectableInit(
  initializerName: 'init',
  preferRelativeImports: true,
  asExtension: true,
  includeMicroPackages: false,
  externalPackageModulesAfter: <ExternalModule>[
    ExternalModule(NavigationPackageModule),
    ExternalModule(DataPackageModule),
    ExternalModule(DomainPackageModule),
  ],
)
Future<void> configureDependencies({required Flavor flavor, required String deviceId}) async {
  appLocator.registerLazySingleton<AppConfig>(
    () => AppConfig.fromFlavor(
      flavor,
      deviceId: deviceId,
    ),
  );

  await appLocator.init();
}
