import 'package:core/core.dart';

@module
abstract class RegisterModule {
  @singleton
  AppEventBus get appEventBus => AppEventBus();

  @singleton
  AppEventNotifier appEventNotifier(AppEventBus bus) => bus;

  @singleton
  AppEventObserver appEventObserver(AppEventBus bus) => bus;
}
