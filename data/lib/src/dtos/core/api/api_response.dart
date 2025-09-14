part of api_core_dtos;

@Freezed(genericArgumentFactories: true)
abstract class ApiResponse<T> with _$ApiResponse<T> {
  @JsonSerializable(fieldRename: FieldRename.none, genericArgumentFactories: true)
  const factory ApiResponse({
    required int code,
    required int? httpCode,
    required String message,
    required T data,
  }) = _ApiResponse<T>;

  const ApiResponse._();

  factory ApiResponse.fromJson(Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$ApiResponseFromJson(json, fromJsonT);
}
