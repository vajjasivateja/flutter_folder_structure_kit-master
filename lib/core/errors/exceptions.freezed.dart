// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exceptions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

APIException _$APIExceptionFromJson(Map<String, dynamic> json) {
  return _APIException.fromJson(json);
}

/// @nodoc
mixin _$APIException {
  String get message => throw _privateConstructorUsedError;
  int get statusCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $APIExceptionCopyWith<APIException> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $APIExceptionCopyWith<$Res> {
  factory $APIExceptionCopyWith(
          APIException value, $Res Function(APIException) then) =
      _$APIExceptionCopyWithImpl<$Res, APIException>;
  @useResult
  $Res call({String message, int statusCode});
}

/// @nodoc
class _$APIExceptionCopyWithImpl<$Res, $Val extends APIException>
    implements $APIExceptionCopyWith<$Res> {
  _$APIExceptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? statusCode = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$APIExceptionImplCopyWith<$Res>
    implements $APIExceptionCopyWith<$Res> {
  factory _$$APIExceptionImplCopyWith(
          _$APIExceptionImpl value, $Res Function(_$APIExceptionImpl) then) =
      __$$APIExceptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, int statusCode});
}

/// @nodoc
class __$$APIExceptionImplCopyWithImpl<$Res>
    extends _$APIExceptionCopyWithImpl<$Res, _$APIExceptionImpl>
    implements _$$APIExceptionImplCopyWith<$Res> {
  __$$APIExceptionImplCopyWithImpl(
      _$APIExceptionImpl _value, $Res Function(_$APIExceptionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? statusCode = null,
  }) {
    return _then(_$APIExceptionImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$APIExceptionImpl with DiagnosticableTreeMixin implements _APIException {
  const _$APIExceptionImpl({required this.message, required this.statusCode});

  factory _$APIExceptionImpl.fromJson(Map<String, dynamic> json) =>
      _$$APIExceptionImplFromJson(json);

  @override
  final String message;
  @override
  final int statusCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'APIException(message: $message, statusCode: $statusCode)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'APIException'))
      ..add(DiagnosticsProperty('message', message))
      ..add(DiagnosticsProperty('statusCode', statusCode));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$APIExceptionImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message, statusCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$APIExceptionImplCopyWith<_$APIExceptionImpl> get copyWith =>
      __$$APIExceptionImplCopyWithImpl<_$APIExceptionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$APIExceptionImplToJson(
      this,
    );
  }
}

abstract class _APIException implements APIException {
  const factory _APIException(
      {required final String message,
      required final int statusCode}) = _$APIExceptionImpl;

  factory _APIException.fromJson(Map<String, dynamic> json) =
      _$APIExceptionImpl.fromJson;

  @override
  String get message;
  @override
  int get statusCode;
  @override
  @JsonKey(ignore: true)
  _$$APIExceptionImplCopyWith<_$APIExceptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
