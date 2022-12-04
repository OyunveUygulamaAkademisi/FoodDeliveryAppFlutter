import 'package:food_delivery_app_301/core/error/error.dart';

abstract class ErrorFactory {
  DefaultError createApiError(dynamic error, StackTrace stackTrace, String message);
  DefaultError createBusinessError(dynamic error, StackTrace stackTrace);
  DefaultError createUnknownError(dynamic error, StackTrace stackTrace);
}
