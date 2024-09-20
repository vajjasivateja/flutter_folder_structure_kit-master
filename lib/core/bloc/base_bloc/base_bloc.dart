import 'package:bloc/bloc.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:t_store/core/common/logger_dev.dart';

part 'base_bloc.freezed.dart';
part 'base_event.dart';
part 'base_state.dart';

class BaseBloc extends Bloc<BaseEvent, BaseState> {
  BaseBloc() : super(const BaseState.initial()) {
    on<BaseEvent>((event, emit) => event.when(
          errorMessage: (errorMessage) => logger.d(errorMessage),
          initrefereshDashboard: () {
            emit(const BaseState.initial());
            emit(const BaseState.refereshDashboard());
          },
          changeFabInReminderDisplay: (bool showFab) {
            emit(BaseState.showFabInReminder(showFab));
          },
        ));
  }
}
