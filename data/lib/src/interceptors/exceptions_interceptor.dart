part of interceptors;

class ExceptionsInterceptor extends Interceptor {
  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    final String errorMessage = (err.response?.data as Map<String, dynamic>?)?['message'];

    if (err.response?.isServerError ?? false) {
      return handler.reject(
        ServerErrorException(
          errorMessage: errorMessage,
          requestOptions: err.requestOptions,
        ),
      );
    } else if (err.response?.isForbiddenError ?? false) {
      return handler.reject(
        ForbiddenException(
          errorMessage: errorMessage,
          requestOptions: err.requestOptions,
        ),
      );
    } else if (err.response?.isNotFoundError ?? false) {
      return handler.reject(
        NotFoundException(
          errorMessage: errorMessage,
          requestOptions: err.requestOptions,
        ),
      );
    } else if (err.response?.isLogicError ?? false) {
      if (err.response != null && err.response?.data != null) {
        final Function(dynamic json) fromJsonT = err.response!.data['message'];

        final ApiResponse<dynamic> response = ApiResponse<dynamic>.fromJson(
          err.response!.data!,
          fromJsonT,
        );

        final dynamic data = response.data is Map<String, dynamic> ? response.data : null;

        return handler.reject(
          LogicException(
            errorMessage: errorMessage,
            requestOptions: err.requestOptions,
            data: data,
          ),
        );
      } else {
        return handler.reject(
          SourceException(
            errorMessage: errorMessage,
            requestOptions: err.requestOptions,
          ),
        );
      }
    } else if (err.response?.isClientError ?? false) {
      return handler.reject(
        ClientErrorException(
          errorMessage: errorMessage,
          requestOptions: err.requestOptions,
        ),
      );
    } else {
      return handler.reject(
        SourceException(
          errorMessage: errorMessage,
          requestOptions: err.requestOptions,
        ),
      );
    }
  }
}
