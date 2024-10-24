import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';
part 'failure.g.dart';

@freezed
class Failure with _$Failure {
  const factory Failure({
    required String message,
    required int statusCode,
  }) = _Failure;

    factory Failure.fromJson(Map<String, Object?> json) => _$FailureFromJson(json);
}
