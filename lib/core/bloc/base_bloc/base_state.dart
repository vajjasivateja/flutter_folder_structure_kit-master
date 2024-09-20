part of 'base_bloc.dart';

@freezed
class BaseState with _$BaseState {
  const factory BaseState.initial() = Initial;
  const factory BaseState.loading() = Loading;
  const factory BaseState.loaded(Object data) = Loaded;
  const factory BaseState.error(String message) = Error;
  const factory BaseState.refereshDashboard() = RefreshDashBoard;
  const factory BaseState.showFabInReminder(bool showFab) = ShowFabInReminder;
}
