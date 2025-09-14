import 'dart:async';

import 'package:core/core.dart';
import 'package:core_ui/core_ui.dart';
import 'package:data/data.dart';
import 'package:flutter/foundation.dart';

part 'app_event.dart';
part 'app_state.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  final AppLocalization _localization;
  final AppEventObserver _appEventObserver;

  StreamSubscription<CoreEvent>? _coreEventsSubscription;
  StreamSubscription<CoreUiEvent>? _coreUiEventsSubscription;
  StreamSubscription<DataEvent>? _dataEventsSubscription;

  AppBloc({
    required AppLocalization localization,
    required AppEventObserver appEventObserver,
  })  : _localization = localization,
        _appEventObserver = appEventObserver,
        super(const AppState.initial()) {
    on<CoreEventReceived>(_onCoreEventReceived);
    on<CoreUiEventReceived>(_onCoreUiEventReceived);
    on<DataEventReceived>(_onDataEventReceived);
    on<Clear>(_onClear);
    on<Logout>(_onLogout);

    _coreEventsSubscription = _appEventObserver.observe<CoreEvent>(
      (CoreEvent event) => add(CoreEventReceived(event)),
    );

    _coreUiEventsSubscription = _appEventObserver.observe<CoreUiEvent>(
      (CoreUiEvent event) => add(CoreUiEventReceived(event)),
    );

    _dataEventsSubscription = _appEventObserver.observe<DataEvent>(
      (DataEvent event) => add(DataEventReceived(event)),
    );
  }

  void _onCoreUiEventReceived(
    CoreUiEventReceived event,
    Emitter<AppState> emit,
  ) {
    final CoreUiEvent result = event.value;

    switch (result) {
      case ShowToast():
        emit(
          state.copyWith(
            toastMessage: kDebugMode ? result.message : result.message,
            toastType: result.type,
          ),
        );
        break;
      case ShowErrorToast():
        final dynamic exception = result.exception;
        switch (exception) {
          case ClientErrorException():
            _showErrorToast(emit, _localization.core_errors_request_clientError);
          case ForbiddenException():
            _showErrorToast(emit, _localization.core_errors_request_forbidden);
          case InternetConnectionException():
            _showErrorToast(emit, _localization.core_errors_request_internetConnection);
          case NotContainsAllDataException():
            _showErrorToast(emit, _localization.core_errors_request_notContainsAllData);
          case NotFoundException():
            _showErrorToast(emit, _localization.core_errors_request_notFound);
          case ServerErrorException():
            _showErrorToast(emit, _localization.core_errors_request_serverError);
          case SessionExpiredException():
            _showErrorToast(emit, _localization.core_errors_request_sessionExpired);
          case SourceException():
            _showErrorToast(emit, _localization.core_errors_request_source);
          case DataMappingException():
            _showErrorToast(emit, _localization.core_errors_dataMapping_source);
          default:
            _showErrorToast(emit, _localization.core_errors_unknown);
        }

        emit(
          state.copyWith(
            toastMessage: kDebugMode ? result.message : result.message,
            toastType: ToastType.error,
          ),
        );
        break;
    }
  }

  void _onCoreEventReceived(
    CoreEventReceived event,
    Emitter<AppState> emit,
  ) {
    final CoreEvent result = event.value;

    switch (result) {
      case InternetConnectionLostEvent():
        break;
    }
  }

  void _onDataEventReceived(
    DataEventReceived event,
    Emitter<AppState> emit,
  ) {
    final DataEvent result = event.value;

    switch (result) {
      case SessionExpiredEvent():
        add(const Logout());
        break;
    }
  }

  void _onClear(
    Clear event,
    Emitter<AppState> emit,
  ) {
    emit(
      state.copyWith(
        toastMessage: '',
        toastType: ToastType.success,
      ),
    );
  }

  Future<void> _onLogout(
    Logout event,
    Emitter<AppState> emit,
  ) async {
    //TODO(Denis): Realize logout logic
  }

  @override
  Future<void> close() async {
    await _coreUiEventsSubscription?.cancel();
    await _coreEventsSubscription?.cancel();
    await _dataEventsSubscription?.cancel();

    await super.close();
  }

  void _showErrorToast(Emitter<AppState> emit, String message) {
    emit(state.copyWith(toastMessage: message, toastType: ToastType.error));
  }
}
