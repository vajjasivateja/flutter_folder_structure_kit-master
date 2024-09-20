// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BaseEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String errorMessage) errorMessage,
    required TResult Function() initrefereshDashboard,
    required TResult Function(bool showFab) changeFabInReminderDisplay,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String errorMessage)? errorMessage,
    TResult? Function()? initrefereshDashboard,
    TResult? Function(bool showFab)? changeFabInReminderDisplay,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String errorMessage)? errorMessage,
    TResult Function()? initrefereshDashboard,
    TResult Function(bool showFab)? changeFabInReminderDisplay,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ErrorMessage value) errorMessage,
    required TResult Function(InitRefreshDashBoard value) initrefereshDashboard,
    required TResult Function(ChangeFabInReminderDisplay value)
        changeFabInReminderDisplay,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ErrorMessage value)? errorMessage,
    TResult? Function(InitRefreshDashBoard value)? initrefereshDashboard,
    TResult? Function(ChangeFabInReminderDisplay value)?
        changeFabInReminderDisplay,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ErrorMessage value)? errorMessage,
    TResult Function(InitRefreshDashBoard value)? initrefereshDashboard,
    TResult Function(ChangeFabInReminderDisplay value)?
        changeFabInReminderDisplay,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseEventCopyWith<$Res> {
  factory $BaseEventCopyWith(BaseEvent value, $Res Function(BaseEvent) then) =
      _$BaseEventCopyWithImpl<$Res, BaseEvent>;
}

/// @nodoc
class _$BaseEventCopyWithImpl<$Res, $Val extends BaseEvent>
    implements $BaseEventCopyWith<$Res> {
  _$BaseEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ErrorMessageImplCopyWith<$Res> {
  factory _$$ErrorMessageImplCopyWith(
          _$ErrorMessageImpl value, $Res Function(_$ErrorMessageImpl) then) =
      __$$ErrorMessageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$ErrorMessageImplCopyWithImpl<$Res>
    extends _$BaseEventCopyWithImpl<$Res, _$ErrorMessageImpl>
    implements _$$ErrorMessageImplCopyWith<$Res> {
  __$$ErrorMessageImplCopyWithImpl(
      _$ErrorMessageImpl _value, $Res Function(_$ErrorMessageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$ErrorMessageImpl(
      null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorMessageImpl implements _ErrorMessage {
  const _$ErrorMessageImpl(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'BaseEvent.errorMessage(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorMessageImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorMessageImplCopyWith<_$ErrorMessageImpl> get copyWith =>
      __$$ErrorMessageImplCopyWithImpl<_$ErrorMessageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String errorMessage) errorMessage,
    required TResult Function() initrefereshDashboard,
    required TResult Function(bool showFab) changeFabInReminderDisplay,
  }) {
    return errorMessage(this.errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String errorMessage)? errorMessage,
    TResult? Function()? initrefereshDashboard,
    TResult? Function(bool showFab)? changeFabInReminderDisplay,
  }) {
    return errorMessage?.call(this.errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String errorMessage)? errorMessage,
    TResult Function()? initrefereshDashboard,
    TResult Function(bool showFab)? changeFabInReminderDisplay,
    required TResult orElse(),
  }) {
    if (errorMessage != null) {
      return errorMessage(this.errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ErrorMessage value) errorMessage,
    required TResult Function(InitRefreshDashBoard value) initrefereshDashboard,
    required TResult Function(ChangeFabInReminderDisplay value)
        changeFabInReminderDisplay,
  }) {
    return errorMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ErrorMessage value)? errorMessage,
    TResult? Function(InitRefreshDashBoard value)? initrefereshDashboard,
    TResult? Function(ChangeFabInReminderDisplay value)?
        changeFabInReminderDisplay,
  }) {
    return errorMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ErrorMessage value)? errorMessage,
    TResult Function(InitRefreshDashBoard value)? initrefereshDashboard,
    TResult Function(ChangeFabInReminderDisplay value)?
        changeFabInReminderDisplay,
    required TResult orElse(),
  }) {
    if (errorMessage != null) {
      return errorMessage(this);
    }
    return orElse();
  }
}

abstract class _ErrorMessage implements BaseEvent {
  const factory _ErrorMessage(final String errorMessage) = _$ErrorMessageImpl;

  String get errorMessage;
  @JsonKey(ignore: true)
  _$$ErrorMessageImplCopyWith<_$ErrorMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InitRefreshDashBoardImplCopyWith<$Res> {
  factory _$$InitRefreshDashBoardImplCopyWith(_$InitRefreshDashBoardImpl value,
          $Res Function(_$InitRefreshDashBoardImpl) then) =
      __$$InitRefreshDashBoardImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitRefreshDashBoardImplCopyWithImpl<$Res>
    extends _$BaseEventCopyWithImpl<$Res, _$InitRefreshDashBoardImpl>
    implements _$$InitRefreshDashBoardImplCopyWith<$Res> {
  __$$InitRefreshDashBoardImplCopyWithImpl(_$InitRefreshDashBoardImpl _value,
      $Res Function(_$InitRefreshDashBoardImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitRefreshDashBoardImpl implements InitRefreshDashBoard {
  const _$InitRefreshDashBoardImpl();

  @override
  String toString() {
    return 'BaseEvent.initrefereshDashboard()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitRefreshDashBoardImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String errorMessage) errorMessage,
    required TResult Function() initrefereshDashboard,
    required TResult Function(bool showFab) changeFabInReminderDisplay,
  }) {
    return initrefereshDashboard();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String errorMessage)? errorMessage,
    TResult? Function()? initrefereshDashboard,
    TResult? Function(bool showFab)? changeFabInReminderDisplay,
  }) {
    return initrefereshDashboard?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String errorMessage)? errorMessage,
    TResult Function()? initrefereshDashboard,
    TResult Function(bool showFab)? changeFabInReminderDisplay,
    required TResult orElse(),
  }) {
    if (initrefereshDashboard != null) {
      return initrefereshDashboard();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ErrorMessage value) errorMessage,
    required TResult Function(InitRefreshDashBoard value) initrefereshDashboard,
    required TResult Function(ChangeFabInReminderDisplay value)
        changeFabInReminderDisplay,
  }) {
    return initrefereshDashboard(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ErrorMessage value)? errorMessage,
    TResult? Function(InitRefreshDashBoard value)? initrefereshDashboard,
    TResult? Function(ChangeFabInReminderDisplay value)?
        changeFabInReminderDisplay,
  }) {
    return initrefereshDashboard?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ErrorMessage value)? errorMessage,
    TResult Function(InitRefreshDashBoard value)? initrefereshDashboard,
    TResult Function(ChangeFabInReminderDisplay value)?
        changeFabInReminderDisplay,
    required TResult orElse(),
  }) {
    if (initrefereshDashboard != null) {
      return initrefereshDashboard(this);
    }
    return orElse();
  }
}

abstract class InitRefreshDashBoard implements BaseEvent {
  const factory InitRefreshDashBoard() = _$InitRefreshDashBoardImpl;
}

/// @nodoc
abstract class _$$ChangeFabInReminderDisplayImplCopyWith<$Res> {
  factory _$$ChangeFabInReminderDisplayImplCopyWith(
          _$ChangeFabInReminderDisplayImpl value,
          $Res Function(_$ChangeFabInReminderDisplayImpl) then) =
      __$$ChangeFabInReminderDisplayImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool showFab});
}

/// @nodoc
class __$$ChangeFabInReminderDisplayImplCopyWithImpl<$Res>
    extends _$BaseEventCopyWithImpl<$Res, _$ChangeFabInReminderDisplayImpl>
    implements _$$ChangeFabInReminderDisplayImplCopyWith<$Res> {
  __$$ChangeFabInReminderDisplayImplCopyWithImpl(
      _$ChangeFabInReminderDisplayImpl _value,
      $Res Function(_$ChangeFabInReminderDisplayImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showFab = null,
  }) {
    return _then(_$ChangeFabInReminderDisplayImpl(
      null == showFab
          ? _value.showFab
          : showFab // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ChangeFabInReminderDisplayImpl implements ChangeFabInReminderDisplay {
  const _$ChangeFabInReminderDisplayImpl(this.showFab);

  @override
  final bool showFab;

  @override
  String toString() {
    return 'BaseEvent.changeFabInReminderDisplay(showFab: $showFab)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeFabInReminderDisplayImpl &&
            (identical(other.showFab, showFab) || other.showFab == showFab));
  }

  @override
  int get hashCode => Object.hash(runtimeType, showFab);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeFabInReminderDisplayImplCopyWith<_$ChangeFabInReminderDisplayImpl>
      get copyWith => __$$ChangeFabInReminderDisplayImplCopyWithImpl<
          _$ChangeFabInReminderDisplayImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String errorMessage) errorMessage,
    required TResult Function() initrefereshDashboard,
    required TResult Function(bool showFab) changeFabInReminderDisplay,
  }) {
    return changeFabInReminderDisplay(showFab);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String errorMessage)? errorMessage,
    TResult? Function()? initrefereshDashboard,
    TResult? Function(bool showFab)? changeFabInReminderDisplay,
  }) {
    return changeFabInReminderDisplay?.call(showFab);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String errorMessage)? errorMessage,
    TResult Function()? initrefereshDashboard,
    TResult Function(bool showFab)? changeFabInReminderDisplay,
    required TResult orElse(),
  }) {
    if (changeFabInReminderDisplay != null) {
      return changeFabInReminderDisplay(showFab);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ErrorMessage value) errorMessage,
    required TResult Function(InitRefreshDashBoard value) initrefereshDashboard,
    required TResult Function(ChangeFabInReminderDisplay value)
        changeFabInReminderDisplay,
  }) {
    return changeFabInReminderDisplay(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ErrorMessage value)? errorMessage,
    TResult? Function(InitRefreshDashBoard value)? initrefereshDashboard,
    TResult? Function(ChangeFabInReminderDisplay value)?
        changeFabInReminderDisplay,
  }) {
    return changeFabInReminderDisplay?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ErrorMessage value)? errorMessage,
    TResult Function(InitRefreshDashBoard value)? initrefereshDashboard,
    TResult Function(ChangeFabInReminderDisplay value)?
        changeFabInReminderDisplay,
    required TResult orElse(),
  }) {
    if (changeFabInReminderDisplay != null) {
      return changeFabInReminderDisplay(this);
    }
    return orElse();
  }
}

abstract class ChangeFabInReminderDisplay implements BaseEvent {
  const factory ChangeFabInReminderDisplay(final bool showFab) =
      _$ChangeFabInReminderDisplayImpl;

  bool get showFab;
  @JsonKey(ignore: true)
  _$$ChangeFabInReminderDisplayImplCopyWith<_$ChangeFabInReminderDisplayImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BaseState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Object data) loaded,
    required TResult Function(String message) error,
    required TResult Function() refereshDashboard,
    required TResult Function(bool showFab) showFabInReminder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Object data)? loaded,
    TResult? Function(String message)? error,
    TResult? Function()? refereshDashboard,
    TResult? Function(bool showFab)? showFabInReminder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Object data)? loaded,
    TResult Function(String message)? error,
    TResult Function()? refereshDashboard,
    TResult Function(bool showFab)? showFabInReminder,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Error value) error,
    required TResult Function(RefreshDashBoard value) refereshDashboard,
    required TResult Function(ShowFabInReminder value) showFabInReminder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(Error value)? error,
    TResult? Function(RefreshDashBoard value)? refereshDashboard,
    TResult? Function(ShowFabInReminder value)? showFabInReminder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(Error value)? error,
    TResult Function(RefreshDashBoard value)? refereshDashboard,
    TResult Function(ShowFabInReminder value)? showFabInReminder,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseStateCopyWith<$Res> {
  factory $BaseStateCopyWith(BaseState value, $Res Function(BaseState) then) =
      _$BaseStateCopyWithImpl<$Res, BaseState>;
}

/// @nodoc
class _$BaseStateCopyWithImpl<$Res, $Val extends BaseState>
    implements $BaseStateCopyWith<$Res> {
  _$BaseStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$BaseStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'BaseState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Object data) loaded,
    required TResult Function(String message) error,
    required TResult Function() refereshDashboard,
    required TResult Function(bool showFab) showFabInReminder,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Object data)? loaded,
    TResult? Function(String message)? error,
    TResult? Function()? refereshDashboard,
    TResult? Function(bool showFab)? showFabInReminder,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Object data)? loaded,
    TResult Function(String message)? error,
    TResult Function()? refereshDashboard,
    TResult Function(bool showFab)? showFabInReminder,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Error value) error,
    required TResult Function(RefreshDashBoard value) refereshDashboard,
    required TResult Function(ShowFabInReminder value) showFabInReminder,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(Error value)? error,
    TResult? Function(RefreshDashBoard value)? refereshDashboard,
    TResult? Function(ShowFabInReminder value)? showFabInReminder,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(Error value)? error,
    TResult Function(RefreshDashBoard value)? refereshDashboard,
    TResult Function(ShowFabInReminder value)? showFabInReminder,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements BaseState {
  const factory Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$BaseStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'BaseState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Object data) loaded,
    required TResult Function(String message) error,
    required TResult Function() refereshDashboard,
    required TResult Function(bool showFab) showFabInReminder,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Object data)? loaded,
    TResult? Function(String message)? error,
    TResult? Function()? refereshDashboard,
    TResult? Function(bool showFab)? showFabInReminder,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Object data)? loaded,
    TResult Function(String message)? error,
    TResult Function()? refereshDashboard,
    TResult Function(bool showFab)? showFabInReminder,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Error value) error,
    required TResult Function(RefreshDashBoard value) refereshDashboard,
    required TResult Function(ShowFabInReminder value) showFabInReminder,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(Error value)? error,
    TResult? Function(RefreshDashBoard value)? refereshDashboard,
    TResult? Function(ShowFabInReminder value)? showFabInReminder,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(Error value)? error,
    TResult Function(RefreshDashBoard value)? refereshDashboard,
    TResult Function(ShowFabInReminder value)? showFabInReminder,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements BaseState {
  const factory Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Object data});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$BaseStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$LoadedImpl(
      null == data ? _value.data : data,
    ));
  }
}

/// @nodoc

class _$LoadedImpl implements Loaded {
  const _$LoadedImpl(this.data);

  @override
  final Object data;

  @override
  String toString() {
    return 'BaseState.loaded(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Object data) loaded,
    required TResult Function(String message) error,
    required TResult Function() refereshDashboard,
    required TResult Function(bool showFab) showFabInReminder,
  }) {
    return loaded(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Object data)? loaded,
    TResult? Function(String message)? error,
    TResult? Function()? refereshDashboard,
    TResult? Function(bool showFab)? showFabInReminder,
  }) {
    return loaded?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Object data)? loaded,
    TResult Function(String message)? error,
    TResult Function()? refereshDashboard,
    TResult Function(bool showFab)? showFabInReminder,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Error value) error,
    required TResult Function(RefreshDashBoard value) refereshDashboard,
    required TResult Function(ShowFabInReminder value) showFabInReminder,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(Error value)? error,
    TResult? Function(RefreshDashBoard value)? refereshDashboard,
    TResult? Function(ShowFabInReminder value)? showFabInReminder,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(Error value)? error,
    TResult Function(RefreshDashBoard value)? refereshDashboard,
    TResult Function(ShowFabInReminder value)? showFabInReminder,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class Loaded implements BaseState {
  const factory Loaded(final Object data) = _$LoadedImpl;

  Object get data;
  @JsonKey(ignore: true)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$BaseStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements Error {
  const _$ErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'BaseState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Object data) loaded,
    required TResult Function(String message) error,
    required TResult Function() refereshDashboard,
    required TResult Function(bool showFab) showFabInReminder,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Object data)? loaded,
    TResult? Function(String message)? error,
    TResult? Function()? refereshDashboard,
    TResult? Function(bool showFab)? showFabInReminder,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Object data)? loaded,
    TResult Function(String message)? error,
    TResult Function()? refereshDashboard,
    TResult Function(bool showFab)? showFabInReminder,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Error value) error,
    required TResult Function(RefreshDashBoard value) refereshDashboard,
    required TResult Function(ShowFabInReminder value) showFabInReminder,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(Error value)? error,
    TResult? Function(RefreshDashBoard value)? refereshDashboard,
    TResult? Function(ShowFabInReminder value)? showFabInReminder,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(Error value)? error,
    TResult Function(RefreshDashBoard value)? refereshDashboard,
    TResult Function(ShowFabInReminder value)? showFabInReminder,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements BaseState {
  const factory Error(final String message) = _$ErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RefreshDashBoardImplCopyWith<$Res> {
  factory _$$RefreshDashBoardImplCopyWith(_$RefreshDashBoardImpl value,
          $Res Function(_$RefreshDashBoardImpl) then) =
      __$$RefreshDashBoardImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RefreshDashBoardImplCopyWithImpl<$Res>
    extends _$BaseStateCopyWithImpl<$Res, _$RefreshDashBoardImpl>
    implements _$$RefreshDashBoardImplCopyWith<$Res> {
  __$$RefreshDashBoardImplCopyWithImpl(_$RefreshDashBoardImpl _value,
      $Res Function(_$RefreshDashBoardImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RefreshDashBoardImpl implements RefreshDashBoard {
  const _$RefreshDashBoardImpl();

  @override
  String toString() {
    return 'BaseState.refereshDashboard()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RefreshDashBoardImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Object data) loaded,
    required TResult Function(String message) error,
    required TResult Function() refereshDashboard,
    required TResult Function(bool showFab) showFabInReminder,
  }) {
    return refereshDashboard();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Object data)? loaded,
    TResult? Function(String message)? error,
    TResult? Function()? refereshDashboard,
    TResult? Function(bool showFab)? showFabInReminder,
  }) {
    return refereshDashboard?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Object data)? loaded,
    TResult Function(String message)? error,
    TResult Function()? refereshDashboard,
    TResult Function(bool showFab)? showFabInReminder,
    required TResult orElse(),
  }) {
    if (refereshDashboard != null) {
      return refereshDashboard();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Error value) error,
    required TResult Function(RefreshDashBoard value) refereshDashboard,
    required TResult Function(ShowFabInReminder value) showFabInReminder,
  }) {
    return refereshDashboard(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(Error value)? error,
    TResult? Function(RefreshDashBoard value)? refereshDashboard,
    TResult? Function(ShowFabInReminder value)? showFabInReminder,
  }) {
    return refereshDashboard?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(Error value)? error,
    TResult Function(RefreshDashBoard value)? refereshDashboard,
    TResult Function(ShowFabInReminder value)? showFabInReminder,
    required TResult orElse(),
  }) {
    if (refereshDashboard != null) {
      return refereshDashboard(this);
    }
    return orElse();
  }
}

abstract class RefreshDashBoard implements BaseState {
  const factory RefreshDashBoard() = _$RefreshDashBoardImpl;
}

/// @nodoc
abstract class _$$ShowFabInReminderImplCopyWith<$Res> {
  factory _$$ShowFabInReminderImplCopyWith(_$ShowFabInReminderImpl value,
          $Res Function(_$ShowFabInReminderImpl) then) =
      __$$ShowFabInReminderImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool showFab});
}

/// @nodoc
class __$$ShowFabInReminderImplCopyWithImpl<$Res>
    extends _$BaseStateCopyWithImpl<$Res, _$ShowFabInReminderImpl>
    implements _$$ShowFabInReminderImplCopyWith<$Res> {
  __$$ShowFabInReminderImplCopyWithImpl(_$ShowFabInReminderImpl _value,
      $Res Function(_$ShowFabInReminderImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showFab = null,
  }) {
    return _then(_$ShowFabInReminderImpl(
      null == showFab
          ? _value.showFab
          : showFab // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ShowFabInReminderImpl implements ShowFabInReminder {
  const _$ShowFabInReminderImpl(this.showFab);

  @override
  final bool showFab;

  @override
  String toString() {
    return 'BaseState.showFabInReminder(showFab: $showFab)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowFabInReminderImpl &&
            (identical(other.showFab, showFab) || other.showFab == showFab));
  }

  @override
  int get hashCode => Object.hash(runtimeType, showFab);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShowFabInReminderImplCopyWith<_$ShowFabInReminderImpl> get copyWith =>
      __$$ShowFabInReminderImplCopyWithImpl<_$ShowFabInReminderImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Object data) loaded,
    required TResult Function(String message) error,
    required TResult Function() refereshDashboard,
    required TResult Function(bool showFab) showFabInReminder,
  }) {
    return showFabInReminder(showFab);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Object data)? loaded,
    TResult? Function(String message)? error,
    TResult? Function()? refereshDashboard,
    TResult? Function(bool showFab)? showFabInReminder,
  }) {
    return showFabInReminder?.call(showFab);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Object data)? loaded,
    TResult Function(String message)? error,
    TResult Function()? refereshDashboard,
    TResult Function(bool showFab)? showFabInReminder,
    required TResult orElse(),
  }) {
    if (showFabInReminder != null) {
      return showFabInReminder(showFab);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Error value) error,
    required TResult Function(RefreshDashBoard value) refereshDashboard,
    required TResult Function(ShowFabInReminder value) showFabInReminder,
  }) {
    return showFabInReminder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(Error value)? error,
    TResult? Function(RefreshDashBoard value)? refereshDashboard,
    TResult? Function(ShowFabInReminder value)? showFabInReminder,
  }) {
    return showFabInReminder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(Error value)? error,
    TResult Function(RefreshDashBoard value)? refereshDashboard,
    TResult Function(ShowFabInReminder value)? showFabInReminder,
    required TResult orElse(),
  }) {
    if (showFabInReminder != null) {
      return showFabInReminder(this);
    }
    return orElse();
  }
}

abstract class ShowFabInReminder implements BaseState {
  const factory ShowFabInReminder(final bool showFab) = _$ShowFabInReminderImpl;

  bool get showFab;
  @JsonKey(ignore: true)
  _$$ShowFabInReminderImplCopyWith<_$ShowFabInReminderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
