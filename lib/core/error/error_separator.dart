import 'package:dio/dio.dart';
import 'package:food_delivery_app_301/core/error/default_error_factory.dart';
import 'package:food_delivery_app_301/core/error/error.dart';

class ErrorSeparator {
  final DefaultErrorFactory errorFactory;

  ErrorSeparator(this.errorFactory);

  DefaultError createError(Object exception, StackTrace stackTrace) {
    try {
      if (exception is DioError) {
        return errorFactory.createApiError(exception, stackTrace, "message");
      } else {
        return errorFactory.createBusinessError(exception, stackTrace);
      }
    } catch (e, stackTrace) {
      return errorFactory.createUnknownError(e.toString(), stackTrace);
    }
  }
}
