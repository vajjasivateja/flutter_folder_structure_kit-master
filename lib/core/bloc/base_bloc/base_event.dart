part of 'base_bloc.dart';

@freezed
class BaseEvent with _$BaseEvent {
  const factory BaseEvent.errorMessage(String errorMessage) = _ErrorMessage;
  const factory BaseEvent.initrefereshDashboard() = InitRefreshDashBoard;
  const factory BaseEvent.changeFabInReminderDisplay(bool showFab) = ChangeFabInReminderDisplay;
}
