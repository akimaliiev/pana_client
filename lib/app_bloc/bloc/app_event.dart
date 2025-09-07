part of 'app_bloc.dart';

abstract class AppEvent {
  const AppEvent();
}

class CoreEventReceived extends AppEvent {
  final CoreEvent value;

  const CoreEventReceived(this.value);
}

class CoreUiEventReceived extends AppEvent {
  final CoreUiEvent value;

  const CoreUiEventReceived(this.value);
}

class DataEventReceived extends AppEvent {
  final DataEvent value;

  const DataEventReceived(this.value);
}

class Clear extends AppEvent {
  const Clear();
}

class Logout extends AppEvent {
  const Logout();
}
