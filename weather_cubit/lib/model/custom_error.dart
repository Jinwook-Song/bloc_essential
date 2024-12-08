import 'package:freezed_annotation/freezed_annotation.dart';

part 'custom_error.freezed.dart';
part 'custom_error.g.dart';

@freezed
class CustomError with _$CustomError {
  const factory CustomError({
    @Default('') message,
  }) = _CustomError;

  factory CustomError.fromJson(Map<String, dynamic> json) =>
      _$CustomErrorFromJson(json);
}
