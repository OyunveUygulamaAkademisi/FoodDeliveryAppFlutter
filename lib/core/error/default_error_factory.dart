import 'package:food_delivery_app_301/core/error/error.dart';
import 'package:food_delivery_app_301/core/error/error_factory.dart';

class DefaultErrorFactory extends ErrorFactory {
  @override
  DefaultError createApiError(error, StackTrace stackTrace, String message) =>
      DefaultError.apiError(error, stackTrace, message);

  @override
  DefaultError createBusinessError(error, StackTrace stackTrace) => DefaultError.businessError(error, stackTrace);

  @override
  DefaultError createUnknownError(error, StackTrace stackTrace) => DefaultError.unknownError(error, stackTrace);
}
